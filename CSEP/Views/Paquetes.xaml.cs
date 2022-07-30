using CSEP.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Net.Http;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Paquetes : ContentPage
    {
        private conector url = new conector();

        private ObservableCollection<paquete> _paquete;
        public Paquetes()
        {
            InitializeComponent();
            getPaquete();
        }

        public async void getPaquete()
        {
            try
            {
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Get,
                    RequestUri = new Uri(url.baseurl + "/paquete/get/paquete"),
                };
                using (var response = await client.SendAsync(request))
                {
                    response.EnsureSuccessStatusCode();
                    var body = await response.Content.ReadAsStringAsync();
                    Console.WriteLine(body);
                    //ItemSource
                    List<paquete> post = JsonConvert.DeserializeObject<List<paquete>>(body);
                    _paquete = new ObservableCollection<paquete>(post);

                    listPaquetes.ItemsSource = _paquete;
                    //item selected
                    /*var select = ((ListView)sender).SelectedItem as paquete;
                    if (select == null)
                        return;
                    var nombre = select.paq_numero;
                    var desc = select.paq_direccion;*/
                }
            }

            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
            }
        }
    }
}