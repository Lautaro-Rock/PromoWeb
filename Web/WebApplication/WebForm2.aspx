<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication.WebForm2" %>

<asp:Content ID="HeadContentCSS" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel ="stylesheet" type="text/css" href ="style.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="Header">
        <h1>Elige el articulo por el que quieres participar</h1>
    </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="repArticulos">
                <ItemTemplate>
                    <div class="col">
                        <div class="estilo_tarjeta">
                            <asp:Image ID="imgArticulo" runat="server"
                                ImageUrl='<%# Eval("ImagenUrl") %>'
                                CssClass="img-fluid mb-2"
                                AlternateText="Artículo" />
                            <asp:Label ID="lblNombre" runat="server"
                                Text='<%# Eval("Nombre") %>'
                                Font-Bold="true"
                                Font-Size="Large" />
                            <br />
                            <asp:Label ID="lblDescripcion" runat="server"
                                Text='<%# Eval("Descripcion") %>' />
                            <br />
                            <asp:Button ID="btnCambiarImagen" runat="server"
                                Text="Ver otra imagen"
                                CommandName="CambiarImagen"
                                CommandArgument='<%# Eval("ID") %>'
                                CssClass="btn btn-secondary mt-2"
                                OnClick="btnCambiarImagen_Click" />

                            <asp:Button ID="btnElegirArticulo" runat="server"
                                Text="¡Quiero este!"
                                CommandName="ElegirArticulo"
                                CommandArgument='<%# Eval("ID") %>'
                                CssClass="btn btn-success mt-2"
                                OnClick="btnElegirArticulo_Click" />
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    


</asp:Content>

