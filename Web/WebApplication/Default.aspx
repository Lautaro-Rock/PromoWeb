<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="WebApplication._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   <main class="container-fluid">
     <h1 class="titleVoucher mb-3">Bienvenido a VoucherWin</h1>
     <section class="row sectionOne d-flex justify-content-center">
         <div class="col-sm-12 col-md-12 col-lg-12">
             <h3 class="titleSection">¿Qué es VoucherWin?</h3>
             <p class="textSection">VoucherWin es una plataforma que te permite gestionar y canjear vouchers de manera sencilla y rápida. Con nuestra aplicación, podrás acceder a una amplia variedad de ofertas y promociones.</p>
         </div>
     </section>
     <section class="row sectionTwo d-flex justify-content-center">
         <div class="col-sm-12 col-md-12 col-lg-12">
             <h3 class="titleSection">¡Por cada compra en nuestra tienda!</h3>
             <p class="textSection">Por cada compra realizada te regalamos un cupón para que participes en un sorteo.</p>
         </div>
     </section>
     <section class="row sectionThree d-flex justify-content-center">
         <div class="col-sm-12 col-md-12 col-lg-12">
             <h3 class="titleSection">¡Canjea los cupones y participa por increíbles premios!</h3>
             <p class="textSection">Ingresa a nuestra app y canjea los vouchers por increíbles premios.</p>
         </div>
     </section>
      <section class="row sectionFor d-flex justify-content-center">
     <div class="col-sm-12 col-md-12 col-lg-12 div-style">
         <h3 class="titleSection">¡Ingresa tu cupon en esta seccion!</h3>
         <p class="textSection">Completa este paso para participar por increibles premios...</p>
         <asp:TextBox CssClass="button-style-voucher" ID="TextBox1" runat="server"></asp:TextBox>
     </div>

 </section>

 </main>
    

</asp:Content>
