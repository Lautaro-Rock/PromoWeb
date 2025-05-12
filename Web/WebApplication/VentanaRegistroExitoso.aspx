<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VentanaRegistroExitoso.aspx.cs" Inherits="WebApplication.VentanaRegistroExitoso" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Registro Exitoso</title>
  <link href="style.css" rel="stylesheet" type="text/css" />    
</head>
<body id ="Exito">
    <form id="form1" runat="server">
        <div class="cont_rgexitoso">
         <div class="icono_exito">✔️</div>
         <h1>¡Registro exitoso!</h1>
         <p>Ya estás participando por el premio.</p>
         <asp:Button ID="btnContinuar" runat="server"
         Text="Continuar"
             OnClick="btnContinuar_Click" />        
        </div>
    </form>
</body>
</html>
