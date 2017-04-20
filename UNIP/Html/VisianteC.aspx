<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VisianteC.aspx.cs" Inherits="UNIP.VisianteC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--CSS Linkado--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />
    <title>Cadastro de Visitante
    </title>
</head>
<body>
    <form id="form2" runat="server">

        <section id="formulario">

            <p id="titulo">Cadastro Visitante</p>

            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome" CssClass="campo" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Nome corretamente"></asp:TextBox>

            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="campo" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" ToolTip="Preencha seu Email corretamente"></asp:TextBox>

            <asp:TextBox ID="txtRg" runat="server" placeholder="Rg" CssClass="campo" min="8" pattern="[A-Za-z0-9]{9}" ToolTip="RG com 9 digitos"></asp:TextBox>

            <asp:TextBox ID="l1" OnTextChanged="l1_TextChanged" runat="server" placeholder="Chave" CssClass="CH" min="5" pattern="[0-9]{5}"></asp:TextBox>

            <asp:Button ID="btnChave" runat="server" Text="CHAVE" OnClick="btnChave_Click" CssClass="btnCH" />

            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Senha" pattern="[A-Za-z0-9]{8}"></asp:TextBox>

            <asp:Button ID="btnCadastrar" runat="server" Text="GRAVAR" CssClass="btn" />

            <asp:Button ID="btnLogin" runat="server" Text="LOGIN" CssClass="btn" PostBackUrl="~/Html/login.aspx" />

            <asp:Literal runat="server" ID="ltMensagem"></asp:Literal>
        </section>
    </form>
</body>
</html>
