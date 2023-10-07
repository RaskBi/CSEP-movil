using CSEP.Models;
using CSEP.Utility;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Text.Json;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using ZXing.Net.Mobile.Forms;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Busqueda : ContentPage
    {
        private conector url = new conector();
        private paquete paquetec = new paquete();

        public Busqueda()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        async private void btnBuscar_Clicked(object sender, EventArgs e)
        {
            try
            {
                if (string.IsNullOrWhiteSpace(txtBusqueda.Text))
                {
                    // Entry vacío, muestra un mensaje de error o toma alguna otra acción
                    DisplayAlert("Error", "Por favor, ingrese una GIA.", "OK");
                }
                else
                {
                    // Realiza la acción deseada con el valor ingresado
                    var code = txtBusqueda.Text;
                    getPaqueteCode(code);
                }

            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }

        }



        private async void btnScan_Clicked(object sender, EventArgs e)
        {
            try
            {

                var scan = new ZXingScannerPage();
                await CSEP.App.Current.MainPage.Navigation.PushModalAsync(scan);
                scan.OnScanResult += (result) =>
                {
                    Device.BeginInvokeOnMainThread(async () =>
                    {
                        await CSEP.App.Current.MainPage.Navigation.PopModalAsync();
                        if (!string.IsNullOrEmpty(result.Text))
                            txtBusqueda.Text = result.Text;
                        var code = txtBusqueda.Text;
                        Console.WriteLine(code);
                        if (string.IsNullOrWhiteSpace(txtBusqueda.Text))
                        {
                            // Entry vacío, muestra un mensaje de error o toma alguna otra acción
                            DisplayAlert("Error", "Codigo de barras invalido", "OK");
                        }
                        else
                        {
                            // Realiza la acción deseada con el valor ingresado
                            getPaqueteCode(code);
                        }

                    });
                };
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }
        public async void getPaqueteCode(string code)
        {
            try
            {
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Get,
                    RequestUri = new Uri(url.baseurl + "/paquete/codigo/get/" + code),
                };
                using (var response = await client.SendAsync(request))
                {
                    //response.EnsureSuccessStatusCode();
                    var body = await response.Content.ReadAsStringAsync();
                    HttpStatusCode statusCode = response.StatusCode;
                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine(body);
                        paquetec = JsonSerializer.Deserialize<paquete>(body);
                        switch (paquetec.paq_estado)
                        {
                            case "En espera":
                                await Navigation.PushAsync(new Detalle(code));
                                break;

                            case "Entregado":
                                await Navigation.PushAsync(new DetalleREntregado(code));
                                break;

                            case "No entregado":
                                await Navigation.PushAsync(new DetalleRNoEntregado(code));
                                break;
                        }

                    }
                    else
                    {
                        var errorResponse = JsonSerializer.Deserialize<ErrorResponse>(body);
                        await DisplayAlert("Error", errorResponse.error, "OK");
                    }
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
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