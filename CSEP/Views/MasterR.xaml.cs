using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class MasterR : ContentPage
    {
        public MasterR()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        private async void Logout_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
        }

        private async void Paquetes_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Paquetes());
        }

        private async void Entregados_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PaquetesEntregado());
        }

        private async void NoEntregados_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PaquetesNoEntregado());
        }
        private async void Reportes_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new ReportesR());
        }
        private async void Location_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Localizacion());
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