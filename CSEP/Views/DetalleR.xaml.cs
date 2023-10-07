using CSEP.Models;
using Plugin.Media;
using Plugin.Media.Abstractions;
using System;
using System.Collections.Generic;
using System.Globalization;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;
using Xamarin.Essentials;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class DetalleR : ContentPage
    {
        private conector url = new conector();
        private paquete paquetec = new paquete();
        private string _code;
        private string qrConfirm;
        private string pkr;
        private string base64ImageRepresentation;
        private string estadoA;
        public DetalleR(string code)
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
            _code = code;
            getPaqueteCode();
        }
        public async void getPaqueteCode()
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Get,
                RequestUri = new Uri(url.baseurl + "/paquete/codigo/get/" + _code),
            };
            using (var response = await client.SendAsync(request))
            {
                response.EnsureSuccessStatusCode();
                var body = await response.Content.ReadAsStringAsync();
                Console.WriteLine(body);
                paquetec = JsonSerializer.Deserialize<paquete>(body);
                lblRepartidor.Text = paquetec.full_name_repartidor;
                lblCliente.Text = paquetec.full_name_user;
                lblDirección.Text = paquetec.paq_direccion;
                lblEstado.Text = paquetec.paq_estado;
                lblCódigo.Text = paquetec.paq_numero;
                lblTeléfono.Text = paquetec.paq_telefono;
                lblFechaE.Text = paquetec.paq_fechaCreacion;
                lblHoraE.Text = paquetec.paq_horaCreacion;
            }
        }

        private async void Button_Clicked(object sender, EventArgs e)
        {
            CultureInfo culture = new CultureInfo("en-US");
            if (!double.TryParse(paquetec.paq_latitud.ToString(), NumberStyles.Float, culture, out double latitud))
                return;
            if (!double.TryParse(paquetec.paq_longitud.ToString(), NumberStyles.Float, culture, out double longitud))
                return;
            try
            {
                await Map.OpenAsync(latitud, longitud, new MapLaunchOptions
                {
                    Name = paquetec.paq_direccion,
                    NavigationMode = NavigationMode.None
                });

            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }


        private async void TakePhoto_Clicked(object sender, EventArgs e)
        {
            try
            {
                var result = await MediaPicker.CapturePhotoAsync();
                if (result != null)
                {
                    var stream = await result.OpenReadAsync();
                    resultImage.Source = ImageSource.FromStream(() => stream);
                    //base54
                    byte[] imageArray = System.IO.File.ReadAllBytes(result.FullPath);
                    base64ImageRepresentation = Convert.ToBase64String(imageArray);
                    Console.WriteLine(base64ImageRepresentation);
                }
                Console.WriteLine("error");
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
            /*var result = await MediaPicker.PickPhotoAsync(new MediaPickerOptions
            {
                Title = "Selecciona una foto"

            });
            if (result != null)
            {
                var stream = await result.OpenReadAsync();
                resultImage.Source = ImageSource.FromStream(() => stream);
                //base54
                byte[] imageArray = System.IO.File.ReadAllBytes(result.FullPath);
                base64ImageRepresentation = Convert.ToBase64String(imageArray);
                Console.WriteLine(Convert.ToBase64String(imageArray));
            }*/
        }


        private async void QrConfirmacion_Clicked(object sender, EventArgs e)
        {
            var scan = new ZXingScannerPage();
            await CSEP.App.Current.MainPage.Navigation.PushModalAsync(scan);
            scan.OnScanResult += (result) =>
            {
                Device.BeginInvokeOnMainThread(async () =>
                {
                    await CSEP.App.Current.MainPage.Navigation.PopModalAsync();
                    if (!string.IsNullOrEmpty(result.Text))
                        qrConfirm = result.Text;
                    Console.WriteLine(qrConfirm);
                });
            };
        }

        private async void ActualizarP_Clicked(object sender, EventArgs e)
        {
            if (pkr == null)
            {
                await DisplayAlert("Aler", "No seleccionó Estado", "OK");
            }
            if (pkr == "0")
            {
                try
                {
                    if (qrConfirm == paquetec.paq_confirmacion.ToString())
                    {
                        estadoA = "Entregado";
                        actualizarP();
                        await Navigation.PushAsync(new MenuR());
                    }
                    else
                    {
                        await DisplayAlert("Alerta", "Verifica el codigo QR del cliente", "OK");
                    }


                }
                catch (Exception ex)
                {
                    await DisplayAlert("Alerta", ex.Message, "OK");
                }
            }
            if (pkr == "1")
            {
                try
                {
                    estadoA = "No entregado";
                    actualizarP();
                    await Navigation.PushAsync(new MenuR());
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Alerta", ex.Message, "OK");
                }
            }
        }

        public async void actualizarP()
        {
            var client = new HttpClient();
            var request = new HttpRequestMessage
            {
                Method = HttpMethod.Put,
                RequestUri = new Uri(url.baseurl + "/paquete/put/estado/" + paquetec.id),
                Content = new StringContent("{\n\t\"paq_imagen\": \"" + base64ImageRepresentation + "\",\n\t\"paq_estado\": \"" + estadoA + "\"\n}")
                {
                    Headers =
                    {
                        ContentType = new MediaTypeHeaderValue("application/json")
                    }
                }
            };
            using (var response = await client.SendAsync(request))
            {
                //response.EnsureSuccessStatusCode();
                var body = await response.Content.ReadAsStringAsync();
                Console.WriteLine(body);
                HttpStatusCode statusCode = response.StatusCode;
                if (response.IsSuccessStatusCode)
                {
                    await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                }
                else
                {
                    await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                }
            }
        }

        private void pkEstado_SelectedIndexChanged(object sender, EventArgs e)
        {
            var picker = (Picker)sender;
            int selectedIndex = picker.SelectedIndex;
            pkr = selectedIndex.ToString();

        }
        private async void AnimateBackground()
        {
            Action<Double> forward = input => bdGradient.AnchorY = input;
            Action<Double> backward = input => bdGradient.AnchorY = input;

            while (true)
            {
                bdGradient.Animate(name: "forward", callback: forward, start: 0, end: 1, length: 5000, easing: Easing.SinIn);
                await Task.Delay(5000);

                bdGradient.Animate(name: "backward", callback: forward, start: 1, end: 0, length: 5000, easing: Easing.SinIn);
                await Task.Delay(5000);
            }
        }
    }
}