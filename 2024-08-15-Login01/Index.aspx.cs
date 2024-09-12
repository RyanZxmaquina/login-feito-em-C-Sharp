using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace _2024_08_15_Login01
{
    public partial class Index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string nome = Session["Usuário"].ToString();
            string cidade_do_usuario = Session["MinhaCidade"].ToString();

            lblUsuario.Text = "Prezado(a) [" + nome + "], seja bem vindo !";
            lblCidade.Text = "Cidade = " + cidade_do_usuario;
        }
    }
}