using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Dominio;
using Microsoft.AspNet.FriendlyUrls;
using Negocio;

namespace WebApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarArticulos();
            }
        }

        private void CargarArticulos()
        {
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> listaArticulos = negocio.listar();

            // Agrupar artículos por ID y mostrar solo uno por grupo
            var articulosAgrupados = listaArticulos.GroupBy(a => a.ID).Select(g => g.First()).ToList();

            // Enlazar los artículos agrupados al Repeater
            repArticulos.DataSource = articulosAgrupados;
            repArticulos.DataBind();
        }
        protected void btnCambiarImagen_Click(object sender, EventArgs e)
        {
            // Obtener el botón que disparó el evento
            Button btn = (Button)sender;

            // Obtener el ID del artículo desde CommandArgument
            int idArticulo = Convert.ToInt32(btn.CommandArgument);

            // Cargar la lista completa de artículos desde la base de datos
            ArticuloNegocio negocio = new ArticuloNegocio();
            List<Articulo> listaArticulos = negocio.listar();

            // Filtrar los artículos con el mismo ID
            var articulosConMismoID = listaArticulos.Where(a => a.ID == idArticulo).ToList();

            if (articulosConMismoID.Count > 0)
            {
                // Obtener el índice actual desde el atributo del botón (si existe)
                int currentIndex = btn.Attributes["data-index"] != null ? Convert.ToInt32(btn.Attributes["data-index"]) : 0;

                // Calcular el índice del siguiente artículo
                int nextIndex = (currentIndex + 1) % articulosConMismoID.Count;

                // Obtener el siguiente artículo
                Articulo siguienteArticulo = articulosConMismoID[nextIndex];

                // Actualizar el RepeaterItem completo
                RepeaterItem item = (RepeaterItem)btn.NamingContainer;

                // Reemplazar el DataItem del RepeaterItem con el siguiente artículo
                item.DataItem = siguienteArticulo;

                // Volver a enlazar los datos del RepeaterItem
                item.DataBind();

                // Actualizar el índice actual en el atributo del botón
                btn.Attributes["data-index"] = nextIndex.ToString();
            }
        }

        protected void btnElegirArticulo_Click(object sender, EventArgs e)
        {
            int idArticulo = Convert.ToInt32(((Button)sender).CommandArgument);
            Response.Redirect("register.aspx?ID=" +idArticulo, false);
        }
    }
}