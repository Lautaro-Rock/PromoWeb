using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Negocio;

namespace WebApplication
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void buttonBoucher_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["voucher"] != null && Request.QueryString["ID"] != null) 
            { 
                string nombre = nombreBox.Text.Trim();
                string apellido = apellidoBox.Text.Trim();
                int documento = int.Parse(dniBox.Text);
                string email= emailBox.Text.Trim();
                string direccion = direBox.Text.Trim();
                string ciudad = ciudadBox.Text.Trim();
                int cpp = int.Parse(cpBox.Text);
                string voucher = Request.QueryString["voucher"].ToString();
                int idArticulo = Convert.ToInt32(Request.QueryString["ID"].ToString());
                DateTime fechaActual = DateTime.Today;
                AccesoDatos accesso = new AccesoDatos();
                try
                {
                        accesso.setearConsulta("BEGIN TRANSACTION DECLARE @IdCliente int;" +
                        "INSERT INTO Clientes(Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP)" +
                        "VALUES(@Documento,@Nombre,@Apellido,@Email,@Direccion,@Ciudad,@CP);" +
                        "SELECT @IdCliente = scope_identity();" +
                        "UPDATE Vouchers SET IdArticulo = @IdArticulo, IdCliente = @IdCliente, FechaCanje = @Fecha WHERE CodigoVoucher = @Voucher;" +
                        "COMMIT;");
                        accesso.setearParametro("@Documento", documento);
                        accesso.setearParametro("@Nombre", nombre);
                        accesso.setearParametro("@Apellido", apellido);
                        accesso.setearParametro("@Email", email);
                        accesso.setearParametro("@Direccion", direccion);
                        accesso.setearParametro("@Ciudad", ciudad);
                        accesso.setearParametro("@CP", cpp);
                        accesso.setearParametro("@IdArticulo", idArticulo);
                        accesso.setearParametro("@Voucher", voucher);
                        accesso.setearParametro("@Fecha", fechaActual);
                        accesso.ejecutarAccion();
                    Response.Redirect("VentanaRegistroExitoso.aspx");


                }
                catch (Exception)
                {

                    throw;
                }
                finally
                {
                    accesso.cerrarConexion();
                }
            
            } else
            {
                Response.Redirect("Default.aspx", false);
            }

        }

        protected void dniBox_TextChanged(object sender, EventArgs e)
        {
            int documento = int.Parse(dniBox.Text);

            AccesoDatos acceso = new AccesoDatos();
            try
            {
                // Consulta para verificar si el documento ya existe
                acceso.setearConsulta("SELECT * FROM Clientes WHERE Documento = @Documento");
                acceso.setearParametro("@Documento", documento);
                acceso.ejecutarLectura();

                if (acceso.ConexionDataReader.Read())
                {
                    {
                        ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El documento ya está registrado, cargando datos.');", true);
                        dniBox.Text = acceso.ConexionDataReader["Documento"] != DBNull.Value ? acceso.ConexionDataReader["Documento"].ToString() : "";
                        nombreBox.Text = acceso.ConexionDataReader["Nombre"] != DBNull.Value ? acceso.ConexionDataReader["Nombre"].ToString() : "";
                        apellidoBox.Text = acceso.ConexionDataReader["Apellido"] != DBNull.Value ? acceso.ConexionDataReader["Apellido"].ToString() : "";
                        emailBox.Text = acceso.ConexionDataReader["Email"] != DBNull.Value ? acceso.ConexionDataReader["Email"].ToString() : "";
                        direBox.Text = acceso.ConexionDataReader["Direccion"] != DBNull.Value ? acceso.ConexionDataReader["Direccion"].ToString() : "";
                        ciudadBox.Text = acceso.ConexionDataReader["Ciudad"] != DBNull.Value ? acceso.ConexionDataReader["Ciudad"].ToString() : "";
                        cpBox.Text = acceso.ConexionDataReader["CP"] != DBNull.Value ? acceso.ConexionDataReader["CP"].ToString() : "";
                    }
                }
            }
            catch (Exception ex)
            {
                // Manejo de errores
                ClientScript.RegisterStartupScript(this.GetType(), "alert", $"alert('Error: {ex.Message}');", true);
            }
            finally
            {
                acceso.cerrarConexion();
            }

        }
    }
}