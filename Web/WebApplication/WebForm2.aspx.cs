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
            List<Articulo> listaArticulos = negocio.listarr();

            repArticulos.DataSource = listaArticulos;
            repArticulos.DataBind();

        }
        

        protected void btnElegirArticulo_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["voucher"] != null)
            {
                string voucher = Request.QueryString["voucher"].ToString();
                int idArticulo = Convert.ToInt32(((Button)sender).CommandArgument);
                Response.Redirect("register.aspx?ID=" +idArticulo +"&voucher=" +voucher, false);
            } else
            {
                Response.Redirect("Default.aspx", false);
                return; 
            }
        }
    }
}