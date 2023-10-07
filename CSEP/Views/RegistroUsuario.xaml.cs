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
    public partial class RegistroUsuario : ContentPage
    {
        public RegistroUsuario()
        {
            InitializeComponent();
        }

        async private void btnAtras_Clicked(object sender, EventArgs e)
        {
            await Navigation.PushAsync(new Login());
        }

        async private void CheckBox_CheckedChanged(object sender, CheckedChangedEventArgs e)
        {
            if(e.Value == true)
            {
                await DisplayAlert("Alerta", "¿Seguro que quieres registrarte como Repartidor y no como Cliente?", "OK");
            }
            
        }
    }
}