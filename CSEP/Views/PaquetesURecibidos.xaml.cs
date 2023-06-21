using CSEP.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.IO;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class PaquetesURecibidos : ContentPage
    {
        private conector url = new conector();
        private ObservableCollection<paquete> _paquete;
        public PaquetesURecibidos()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
            getPaquete();
        }
        public async void getPaquete()
        {
            try
            {
                //Token
                var fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "token.txt");
                string textRead = File.ReadAllText(fileName);
                Console.WriteLine(textRead);
                //Lista paquetes recibidos
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Get,
                    RequestUri = new Uri(url.baseurl + "/paquete/get/listaentregadousuario"),
                    Headers =
                    {
                        { "Authorization", "Token " + textRead },
                    },
                };
                using (var response = await client.SendAsync(request))
                {
                    response.EnsureSuccessStatusCode();
                    var body = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(body);
                    List<paquete> post = JsonConvert.DeserializeObject<List<paquete>>(body);
                    _paquete = new ObservableCollection<paquete>(post);
                    listPaquetes.ItemsSource = _paquete;
                }
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }

        private async void listPaquetes_ItemTapped(object sender, ItemTappedEventArgs e)
        {
            var select = ((ListView)sender).SelectedItem as paquete;
            if (select == null)
                return;
            var code = select.paq_numero;
            await Navigation.PushAsync(new DetalleREntregado(code.ToString()));
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