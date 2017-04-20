using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP
{
    public partial class VisianteC : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += btnCadastrar_Click;
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            var novoVisitante = new Models.pessoa();
            novoVisitante.nome = txtNome.Text;
            novoVisitante.email = txtEmail.Text;
            novoVisitante.rg = txtRg.Text;
            novoVisitante.senha = txtSenha.Text;
            novoVisitante.chave = l1.Text;

            bool cadastrado = DAO.Visitante.Cadastrar(novoVisitante);
            if (cadastrado)
            {
                ltMensagem.Text = novoVisitante.nome + " Foi cadastrado com sucesso ";
                txtNome.Text = "";
                txtEmail.Text = "";
                txtRg.Text = "";
                txtSenha.Text = "";
                l1.Text = "";
            }
            else
            {
                ltMensagem.Text = " Ocorreu um erro ao tentar cadastrar " + novoVisitante.nome;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Chave de Sistema
        protected void btnChave_Click(object sender, EventArgs e)
        {
            string num = "0123456789";
            int len = num.Length;
            string otp = string.Empty;
            int otpdigit = 5;
            string finaldigit;
            int getindex;
            for (int i = 0; i < otpdigit; i++)
            {
                do
                {
                    getindex = new Random().Next(0, len);
                    finaldigit = num.ToCharArray()[getindex].ToString();

                } while (otp.IndexOf(finaldigit) != -1);
                otp += finaldigit;
            }
            l1.Text = otp;

        }

        protected void l1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnLimpar_Click(object sender, EventArgs e)
        {
            txtNome.Text = "";
            txtEmail.Text = "";
            txtRg.Text = "";
            txtSenha.Text = "";
            l1.Text = "";
        }
    }
}