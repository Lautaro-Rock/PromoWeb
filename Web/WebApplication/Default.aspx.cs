using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            NegAccesData acceso = new NegAccesData();
            try
            {
                acceso.PrepararConsulta("SELECT * FROM Vouchers WHERE CodigoVoucher=@codigo");
                acceso.SetearParametro("@codigo", voucher);
                acceso.EjecutarLectura();

                if (acceso.Lectura.Read())
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Voucher Correcto');", true);
                }
                else
                {
                    Label1.Visible = true; 
                }
            }
            catch (Exception ex)
            {

                throw ex;
            }
            finally
            {
                acceso.CerrarConexion();
            }

        }
    }
}