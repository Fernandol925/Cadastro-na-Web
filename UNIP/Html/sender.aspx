<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="sender.aspx.cs" Inherits="UNIP.Html.sender" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--CSS Linkado--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />
    <title></title>
    <style>
        .box {
            width: 350px;
            height: 180px;
            margin-left: 20px;
            margin-top: 10px;
            padding-left: 10px;
            font-size: 1.1em;
            outline: none;
            border: 0px;
            background-color: #dcdcdc;
            border-radius: 5px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section id="formulario">

            <p id="titulo">Envio de Certificado</p>

            <asp:TextBox ID="destinatarioTextBox" runat="server" placeholder="Nome" CssClass="campo"></asp:TextBox><br />

            <asp:TextBox ID="mensagemTextBox" runat="server" placeholder="Certificado" CssClass="box"></asp:TextBox><br />

            <asp:Button ID="enviarButton" runat="server" Text="ENVIAR" CssClass="btn" OnClick="btnCadastrar_Click1" />

            <asp:Button ID="Button1" runat="server" Text="Voltar" PostBackUrl="~/Html/CoordenadorC.aspx" CssClass="btn" />

            <asp:Label ID="RespostaEnvioLabel" runat="server" Text=""></asp:Label>
        </section>
    </form>
</body>
</html>
