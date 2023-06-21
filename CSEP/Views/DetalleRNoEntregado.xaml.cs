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
    public partial class DetalleRNoEntregado : ContentPage
    {
        private conector url = new conector();
        private paquete paquetec = new paquete();
        private string _code;
        public DetalleRNoEntregado(string code)
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
                lblDirección.Text = paquetec.paq_direccion;
                lblEstado.Text = paquetec.paq_estado;
                lblCódigo.Text = paquetec.paq_numero.ToString();
                lblTeléfono.Text = paquetec.paq_telefono;
                lblFechaC.Text = paquetec.paq_fechaCreacion;
                lblHoraC.Text = paquetec.paq_horaCreacion;
                lblFechaE.Text = paquetec.paq_fechaConfirmacion;
                lblHoraE.Text = paquetec.paq_horaConfirmacion;
                ImagenConfirmacion.Source = paquetec.paq_imagen;
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