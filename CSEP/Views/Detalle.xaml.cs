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

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Detalle : ContentPage
    {
        private conector url = new conector();
        private paquete paquetec = new paquete();
        private string _code;
        public Detalle(string code)
        {
            InitializeComponent();
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
                lblRepartidor.Text = paquetec.repartidor;
                lblCliente.Text = paquetec.user;
                lblDirección.Text= paquetec.paq_direccion;
                lblEstado.Text= paquetec.paq_estado;
                lblCódigo.Text = paquetec.paq_numero.ToString();
                lblTeléfono.Text= paquetec.paq_telefono;
            }

        }


    }
}