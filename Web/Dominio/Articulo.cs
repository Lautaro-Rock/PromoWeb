﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using static System.Net.Mime.MediaTypeNames;

namespace Dominio
{
    public class Articulo
    {
        public int ID { get; set; }
        public string Nombre { get; set; }
        public string Descripcion { get; set; }
        public decimal Precio { get; set; }
        public string Codigo { get; set; }
        public string ImagenUrl { get; set; }
        public Marca Marca { get; set; }

        public Categoria Categoria { get; set; }

        public Imagen UrlImagen { get; set; }
    }
}
