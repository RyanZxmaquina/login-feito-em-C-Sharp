using System;
using System.Web;
using System.Web.Security;

namespace NovoProjeto_2024_09_12
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Aqui você pode verificar se o usuário está autenticado
            if (!User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Login.aspx"); // Redireciona se não estiver autenticado
            }
        }

        protected void btnSair_Click(object sender, EventArgs e)
        {
            // Realiza o logout e redireciona para a página de login
            FormsAuthentication.SignOut();
            Response.Redirect("~/Login.aspx");
        }
    }
}
