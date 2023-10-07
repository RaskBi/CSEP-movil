using CSEP.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using Newtonsoft.Json.Linq;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class RegistroUsuario : ContentPage
    {
        private conector url = new conector();
        bool check= false;
        public RegistroUsuario()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        private async void btnAtras_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
        }


        private async void btnRegistrar_Clicked(object sender, EventArgs e)
        {
            try
            {
                //Registrar Usuario
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Post,
                    RequestUri = new Uri(url.baseurl + "/user/post/user"),
                    Content = new StringContent("{\n\t\"first_name\": \n\t\t\"" + txtNombre.Text + "\",\n\t\"last_name\": \n\t\t\"" + txtApellido.Text + "\",\n\t\"username\": \n\t\t\"" + txtUserName.Text + "\",\n\t\"email\": \n\t\t\"" + txtEmail.Text + "\",\n\t\"password\": \n\t\t\"" + txtcontrasenia.Text + "\",\n\t\"cedula_ruc\": \"" + txtCedula.Text + "\"\n}")
                    {
                        Headers =
                        {
                            ContentType = new MediaTypeHeaderValue("application/json")
                        }
                    }
                };
                Console.WriteLine(Content);
                using (var response = await client.SendAsync(request))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine(response);
                        Console.WriteLine(body);
                        await DisplayAlert("Registrado", "Registrado correctamente", "OK");
                    }
                    else
                    {
                        // Intenta analizar el contenido JSON
                        try
                        {
                            var json = JObject.Parse(body);
                            var errorMessage = "Errores:\n";

                            // Recorre las propiedades JSON y agrega los mensajes de error al mensaje de error
                            foreach (var property in json.Properties())
                            {
                                errorMessage += $"{property.Name}: {property.Value}\n";
                            }

                            await DisplayAlert("Error", errorMessage, "OK");
                        }
                        catch (Exception)
                        {
                            // Si no se pudo analizar el JSON, muestra el cuerpo de la respuesta sin procesar
                            await DisplayAlert("Error", body, "OK");
                        }
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