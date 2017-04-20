using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP.Html
{
    public partial class LoginCoord : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Usuario.Text == "Admin" && Senha.Text == "1234")

            {

                Response.Redirect("CoordenadorC.aspx");

            }

            else

            {

                Response.Write("Usuário ou senha incorretos");

            }
        }
    }
}