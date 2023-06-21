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
    public partial class RecuperarPassword : ContentPage
    {
        public RecuperarPassword()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        private async void btnRecuperar_Clicked(object sender, EventArgs e)
        {
            await DisplayAlert("Alerta", "¡Te enviaremos un correo!", "OK");
        }

        private async void btnAtras_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
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