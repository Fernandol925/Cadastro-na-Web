<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="home.aspx.cs" Inherits="UNIP.Html.home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--CSS Linkado--%>

    <link href="../CSS/estilo.css" rel="stylesheet" />

    <title>Home</title>
</head>
<body>
    <form id="form1" runat="server">

        <section id="formulario">

            <p id="titulo">Selecionar Palestra</p>

            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>

            <asp:TextBox ID="txtNome" runat="server" CssClass="campo" Visible="False" required="required" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Nome corretamente"></asp:TextBox><br />

            <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="TEMA" DataValueField="TEMA" TextMode="Text"></asp:RadioButtonList>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:projetoConnectionString3 %>" SelectCommand="SELECT [ID], [NOME], [EMAIL], [TEMA], [HORA], [DATA] FROM [PALESTRA]"></asp:SqlDataSource>

            <asp:TextBox ID="txtData" runat="server" CssClass="campo" Visible="False"></asp:TextBox><br />

            <asp:TextBox ID="txtChave" runat="server" CssClass="campo" Visible="False"></asp:TextBox><br />

            <asp:Button ID="btnCadastrar" runat="server" Text="GRAVAR" CssClass="btn" OnClick="btnCadastrar_Click" />

            <asp:Button ID="btnHome" runat="server" Text="HOME" PostBackUrl="~/index.aspx" CssClass="btn" />

            <asp:Literal runat="server" ID="ltMensagem"></asp:Literal>


        </section>
    </form>
</body>
</html>
