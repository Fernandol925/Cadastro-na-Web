using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP
{
    public partial class PalestraC : System.Web.UI.Page
    {
        protected override void OnInitComplete(EventArgs e)
        {
            btnCadastrar.Click += btnCadastrar_Click;
        }
        protected void btnCadastrar_Click(object sender, EventArgs e)
        {
            
            var novaPalestra = new Models.PALESTRA();
            novaPalestra.NOME = txtNome.Text;
            novaPalestra.EMAIL = txtEmail.Text;
            novaPalestra.TEMA = txtTema.Text;
            novaPalestra.DATA = txtDia.Text;
            novaPalestra.HORA = txtHora.Text;
            
            

            bool cadastrado = DAO.Palestra.Cadastrar(novaPalestra);
            if (cadastrado)
            {
                ltMensagem.Text = novaPalestra.TEMA + "Cadastrado com sucesso";

                txtNome.Text = "";
                txtEmail.Text = "";
                txtTema.Text = "";
                txtDia.Text = "";
                txtHora.Text = "";
            }
            else
            {
                ltMensagem.Text = "Erro ao Cadastrar" + novaPalestra.TEMA;
            }
        }
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtTema.Text = "";
            txtDia.Text = "";
            txtHora.Text = "";
        }

        protected void btnCadastrar_Click1(object sender, EventArgs e)
        {

        }
    }
}