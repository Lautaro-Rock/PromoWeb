﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio; 

namespace WebApplication
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button_Click(object sender, EventArgs e)
        {
            string voucher = TextBox1.Text.Trim();
            AccesoDatos acceso = new AccesoDatos();
            try
            {
                acceso.setearConsulta("SELECT * FROM Vouchers Where CodigoVoucher = @codigo AND FechaCanje IS NULL");
                acceso.setearParametro("@codigo", voucher);
                acceso.ejecutarLectura();

                if (acceso.ConexionDataReader.Read())
                {
                    Response.Redirect("WebForm2.aspx?voucher="+voucher, false); 
    
                }
                else
                {
                    Label1.Visible = true; 
                }
            }
            catch (Exception ex)
            {

                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
            }
            finally
            {
                acceso.cerrarConexion();
            }

        }
    }
}