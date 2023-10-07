using System;
using Xamarin.Forms;
using Xamarin.Forms.Xaml;

namespace CSEP
{
    public partial class App : Application
    {
        public static MasterDetailPage MasterDet { get; set; }
        public App()
        {
            InitializeComponent();
            Device.SetFlags(new[] { "Experimental" });
            MainPage = new NavigationPage(new Views.Login());
            //MainPage = new NavigationPage(new Views.Menu());
            //MainPage = new NavigationPage(new Views.MenuR());
        }

        protected override void OnStart()
        {
        }

        protected override void OnSleep()
        {
        }

        protected override void OnResume()
        {
        }
    }
}
