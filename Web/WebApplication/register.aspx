<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="WebApplication.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
<main class="container">
    <section class="row">
        <div class="titleRegister mt-4">
            <h2 class="h2Register mb-3">Formulario de registro VoucherWin para participar</h2>
        </div>
        <div>
            <p class="textInfo">Bienvenido al formulario de registro, por favor complete los siguientes datos para registrarse en nuestro sitio web.</p>
        </div>

        <!-- Nombre -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Nombre:</p>
            <asp:TextBox CssClass="input-style" ID="nombreBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvNombre" runat="server" ControlToValidate="nombreBox" ErrorMessage="El nombre es obligatorio" ForeColor="Red" Display="Dynamic" />
        </div>

        <!-- Apellido -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Apellido:</p>
            <asp:TextBox CssClass="input-style" ID="apellidoBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvApellido" runat="server" ControlToValidate="apellidoBox" ErrorMessage="El apellido es obligatorio" ForeColor="Red" Display="Dynamic" />
        </div>

        <!-- DNI -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Documento:</p>
            <asp:TextBox CssClass="input-style" ID="dniBox" TextMode="Number" runat="server" AutoPostBack="true" OnTextChanged="dniBox_TextChanged"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDni" runat="server" ControlToValidate="dniBox" ErrorMessage="El DNI es obligatorio" ForeColor="Red" Display="Dynamic" />
        </div>
    </section>

    <br />

    <section class="row">
        <!-- Email -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Email:</p>
            <asp:TextBox CssClass="input-style" ID="emailBox" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="emailValidator" runat="server" ControlToValidate="emailBox" ErrorMessage="Email inválido" ForeColor="Red" ValidationExpression="\w+([-+.'']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" Display="Dynamic" />
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="emailBox" ErrorMessage="El email es obligatorio" ForeColor="Red" Display="Dynamic" />
        </div>

        <!-- Dirección -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Dirección:</p>
            <asp:TextBox CssClass="input-style" ID="direBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvDireccion" runat="server" ControlToValidate="direBox" ErrorMessage="La dirección es obligatoria" ForeColor="Red" Display="Dynamic" />
        </div>

        <!-- Ciudad -->
        <div class="form-groupOne col-lg-4 col-md-4 col-sm-12 mb-2">
            <p class="textOneRegister">Ciudad:</p>
            <asp:TextBox CssClass="input-style" ID="ciudadBox" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvCiudad" runat="server" ControlToValidate="ciudadBox" ErrorMessage="La ciudad es obligatoria" ForeColor="Red" Display="Dynamic" />
        </div>
    </section>

    <!-- Código Postal -->
    <section class="row">
        <div class="form-groupOne col-lg-12 col-md-12 col-sm-12 mb-2">
            <p class="textOneRegister">Código postal:</p>
            <asp:TextBox CssClass="input-style" ID="cpBox" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator CssClass="mb-1" ID="rfvCP" runat="server" ControlToValidate="cpBox" ErrorMessage="El código postal es obligatorio" ForeColor="Red" Display="Dynamic" />
        </div>
    </section>

    <div class="button-style my-4">
        <asp:Button CssClass="button-register" ID="buttonBoucher" OnClick="buttonBoucher_Click" runat="server" Text="Participar!" />
    </div>
</main>
</asp:Content>
 
