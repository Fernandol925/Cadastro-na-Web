<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CoordenadorC.aspx.cs" Inherits="UNIP.CoordenadorC" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/estilo.css" rel="stylesheet" />
    <title>Cadastro de Visitantes</title>
    <%--CSS inline--%>

    <style>
        .list {
            width: 360px;
            height: 35px;
            margin-left: 20px;
            margin-top: 10px;
            padding-left: 10px;
            font-size: 1.1em;
            outline: none;
            border: 0px;
            background-color: #dcdcdc;
            border-radius: 5px;
            color: #808080;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">

        <section id="formulario">

            <p id="titulo">Cadastro Coordenador</p>

            <asp:TextBox ID="txtNome" runat="server" placeholder="Nome" CssClass="campo" pattern="[A-Za-záàâãéèêíïóôõöúçñÁÀÂÃÉÈÍÏÓÔÕÖÚÇÑ'\s]+$" ToolTip="Preencha seu Nome corretamente" ></asp:TextBox>

            <asp:TextBox ID="txtEmail" runat="server" placeholder="Email" CssClass="campo" pattern="[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}$" ToolTip="Preencha seu Email corretamente"></asp:TextBox>
            <%--Lista DropDown--%>
            <asp:DropDownList ID="txtCurs" runat="server" CssClass="list">
                <asp:ListItem> Administração </asp:ListItem>
                <asp:ListItem>Análise e Desenvolvimento de Sistemas</asp:ListItem>
                <asp:ListItem>Arquitetura e Urbanismo</asp:ListItem>
                <asp:ListItem>Automação Industrial</asp:ListItem>
                <asp:ListItem>Banco de Dados</asp:ListItem>
                <asp:ListItem>Biomedicina</asp:ListItem>
                <asp:ListItem>Ciência da Computação</asp:ListItem>
                <asp:ListItem>Ciências Atuariais</asp:ListItem>
                <asp:ListItem>Ciências Biológicas</asp:ListItem>
                <asp:ListItem>Ciências Contábeis</asp:ListItem>
                <asp:ListItem>Ciências Econômicas</asp:ListItem>
                <asp:ListItem>Comércio Exterior</asp:ListItem>
                <asp:ListItem>Comunicação Social (Publicidade e Propaganda)</asp:ListItem>
                <asp:ListItem>Construção de Edifícios</asp:ListItem>
                <asp:ListItem>Desenho Industrial</asp:ListItem>
                <asp:ListItem>Design de Interiores</asp:ListItem>
                <asp:ListItem>Design de Moda</asp:ListItem>
                <asp:ListItem>Design de Produto</asp:ListItem>
                <asp:ListItem>Design Gráfico</asp:ListItem>
                <asp:ListItem>Direito</asp:ListItem>
                <asp:ListItem>Educação Física</asp:ListItem>
                <asp:ListItem>Enfermagem</asp:ListItem>
                <asp:ListItem>Engenharia Aeronáutica</asp:ListItem>
                <asp:ListItem>Engenharia Ambiental</asp:ListItem>
                <asp:ListItem>Engenharia Civil</asp:ListItem>
                <asp:ListItem>Engenharia de Computação</asp:ListItem>
                <asp:ListItem>Engenharia de Controle e Automação (Mecatrônica)</asp:ListItem>
                <asp:ListItem>Engenharia de Petróleo</asp:ListItem>
                <asp:ListItem>Engenharia de Produção Mecânica</asp:ListItem>
                <asp:ListItem>Engenharia Elétrica (Eletrônica/Eletrotécnica)</asp:ListItem>
                <asp:ListItem>Engenharia Mecânica</asp:ListItem>
                <asp:ListItem>Estética e Cosmética</asp:ListItem>
                <asp:ListItem>Farmácia</asp:ListItem>
                <asp:ListItem>Física</asp:ListItem>
                <asp:ListItem>Fisioterapia</asp:ListItem>
                <asp:ListItem>Fonoaudiologia</asp:ListItem>
                <asp:ListItem>Fotografia</asp:ListItem>
                <asp:ListItem>Gastronomia</asp:ListItem>
                <asp:ListItem>Gestão Ambiental</asp:ListItem>
                <asp:ListItem>Geografia (Licenciatura)</asp:ListItem>
                <asp:ListItem>Gestão Comercial</asp:ListItem>
                <asp:ListItem>Gestão da Qualidade</asp:ListItem>
                <asp:ListItem>Gestão da Tecnologia da Informação</asp:ListItem>
                <asp:ListItem>Gestão de Recursos Humanos</asp:ListItem>
                <asp:ListItem>Gestão de Segurança Privada</asp:ListItem>
                <asp:ListItem>Gestão de Turismo</asp:ListItem>
                <asp:ListItem>Gestão Financeira</asp:ListItem>
                <asp:ListItem>Gestão Hospitalar</asp:ListItem>
                <asp:ListItem>Gestão Portuária</asp:ListItem>
                <asp:ListItem>Gestão Pública</asp:ListItem>
                <asp:ListItem>História (Licenciatura)</asp:ListItem>
                <asp:ListItem>Hotelaria</asp:ListItem>
                <asp:ListItem>Hotelaria</asp:ListItem>
                <asp:ListItem>Jogos Digitais</asp:ListItem>
                <asp:ListItem>Jornalismo</asp:ListItem>
                <asp:ListItem>Letras</asp:ListItem>
                <asp:ListItem>Logística</asp:ListItem>
                <asp:ListItem>Marketing</asp:ListItem>
                <asp:ListItem>Matemática</asp:ListItem>
                <asp:ListItem>Medicina Veterinária</asp:ListItem>
                <asp:ListItem>Moda</asp:ListItem>
                <asp:ListItem>Nutrição</asp:ListItem>
                <asp:ListItem>Odontologia</asp:ListItem>
                <asp:ListItem>Pedagogia</asp:ListItem>
                <asp:ListItem>Petróleo e Gás</asp:ListItem>
                <asp:ListItem>Processos Escolares</asp:ListItem>
                <asp:ListItem>Processos Gerenciais</asp:ListItem>
                <asp:ListItem>Produção Audiovisual</asp:ListItem>
                <asp:ListItem>Produção Multimídia</asp:ListItem>
                <asp:ListItem>Produção Publicitária</asp:ListItem>
                <asp:ListItem>Propaganda e Marketing</asp:ListItem>
                <asp:ListItem>Psicologia</asp:ListItem>
                <asp:ListItem>Química</asp:ListItem>
                <asp:ListItem>Radiologia</asp:ListItem>
                <asp:ListItem>Redes de Computadores</asp:ListItem>
                <asp:ListItem>Relações Internacionais</asp:ListItem>
                <asp:ListItem>Secretariado Executivo Bilíngue</asp:ListItem>
                <asp:ListItem>Segurança da Informação</asp:ListItem>
                <asp:ListItem>Serviço Social</asp:ListItem>
                <asp:ListItem>Sistemas de Informação</asp:ListItem>
                <asp:ListItem>Sistemas para Internet</asp:ListItem>
                <asp:ListItem>Terapia Ocupacional</asp:ListItem>
                <asp:ListItem>Turismo</asp:ListItem>
                <asp:ListItem>Zootecnia</asp:ListItem>
            </asp:DropDownList>

            <asp:TextBox ID="txtFuncional" runat="server" placeholder="Funcional" CssClass="campo"></asp:TextBox>

            <asp:TextBox ID="txtSenha" runat="server" TextMode="Password" placeholder="Senha" pattern="[A-Za-z0-9]{8}"></asp:TextBox>

            <asp:Button ID="btnCadastrar" runat="server" Text="Gravar" CssClass="btn" />

            <asp:Button ID="btnPalestra" runat="server" Text="Palestra" PostBackUrl="~/Html/PalestraC.aspx" CssClass="btn" />

            <asp:Button ID="btnCsv" runat="server" Text="CSV" PostBackUrl="~/Html/CSV.aspx" CssClass="btn" OnClick="btnCsv_Click" />

            <asp:Literal runat="server" ID="ltMensagem"></asp:Literal>
        </section>
    </form>
</body>
</html>
