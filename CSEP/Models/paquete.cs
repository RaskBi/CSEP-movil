using System;
using System.Collections.Generic;
using System.Text;

namespace CSEP.Models
{
    internal class paquete
    {
        public int id { get; set; } 
        public int repartidor_id { get; set; }
        public string repartidor { get; set; }
        public int user_id { get; set; }
        public string user { get; set; }
        public string paq_direccion { get; set; }
        public string paq_estado { get; set; }
        public string paq_numero { get; set; }
        public string paq_latitud { get; set; }
        public string paq_longitud { get; set; }
        public string paq_telefono { get; set; }
        public string paq_confirmacion { get; set; }
        public string paq_fechaCreacion { get; set; }
        public string paq_horaCreacion { get; set; }
        public string paq_fechaConfirmacion { get; set; }
        public string paq_horaConfirmacion { get; set; }
        public string repartidor_location { get; set; }
        public string paq_imagen { get; set; }
        public float paq_peso { get; set; }
        public string paq_tip { get; set; }
        public float paq_precio { get; set; }
        public string full_name_user { get; set; }
        public string full_name_repartidor { get; set; }
        public string cedula_ruc { get; set; }


    }
}
