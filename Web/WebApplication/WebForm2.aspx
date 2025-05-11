<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication.WebForm2" %>

<asp:Content ID="HeadContentCSS" ContentPlaceHolderID="HeadContent" runat="server">
    <link rel ="stylesheet" type="text/css" href ="style.css" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">

    <div class="elegir_premio">
        <h1>Elige el articulo por el que quieres participar</h1>
    </div>
        <div class="row row-cols-1 row-cols-md-3 g-4">
            <asp:Repeater runat="server" ID="repArticulos">
                <ItemTemplate>
                    <div class="col">
                        <div class="estilo_tarjeta" onmouseover="iniciarCambioImagen(this)" onmouseout="detenerCambioImagen(this)" >
                            <div>   
                             <img src='<%# Eval("ImagenUrl").ToString().Split('|')[0] %>' 
                                 data-imagenes='<%# Eval("ImagenUrl") %>'
                                 class="img-fluid mb-2 imagen-articulo" 
                                 alt="Artículo" />
                            </div>

                            <asp:Label ID="lblNombre" runat="server"
                                Text='<%# Eval("Nombre") %>'
                                Font-Bold="true"
                                Font-Size="Large" />
                            <br />
                            <asp:Label ID="lblDescripcion" runat="server"
                                Text='<%# Eval("Descripcion") %>' />
                            <br />
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
   <!-- DEBERIAMOS GENERAR UN ARCHIVO JS PARA ESTE SCRIPT --> 
    <script>
    let intervalosImagenes = new Map();

        function iniciarCambioImagen(tarjeta) {
            const img = tarjeta.querySelector('img');
            const imagenes = img.dataset.imagenes.split('|');
            let index = 0;

            const intervalo = setInterval(() => {
                index = (index + 1) % imagenes.length;
                img.src = imagenes[index];
            }, 1000);

            intervalosImagenes.set(tarjeta, { intervalo, img });
        }

        function detenerCambioImagen(tarjeta) {
            const { intervalo, img } = intervalosImagenes.get(tarjeta) || {};
            if (intervalo && img) {
                clearInterval(intervalo);
                const imagenes = img.dataset.imagenes.split('|');
                img.src = imagenes[0]; 
                intervalosImagenes.delete(tarjeta);
            }
        }
    </script>


</asp:Content>

