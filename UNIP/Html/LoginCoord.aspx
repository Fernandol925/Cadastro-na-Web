<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginCoord.aspx.cs" Inherits="UNIP.Html.LoginCoord" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <title>Login do Sistema</title>

    <%--CSS inline--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />
</head>
<body>
    <form id="form2" runat="server">

        <section id="formulario">

            <p id="titulo">Acessar Sistema</p>

            <asp:TextBox ID="Usuario" runat="server" placeholder="Usuario" CssClass="campo" required="required" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Usuário corretamente"></asp:TextBox>

            <asp:TextBox ID="Senha" runat="server" placeholder="Senha" TextMode="Password" CssClass="campo" required="required"></asp:TextBox>

            <asp:Button ID="Button1" runat="server" Text="Login" CssClass="btn" OnClick="Button1_Click" />

            <asp:Button ID="btnHome" runat="server" Text="HOME" PostBackUrl="~/index.aspx" CssClass="btn" />
        </section>
    </form>
</body>
</html>
