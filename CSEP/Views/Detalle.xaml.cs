using CSEP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing;
using ZXing.Common;
using ZXing.Net.Mobile.Forms;
using System.Drawing;
using System.IO;
using ZXing.Mobile;
using Xamarin.Forms.PlatformConfiguration;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Detalle : ContentPage
    {
        private conector url = new conector();
        private paquete paquetec = new paquete();
        private string _code;
        ZXingBarcodeImageView qr;
        public Detalle(string code)
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
                lblCódigo.Text = paquetec.paq_numero.ToString();
                lblTeléfono.Text = paquetec.paq_telefono;
                lblFechaC.Text = paquetec.paq_fechaCreacion;
                lblHoraC.Text = paquetec.paq_horaCreacion;
                //Generar qr

                try
                {
                    qr = new ZXingBarcodeImageView
                    {
                        HorizontalOptions = LayoutOptions.FillAndExpand,
                        VerticalOptions = LayoutOptions.FillAndExpand,
                        WidthRequest = 300,
                        HeightRequest = 300
                    };
                    qr.BarcodeFormat = ZXing.BarcodeFormat.QR_CODE;
                    qr.BarcodeOptions.Width = 500;
                    qr.BarcodeOptions.Height = 500;
                    qr.BarcodeOptions.Margin = 1;
                    qr.BarcodeValue = paquetec.paq_confirmacion.ToString();
                    stkQR.Children.Add(qr);
                }
                catch (Exception ex)
                {
                    await DisplayAlert("Alerta", ex.Message, "OK");
                }
            }
        }
        private async void Button_Clicked(object sender, EventArgs e)
        {
            string repartidorLocationUrl = paquetec.repartidor_location;

            if (!string.IsNullOrWhiteSpace(repartidorLocationUrl))
            {
                try
                {
                    // Abre la URL en el navegador del dispositivo
                    Device.OpenUri(new Uri(repartidorLocationUrl));
                }
                catch (Exception ex)
                {
                    // Maneja cualquier excepción que pueda ocurrir al abrir la URL.
                    Console.WriteLine("Error al abrir la URL: " + ex.Message);
                }
            }
            else
            {
                // Muestra un mensaje si la URL está en blanco o nula
                await DisplayAlert("Ubicación no disponible", "La ubicación del repartidor no está disponible en este momento.", "OK");
            }
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