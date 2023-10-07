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
    public partial class Busqueda : ContentPage
    {
        public Busqueda()
        {
            InitializeComponent();
        }

        async private void btnBuscar_Clicked(object sender, EventArgs e)
        {
            var code = txtBusqueda.Text;
            await Navigation.PushAsync(new Detalle(code));
        }
    }
}