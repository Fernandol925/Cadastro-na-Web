<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="PalestraC.aspx.cs" Inherits="UNIP.PalestraC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--CSS inline--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />

    <title>Cadastro de Palestra</title>
</head>
<body>
    <form id="form2" runat="server">

        <section id="formulario">

            <p id="titulo">Cadastro Palestra</p>

            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome do Palestrante" CssClass="campo" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Nome corretamente"></asp:TextBox>

            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="campo" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" ToolTip="Preencha seu Email corretamente"></asp:TextBox>

            <asp:TextBox ID="txtTema" runat="server" placeholder="Tema" CssClass="campo" ToolTip="Preencha o Tema corretamente"></asp:TextBox>

            <asp:TextBox ID="txtDia" TextMode="Date" runat="server"></asp:TextBox>

            <asp:TextBox ID="txtHora" runat="server" TextMode="Time" CssClass="campo"></asp:TextBox>

            <asp:Button ID="btnCadastrar" runat="server" Text="Gravar" CssClass="btn" OnClick="btnCadastrar_Click1" />

            <asp:Button ID="bntEditar" runat="server" Text="Editar" CssClass="btn" PostBackUrl="~/Html/grid.aspx" />

            <asp:Button ID="Button1" runat="server" Text="Voltar" PostBackUrl="~/Html/CoordenadorC.aspx" CssClass="btn" />
            
            <asp:Literal runat="server" ID="ltMensagem"></asp:Literal>
        </section>
    </form>
</body>
</html>
