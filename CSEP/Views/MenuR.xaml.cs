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
    public partial class MenuR : MasterDetailPage
    {
        public MenuR()
        {
            InitializeComponent();
            this.Master = new MasterR();
            this.Detail = new NavigationPage(new Paquetes());
            App.MasterDet = this;
        }
    }
}