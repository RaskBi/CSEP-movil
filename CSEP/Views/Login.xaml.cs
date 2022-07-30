using CSEP.Models;
//using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using System.Text.Json;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Login : ContentPage
    {
        private conector url = new conector();
        private autorizacion token= new autorizacion();
        private user user = new user();

        public Login()
        {
            InitializeComponent();
        }

       
        async private void btnIngresar_Clicked(object sender, EventArgs e)
        {
            
            try
            {
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Post,
                    RequestUri = new Uri(url.baseurl + "/user/api-token-auth"),
                    Content = new StringContent("{\n\t\"username\": \n\t\t\""+ txtUsername.Text +"\",\n\t\"password\": \n\t\t\""+ txtPass.Text +"\"\n}")
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
                        token = JsonSerializer.Deserialize<autorizacion>(body);
                        //verificacion de rol
                        client = new HttpClient();
                        var request2 = new HttpRequestMessage
                        {
                            Method = HttpMethod.Get,
                            RequestUri = new Uri(url.baseurl + "/user/profile"),
                            Headers =
                    {
                        { "Authorization", "Token " + token.token },
                    },
                        };
                        using (var response2 = await client.SendAsync(request2))
                        {
                            response.EnsureSuccessStatusCode();
                            var body2 = await response2.Content.ReadAsStringAsync();
                            Console.WriteLine(body2);
                            user = JsonSerializer.Deserialize<user>(body2);

                        }
                        if (user.rol.Equals("R"))
                        {
                            await Navigation.PushAsync(new Paquetes());
                        }
                        else
                        {
                            await Navigation.PushAsync(new Busqueda());
                        }
                    }
                    else
                    {
                        await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                    }
                    
                }
               

            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }

        async private void btnRegistrarse_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new RegistroUsuario());
        }

        private void TapGestureRecognizer_Tapped(object sender, EventArgs e)
        {

        }
    }
}