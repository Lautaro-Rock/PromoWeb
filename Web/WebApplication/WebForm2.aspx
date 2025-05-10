<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="WebApplication.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:GridView CssClass="table table-bordered my-5 w-75 mx-auto table-sm" runat="server" ID="dgvArticulos" AutoGenerateColumns="false">
        <Columns>
            <asp:BoundField HeaderText="Nombre" DataField="Nombre"/>
            <asp:BoundField HeaderText="Descripcion" DataField="Descripcion"/>
            <asp:BoundField HeaderText="Precio" DataField="Precio"/>
            <asp:TemplateField HeaderText="Imagen">
            <ItemTemplate>
           <asp:Image CssClass="" ID="imgArticulo" runat="server" ImageUrl='<%# Eval("ImagenUrl") %>' Width="100px" Height="100px" />
           </ItemTemplate>
          </asp:TemplateField>
         <asp:TemplateField HeaderText="Acción">
            <ItemTemplate>
                <asp:Button ID="btnVerDetalles" runat="server" Text="¡Quiero Este!" 
                        CommandName="VerDetalles" 
                        CommandArgument='<%# Eval("Id") %>' 
                        CssClass="btn btn-sm btn-primary mt-4"/>
            </ItemTemplate>
        </asp:TemplateField>
        </Columns>
    </asp:GridView>
</asp:Content>

