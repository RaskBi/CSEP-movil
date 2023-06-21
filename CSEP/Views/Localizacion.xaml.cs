using CSEP.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Localizacion : ContentPage
    {
        private conector url = new conector();
        private autorizacion token = new autorizacion();
        public Localizacion()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        private async void btnActualizar_Clicked(object sender, EventArgs e)
        {
            try
            {
                //Token
                var fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "token.txt");
                string textRead = File.ReadAllText(fileName);
                Console.WriteLine(textRead);
                //update link
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Put,
                    RequestUri = new Uri(url.baseurl + "/user/updateLocation"),
                    Headers =
                        {
                            { "Authorization", "Token " + textRead },
                        },
                    Content = new StringContent("{\n\t\"location\": \n\t\t\"" + txtLink.Text.ToString() + "\"\n\t\n}")
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
                    HttpStatusCode statusCode = response.StatusCode;
                    
                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine(body);
                    }
                    else
                    {
                        await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                        Console.WriteLine(body);
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