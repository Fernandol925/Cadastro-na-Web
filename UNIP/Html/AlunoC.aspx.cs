using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UNIP
{
    public partial class AlunoC : System.Web.UI.Page
    {
        protected override void OnInit(EventArgs e)
        {
            btnCadastrar.Click += btnCadastrar_Click;
        }

        private void btnCadastrar_Click(object sender, EventArgs e)
        {
            var novoAluno = new Models.pessoa();
            novoAluno.nome = txtNome.Text;
            novoAluno.email = txtEmail.Text;
            novoAluno.curso = txtCurs.Text;
            novoAluno.ra = txtRa.Text;
            novoAluno.chave = l1.Text;
            novoAluno.senha = txtSenha.Text;
            

            bool cadastrado = DAO.Aluno.Cadastrar(novoAluno);
            if (cadastrado)
            {
                Response.Write(ltMensagem1.Text = novoAluno.nome + " foi cadastrado com sucesso, guarde a sua chave --> " + novoAluno.chave + " <--");
                
                txtNome.Text = "";
                txtEmail.Text = "";
                txtCurs.Text = "";
                txtRa.Text = "";
                txtSenha.Text = "";
                l1.Text = "";
            }
            else
            {
                ltMensagem1.Text = " Ocorreu um erro ao tentar cadastrar " + novoAluno.nome;
            }
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        //Chave de Sistema
        protected void l1_TextChanged(object sender, EventArgs e)
        {

        }

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

        //protected void btnLimpar_Click(object sender, EventArgs e)
        //{
        //    txtNome.Text = "";
        //    txtEmail.Text = "";
        //    txtCurs.Text = "";
        //    txtRa.Text = "";
        //    txtSenha.Text = "";
        //    l1.Text = "";
        //}

        protected void btnCadastrar_Click1(object sender, EventArgs e)
        {

        }
    }
}