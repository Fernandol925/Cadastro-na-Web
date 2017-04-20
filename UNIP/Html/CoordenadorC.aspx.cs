using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP
{
    public partial class CoordenadorC : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += btnCadastrar_Click;
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            var novoCoordenador = new Models.COORDENADOR();
            novoCoordenador.NOME = txtNome.Text;
            novoCoordenador.EMAIL = txtEmail.Text;
            novoCoordenador.FUNCIONAL = txtFuncional.Text;
            novoCoordenador.SENHA = txtSenha.Text;

            bool cadastrado = DAO.Coordenador.Cadastrar(novoCoordenador);
            if (cadastrado)
            {
                ltMensagem.Text = novoCoordenador.NOME + " Foi cadastrado com sucesso ";
                txtNome.Text = "";
                txtEmail.Text = "";
                txtFuncional.Text = "";
                txtSenha.Text = "";
            }
            else
            {
                ltMensagem.Text = " Ocorreu um erro ao tentar cadastrar " + novoCoordenador.NOME;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtFuncional.Text = "";
            txtSenha.Text = "";
        }

        protected void btnCsv_Click(object sender, EventArgs e)
        {
            Response.Redirect("csv.aspx");
        }
    }
}