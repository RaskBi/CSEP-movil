//using Android.Icu.Text;
using CSEP.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Net;
using System.Net.Http;
using System.Net.Http.Headers;
using System.Text;
using System.Threading.Tasks;
using Plugin.XamarinFormsSaveOpenPDFPackage;

using Xamarin.Forms;
using Xamarin.Forms.Xaml;
using System.Text.Json;

namespace CSEP.Views
{
    [XamlCompilation(XamlCompilationOptions.Compile)]
    public partial class ReportesR : ContentPage
    {
        private conector url = new conector();
        private autorizacion token = new autorizacion();
        private reportePDF reporte_pdf = new reportePDF();
        public ReportesR()
        {
            InitializeComponent();
            Task.Run(AnimateBackground);
        }
        private string digios(int num)
        {
            string cambio = "";
            if (num > 9)
            {
                cambio = num.ToString();
            }
            else
            {
                cambio = "0" + num.ToString();
            }
            return cambio;
        }
        private async void btnReporte_Clicked(object sender, EventArgs e)
        {
            string año = dtFechaI.Date.Year.ToString();
            string mes = digios(dtFechaI.Date.Month);
            string dia = digios(dtFechaI.Date.Day);
            string fechastr = año + "-" + mes + "-" + dia;
            string año1 = dtFechaF.Date.Year.ToString();
            string mes1 = digios(dtFechaF.Date.Month);
            string dia1 = digios(dtFechaF.Date.Day);
            string fechastr1 = año1 + "-" + mes1 + "-" + dia1;
            try
            {
                //Token
                var fileName = Path.Combine(Environment.GetFolderPath(Environment.SpecialFolder.LocalApplicationData), "token.txt");
                string textRead = File.ReadAllText(fileName);
                Console.WriteLine(textRead);
                //
                var client = new HttpClient();
                var request = new HttpRequestMessage
                {
                    Method = HttpMethod.Post,
                    RequestUri = new Uri(url.baseurl + "/report/reporterangofechaconfirmacion"),
                    Headers =
                        {
                            { "Authorization", "Token " + textRead },
                        },
                    Content = new StringContent("{\n\t\"fecha_inicio\": \"" + fechastr + "\",\n\t\"fecha_fin\": \"" + fechastr1 + "\"\n}")
                    {
                        Headers =
                            {
                                ContentType = new MediaTypeHeaderValue("application/json")
                            }
                    }
                };
                using (var response = await client.SendAsync(request))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    HttpStatusCode statusCode = response.StatusCode;

                    if (response.IsSuccessStatusCode)
                    {
                        var reporte_pdf = JsonSerializer.Deserialize<reportePDF>(body);
                        string pdfBase64 = reporte_pdf.pdf_base64;
                        var pdfBytes = Convert.FromBase64String(pdfBase64);
                        var memoryStream = new MemoryStream(pdfBytes);

                        await CrossXamarinFormsSaveOpenPDFPackage.Current.SaveAndView("reporte.pdf", "application/pdf", memoryStream, PDFOpenContext.InApp);
                    }
                    else
                    {
                        await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                        Console.WriteLine(body);
                    }
                }

                /* usando urlFile
                using (var response = await client.SendAsync(request))
                {
                    var body = await response.Content.ReadAsStringAsync();
                    HttpStatusCode statusCode = response.StatusCode;

                    if (response.IsSuccessStatusCode)
                    {
                        var reporte_pdf = JsonSerializer.Deserialize<reportePDF>(body);
                        string urlFile = reporte_pdf.urlFile;
                        var httpClient = new HttpClient();
                        var fileResponse = await httpClient.GetAsync(urlFile);

                        if (fileResponse.IsSuccessStatusCode)
                        {
                            var memoryStream = new MemoryStream();
                            await fileResponse.Content.CopyToAsync(memoryStream);
                            memoryStream.Position = 0;

                            await CrossXamarinFormsSaveOpenPDFPackage.Current.SaveAndView("reporte.pdf", "application/pdf", memoryStream, PDFOpenContext.InApp);
                        }
                    }
                    else
                    {
                        await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                        Console.WriteLine(body);
                    }
                }
                */

                /* codigo antiguo
                using (var response = await client.SendAsync(request))
                {
                    //response.EnsureSuccessStatusCode();
                    var body = await response.Content.ReadAsStringAsync();
                    HttpStatusCode statusCode = response.StatusCode;

                    if (response.IsSuccessStatusCode)
                    {
                        Console.WriteLine(body);


                        using (var memoryStream = new MemoryStream())
                        {
                            await response.Content.CopyToAsync(memoryStream);
                            await CrossXamarinFormsSaveOpenPDFPackage.Current.SaveAndView("reporte.pdf", "application/pdf", memoryStream, PDFOpenContext.InApp);
                        }
                    }
                    else
                    {
                        await DisplayAlert(response.StatusCode.ToString(), body, "OK");
                        Console.WriteLine(body);
                    }

                }
                */
            }
            catch (Exception ex)
            {
                await DisplayAlert("Alerta", ex.Message, "OK");
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