<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="IntranetWeb.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<section class="vh-100">
  <div class="container py-5 h-10">
    <div class="row d-flex justify-content-center align-items-center h-100">
      <div class="col col-xl-10">
        <div class="card" style="border-radius: 1rem;">
          <div class="row g-0">
            <div class="col-md-6 col-lg-5 d-none d-md-block">
              <img src="Images\foto_1280x1920.jpg"
                alt="foto de mujer en AFC" class="img-fluid" style="border-radius: 1rem 0 0 1rem;" />
            </div>
            <div class="col-md-6 col-lg-7 d-flex align-items-center">
              <div class="card-body p-4 p-lg-5 text-black">

                <!-- Formulario sin la etiqueta <form> con runat="server" -->
                <div class="d-flex align-items-center mb-3 pb-1">
                    <i class="fas fa-arrow-right-to-bracket fa-2x me-3" style="color: #007bff;"></i>
                    <span class="h1 fw-bold mb-0">AFC Intranet</span>
                </div>

                <h5 class="fw-normal mb-3 pb-3" style="letter-spacing: 1px;">Ingrese a su cuenta</h5>

                <div data-mdb-input-init class="form-outline mb-4">
                    <asp:TextBox ID="form2Example17" runat="server" CssClass="form-control form-control-lg" />
                    <label class="form-label" for="form2Example17">Rut (sin puntos, con guión y dígito verificador)</label>
                </div>

                <div data-mdb-input-init class="form-outline mb-4">
                    <asp:TextBox ID="form2Example27" runat="server" TextMode="Password" CssClass="form-control form-control-lg" />
                    <label class="form-label" for="form2Example27">Contraseña</label>
                </div>

                <div class="pt-1 mb-4">
                    <asp:Button ID="btnLogin" runat="server" CssClass="btn btn-primary btn-lg btn-block" Text="Ingresar" OnClick="BtnLogin_Click" />
                </div>

                <asp:Label ID="lblError" runat="server" CssClass="text-danger" Visible="False"></asp:Label>

                <a class="small text-muted" href="#!">¿Olvidó su contraseña?</a>
                <p class="mb-5 pb-lg-2" style="color: #393f81;">¿No tiene una cuenta? <a href="#!"
                    style="color: #393f81;">Regístrese aquí</a></p>
                <a href="#!" class="small text-muted">Terminos de uso</a>
                <a href="#!" class="small text-muted">Política de Seguridad</a>

              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</section>

</asp:Content>