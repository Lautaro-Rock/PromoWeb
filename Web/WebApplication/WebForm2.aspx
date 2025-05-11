<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="Header">
        <h1>Elige el articulo por el que quieres participar</h1>
    </div>

 <div class="row row-cols-1 row-cols-md-3 g-4"> 

    <asp:Repeater runat="server" ID="repArticulos">
        <ItemTemplate>
            <div class="card">
                <img src="<%#Eval("ImagenUrl") %>" class="card-img-top" alt="Articulo" style="width: 200px; height: 150px; margin: 5px;"/>
                <div class="card-body">
                    <h5 class="card-title"><%# Eval("Nombre") %></h5>
                    <p class="card-text"><%# Eval("Descripcion") %></p>
                    <asp:Button ID="btnCambiarImagen" runat="server" Text="Ver otra imagen" CommandName="CambiarImagen" CommandArgument='<%#Eval("ID") %>' CssClass="btn btn-primary" OnClick="btnCambiarImagen_Click"/>
                    <asp:Button ID="btnElegirArticulo" runat="server" Text="¡Quiero este!" CommandName="ElegirArticulo" CommandArgument='<%#Eval("ID") %>' CssClass="btn btn-success" OnClick="btnElegirArticulo_Click"/>
                </div>
            </div>
        </ItemTemplate>
    </asp:Repeater>

</div>
</asp:Content>

