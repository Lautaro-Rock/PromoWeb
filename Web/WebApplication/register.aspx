<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main class="container">
    <section class="row">
        <div class="titleRegister mt-4">
            <h2 class="h2Register mb-3">Formulario de registro VoucherWin</h2>
        </div>
        <div>
            <p class="textInfo">Bienvenido al formulario de registro, por favor complete los siguientes datos para registrarse en nuestro sitio web.</p>
        </div>
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Nombre:</p>
            <asp:TextBox CssClass="input-style" ID="TextBox1" runat="server"></asp:TextBox>
        </div>
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Apellido:</p>
            <asp:TextBox CssClass="input-style" ID="TextBox2" runat="server"></asp:TextBox>
        </div>
        <div class="form-groupOne  col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Documento:</p>
            <asp:TextBox CssClass="input-style" ID="TextBox3" runat="server"></asp:TextBox>
        </div>
    </section>
    <br />
    <section class="row">
    <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
        <p class="textOneRegister">Email:</p>
        <asp:TextBox CssClass="input-style" ID="TextBox4" runat="server"></asp:TextBox>
    </div>
    <div class="form-groupOne  col-lg-4 col-md-4 col-sm-12 mb-2">
        <p class="textOneRegister">Direccion:</p>
        <asp:TextBox CssClass="input-style" ID="TextBox5" runat="server"></asp:TextBox>
    </div>
    <div class="form-groupOne  col-lg-4 col-md-4 col-sm-12 mb-2">
        <p class="textOneRegister">Ciudad:</p>
        <asp:TextBox CssClass="input-style" ID="TextBox6" runat="server"></asp:TextBox>
    </div>
</section>
   <section class="row">
    <div class="form-groupOne col-lg-12 col-md-12 col-sm-12 mb-2 ">
        <p class="textOneRegister">Codigo postal:</p>
        <asp:TextBox CssClass="input-style" ID="TextBox7" runat="server"></asp:TextBox>
    </div>
</section>
    <div class="button-style my-4">
      <asp:Button CssClass="button-register" ID="Button1" runat="server" Text="Registrarse"/>
    </div>
</main>
</asp:Content>
