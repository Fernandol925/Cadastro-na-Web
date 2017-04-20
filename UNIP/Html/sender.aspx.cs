using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net.Configuration;

namespace UNIP.Html
{
    public partial class sender : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCadastrar_Click1(object sender, EventArgs e)
        {
            string remetenteEmail = "nbsjunior@gmail.com"; //O e-mail do remetente
            MailMessage mail = new MailMessage();
            mail.To.Add(destinatarioTextBox.Text);
            mail.From = new MailAddress(remetenteEmail, "Nelson Borges", System.Text.Encoding.UTF8);
            mail.Subject = "Assunto:Este e-mail é um teste do Asp.Net";
            mail.SubjectEncoding = System.Text.Encoding.UTF8;
            mail.Body = mensagemTextBox.Text;
            mail.BodyEncoding = System.Text.Encoding.UTF8;
            mail.IsBodyHtml = true;
            mail.Priority = MailPriority.High; //Prioridade do E-Mail

            SmtpClient client = new SmtpClient();  //Adicionando as credenciais do seu e-mail e senha:
            client.Credentials = new System.Net.NetworkCredential(remetenteEmail, "digiteAquiSuaSenhaGmail");

            client.Port = 587; // Esta porta é a utilizada pelo Gmail para envio
            client.Host = "smtp.gmail.com"; //Definindo o provedor que irá disparar o e-mail
            client.EnableSsl = true; //Gmail trabalha com Server Secured Layer
            try
            {
                client.Send(mail);
                RespostaEnvioLabel.Text = "Envio do E-mail com sucesso";
                RespostaEnvioLabel.Visible = true;
            }
            catch (Exception ex)
            {
                RespostaEnvioLabel.Text = "Ocorreu um erro ao enviar:" + ex.Message;
                RespostaEnvioLabel.Visible = true;
            }
        }
    }
}