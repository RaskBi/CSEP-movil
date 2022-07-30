using System;
using System.Collections.Generic;
using System.Text;

namespace CSEP.Models
{
    internal class paquete
    {
        public int Id { get; set; } 
        public int repartidor_id { get; set; }
        public string repartidor { get; set; }
        public int user_id { get; set; }
        public string user { get; set; }
        public string paq_direccion { get; set; }
        public string paq_estado { get; set; }
        public int paq_numero { get; set; }

    }
}
