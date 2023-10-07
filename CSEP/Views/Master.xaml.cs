using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class Master : ContentPage
    {
        public Master()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }

        private async void Busqueda_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Busqueda());
        }

        private async void Logout_Clicked(object sender, EventArgs e)
        {
            string filePath = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "token.txt");
            if (File.Exists(filePath))
            {
                File.Delete(filePath);
            }
            await Navigation.PushAsync(new Login());
        }


        private async void Recibidos_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PaquetesURecibidos());
        }

        private async void Espera_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PaquetesUEnEspera());
        }
        private async void NoRecibidos_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new PaquetesUNoRecibido());
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