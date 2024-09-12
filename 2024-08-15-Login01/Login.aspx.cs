using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2024_08_15_Login01
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            string usuario = Login1.UserName.ToString();
            string senha = Login1.Password.ToString(); // Verificar se você utiliza hash aqui.

            // String de conexão ao banco de dados
            string conexao = System.Web.Configuration.WebConfigurationManager.ConnectionStrings["UsuariosConnectionString"].ConnectionString;

            // Query SQL corrigida com parâmetros
            string SQL = "SELECT USUARIOS, SENHA FROM USUARIOS WHERE USUARIOS = @usuario AND SENHA = @senha";

            SqlDataReader dr = null;
            SqlConnection conn = null;

            try
            {
                conn = new SqlConnection(conexao);

                if (conn.State == ConnectionState.Closed)
                {
                    conn.Open();
                }

                SqlCommand cmd = new SqlCommand(SQL, conn);
                // Adicionando os parâmetros para evitar SQL Injection
                cmd.Parameters.AddWithValue("@usuario", usuario);
                cmd.Parameters.AddWithValue("@senha", senha);

                dr = cmd.ExecuteReader();

                if (dr.HasRows)
                {
                    if (dr.Read())
                    {
                        e.Authenticated = true;
                        FormsAuthentication.RedirectFromLoginPage(Login1.UserName, false);
                    }
                }
                else
                {
                    e.Authenticated = false; // Login sem sucesso
                    Login1.FailureText = "Usuário ou senha inválidos!";
                }
            }
            catch (Exception ex)
            {
                e.Authenticated = false;
                Login1.FailureText = "Erro ao consultar os dados no banco de dados.";
            }
            finally
            {
                // Fechar conexão
                if (conn != null)
                {
                    conn.Close();
                }
            }
        }
    }
}
