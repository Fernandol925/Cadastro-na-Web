using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP.Html
{
    public partial class login : System.Web.UI.Page
    {
        class1 c;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c = new class1();
            String nome;
            String chave;
            nome = TextBox1.Text;
            chave = TextBox2.Text;

            Session["UNOME"] = nome;
            Session["UCHAVE"] = chave;

            if (c.loginuser(TextBox1.Text, TextBox2.Text) == true)
            {
                Response.Redirect("home.aspx");
            }
            else
            {
                Response.Write(MENSAGEM1.Text = "Erro ao tentar acessar");
                //Response.Write("Erro ao tentar acessar");
            }

        }
    }
}