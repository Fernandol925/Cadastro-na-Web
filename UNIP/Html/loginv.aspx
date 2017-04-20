<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="loginv.aspx.cs" Inherits="UNIP.Html.loginv" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <%--CSS inline--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">

        <section id="formulario">

            <p id="titulo">Acessar Sistema</p>

            <asp:TextBox ID="TextBox1" runat="server" placeholder="Nome" CssClass="campo" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Nome corretamente"></asp:TextBox><br />

            <asp:TextBox ID="TextBox2" runat="server" placeholder="Chave" CssClass="campo" min="5" pattern="[0-9]{5}"></asp:TextBox><br />

            <asp:Button ID="Button1" runat="server" CssClass="btn" Text="Login" OnClick="Button1_Click" />

            <asp:Button ID="btnHome" runat="server" Text="Home" PostBackUrl="~/index.aspx" CssClass="btn" />

            <asp:Button ID="Button2" runat="server" Text="Cadastrar" PostBackUrl="~/Html/VisianteC.aspx" CssClass="btn" />

            <asp:Literal runat="server" ID="MENSAGEM1"> </asp:Literal>

            <%--<asp:Label ID="Label1" runat="server" Text=""></asp:Label>--%>

        </section>
    </form>
</body>
</html>
