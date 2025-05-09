<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VentanaPremios.aspx.cs" Inherits="WebApplication.VentanaPremios" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h1 id="tit_sel_premio">ELIGE TU PREMIO</h1>
        </div>
        <div class= "contenedor_tarjetas">
            <asp:Panel CssClass ="estilo_tarjeta" runat="server">
            <asp:Image ID="imgHeadphones" runat="server" ImageUrl="https://th.bing.com/th/id/OIP.hC37BtRe6-mgVLbc0JVYUQHaHa?w=214&h=214&c=7&r=0&o=5&pid=1.7" />
            <asp:Label ID="lblNombre" runat="server" Text="Auriculares" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Label ID="lblDescrip" runat="server" Text="Los mejores para tus oidos" /><br />
           </asp:Panel>

            <asp:Panel CssClass ="estilo_tarjeta" runat="server">
            <asp:Image ID="Image1" runat="server" ImageUrl="https://th.bing.com/th/id/OIP.hC37BtRe6-mgVLbc0JVYUQHaHa?w=214&h=214&c=7&r=0&o=5&pid=1.7" />
            <asp:Label ID="Label1" runat="server" Text="Auriculares" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Label ID="Label2" runat="server" Text="Los mejores para tus oidos" /><br />
            </asp:Panel>

            <asp:Panel CssClass ="estilo_tarjeta" runat="server">
            <asp:Image ID="Image2" runat="server" ImageUrl="https://th.bing.com/th/id/OIP.hC37BtRe6-mgVLbc0JVYUQHaHa?w=214&h=214&c=7&r=0&o=5&pid=1.7" />
            <asp:Label ID="Label3" runat="server" Text="Auriculares" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Label ID="Label4" runat="server" Text="Los mejores para tus oidos" /><br />
            </asp:Panel>

            <asp:Panel CssClass ="estilo_tarjeta" runat="server">
            <asp:Image ID="Image3" runat="server" ImageUrl="https://i.ytimg.com/vi/bv2qkK3K-rQ/oar2.jpg?sqp=-oaymwEkCJUDENAFSFqQAgHyq4qpAxMIARUAAAAAJQAAyEI9AICiQ3gB&rs=AOn4CLCCCGP9zyOMILaDRZhZA7JrPP9UTQ" />
            <asp:Label ID="Label5" runat="server" Text="Ubermanija" Font-Bold="true" Font-Size="Large" /><br />
            <asp:Label ID="Label6" runat="server" Text="jajajja" /><br />
            </asp:Panel>
        </div>

    </form>
</body>
</html>
