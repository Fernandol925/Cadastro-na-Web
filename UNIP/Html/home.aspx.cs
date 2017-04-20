using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP.Html
{
    public partial class home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String NOME;
            NOME = Session["UNOME"].ToString();
            if (NOME != "")
            {
                Label1.Text = "Seja bem vindo: " + NOME;
            }
            else
            {
                Label1.Text = "Erro ao acessar: " + NOME;
            }
        }
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += btnCadastrar_Click;
        }

        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            var novoCertificado = new Models.CERTIFICADO();
            novoCertificado.TEMA = RadioButtonList1.Text;

            bool cadastrado = DAO.Certificado.Cadastrar(novoCertificado);
            if (cadastrado)
            {
                ltMensagem.Text = novoCertificado.TEMA + " voce se cadastradou com sucesso ";
            }
            else
            {
                ltMensagem.Text = " Ocorreu um erro ao tentar cadastrar " + novoCertificado.TEMA;
            }
        }
    }
}