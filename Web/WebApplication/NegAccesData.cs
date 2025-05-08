using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace WebApplication
{
    public class NegAccesData
    {
        private SqlConnection conexion;
        private SqlCommand comando;
        private SqlDataReader lectura;

    public SqlDataReader Lectura
        {
            get { return lectura; }
        }

    public NegAccesData()
        {
            conexion= new SqlConnection("server=.\\SQLEXPRESS; database=PROMOS_DB; integrated security=true");
            comando = new SqlCommand();
        }

    public void EjecutarLectura(){
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                lectura = comando.ExecuteReader();
            }
            catch (Exception )
            {

                throw ;
            }
        }

        public void SetearParametro(string nombre, object valor)
        {
            comando.Parameters.AddWithValue(nombre, valor);
        }

        public void EjecutarAccion()
        {
            comando.Connection = conexion;
            try
            {
                conexion.Open();
                comando.ExecuteNonQuery();
            }
            catch (Exception)
            {
                throw ;
            }
        }

        public void PrepararConsulta(string consulta)
        {
            comando.CommandType = System.Data.CommandType.Text;
            comando.CommandText = consulta;
        }

        public void CerrarConexion()
        {
            if (lectura != null)
            {
                lectura.Close();
            }
             conexion.Close();
        }

    }
}