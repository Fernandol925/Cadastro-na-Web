<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="UNIP.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">

    <%--CSS Linkado--%>
    <link href="CSS/responsivo.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

    <title>Cadastro de Palestras Unip</title>

    <%--CSS inLine--%>

    <style>
        * {
            margin: 0;
            padding: 0;
            font-family: 'Lato', sans-serif;
        }

        header {
            /*position: fixed;
            width: 100%;
            height: 100%;*/
            background-color: #16a085;
            top: 0;
            left: 0;
            text-align: center;
        }

            header a {
                text-decoration: none;
                color: #fff;
                display: inline-block;
                padding: 15px 20px;
                margin: 15px 30px;
                border: 1px solid #fff;
                border-radius: 5px;
            }

                header a:hover {
                    background-color: #d4d4d4;
                    color: #777;
                    box-shadow: 0 2px 3px #777;
                }

        @keyframes btnAluno {
            0% {
                transform: rotateX(0);
            }

            50% {
                transform: rotateX(180deg);
            }

            100% {
                transform: rotateX(0);
            }
        }

        .btnAluno {
            transition: .5s;
        }

            .btnAluno:hover {
                animation-name: btnAluno;
                animation-delay: .5s;
                animation-duration: .5s;
                animation-timing-function: linear;
                animation-iteration-count: 1;
            }

        @keyframes btnVisitante {
            0% {
                transform: rotateX(0);
            }

            50% {
                transform: rotateX(180deg);
            }

            100% {
                transform: rotateX(0);
            }
        }

        .btnVisitante {
            transition: .5s;
        }

            .btnVisitante:hover {
                animation-name: btnAluno;
                animation-delay: .5s;
                animation-duration: .5s;
                animation-timing-function: linear;
                animation-iteration-count: 1;
            }

        @keyframes btnCoordenador {
            0% {
                transform: rotateX(0);
            }

            50% {
                transform: rotateX(180deg);
            }

            100% {
                transform: rotateX(0);
            }
        }

        .btnCoordenador {
            transition: .5s;
        }

            .btnCoordenador:hover {
                animation-name: btnAluno;
                animation-delay: .5s;
                animation-duration: .5s;
                animation-timing-function: linear;
                animation-iteration-count: 1;
            }
    </style>
</head>
<body>
    <div class="container">
        <!--uma coluna-->
        <div class="row">
            <div class="col">
                <div class="teste">
                    <form id="form1" runat="server">
                        <div>
                            <header>
                                <a href="Html/login.aspx" class="btnAluno">Aluno</a>
                                <a href="Html/loginv.aspx" class="btnVisitante">Visitante</a>
                                <a href="Html/LoginCoord.aspx" class="btnCoordenador">Coordenador</a>
                            </header>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--duas culunas-->
    <div class="row">
        <div class="col col-2">
            <div class="teste">
            </div>
        </div>
        <div class="col col-2">
            <div class="teste"></div>
        </div>
    </div>

    <!--três colunas-->
    <div class="row">
        <div class="col col-3">
            <div class="teste">
            </div>
        </div>
        <div class="col col-3">
            <div class="teste">
            </div>
        </div>
        <div class="col col-3">
            <div class="teste">
            </div>
        </div>
    </div>

    <!--Coluna com sidebar-->
    <div class="row">
        <div class="col col-content">
            <div class="teste"></div>
        </div>
        <div class="col col-sidebar">
            <div class="teste"></div>
        </div>
    </div>

</body>
</html>
