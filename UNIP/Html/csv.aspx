<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="csv.aspx.cs" Inherits="UNIP.CSV" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="../CSS/estilo.css" rel="stylesheet" />
    <script src="../JS/read-csv.js"></script>
    <meta http-equiv="content-type" content="text/html; charset=utf-8" />
    <title>Leitor CSV</title>

    <style>
        .global {
            font-family: 'Lato', sans-serif;
            background-color: #16a085;
        }
    </style>

</head>
<body class="global">
    <section id="formulario">
        <form class="form-horizontal well">
            <legend>
                <h3>
                    <div id="title">Leitor CSV</div>
                </h3>
            </legend>
            <fieldset>
                <label for="csvFileInput">
                    <strong>CSV File:</strong>
                </label>
                <input type="file" id="csvFileInput" title="Upload" onchange="handleFiles(this.files)" accept=".txt, .csv">
            </fieldset>

            
        </form>
        <div id="output">
        </div>
        <br>
    </section>

    <!-- Le javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script type="text/javascript" src="js/read-csv.js"></script>
</body>
</html>
