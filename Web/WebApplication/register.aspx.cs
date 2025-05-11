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
            string nombre = nombreBox.Text.Trim();
            string apellido = apellidoBox.Text.Trim();
            int documento = int.Parse(dniBox.Text);
            string email= emailBox.Text.Trim();
            string direccion = direBox.Text.Trim();
            string ciudad = ciudadBox.Text.Trim();
            int cpp = int.Parse(cpBox.Text);
            AccesoDatos accesso = new AccesoDatos();
            try
            {
                accesso.setearConsulta("SELECT * FROM Clientes WHERE Documento=@Documento");
                accesso.setearParametro("@Documento", documento);
                accesso.ejecutarLectura();
                if (accesso.ConexionDataReader.Read())
                {
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('El usuario ya existe');", true);
                    return;
                }
                else
                {
                    accesso.setearConsulta("INSERT INTO Clientes(Documento,Nombre,Apellido,Email,Direccion,Ciudad,CP)" +
                    "VALUES(@Documento,@Nombre,@Apellido,@Email,@Direccion,@Ciudad,@CP);");
                    accesso.setearParametro("@Documento", documento);
                    accesso.setearParametro("@Nombre", nombre);
                    accesso.setearParametro("@Apellido", apellido);
                    accesso.setearParametro("@Email", email);
                    accesso.setearParametro("@Direccion", direccion);
                    accesso.setearParametro("@Ciudad", ciudad);
                    accesso.setearParametro("@CP", cpp);
                    accesso.ejecutarAccion();
                    ClientScript.RegisterStartupScript(this.GetType(), "alert", "alert('Usuario creado correctamente');", true);
                }
               
            }
            catch (Exception)
            {

                throw;
            }
            finally
            {
                accesso.cerrarConexion();
            }
        }
    }
}