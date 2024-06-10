<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarCorrespondencia.aspx.cs" Inherits="IntranetWeb.EditarCorrespondencia" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página-->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Editar Correspondencia</h1>
                    <p class="lead fw-normal text-muted mb-0">Modifique los campos necesarios</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">
                        <!-- Nombre del archivo -->
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <label class="form-label" for="NombreArchivoTxt">Nombre del Archivo</label>
                                <asp:TextBox ID="NombreArchivoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el nombre del archivo"
                                    ControlToValidate="NombreArchivoTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <!-- Descripción del archivo -->
                        <div class="row mb-3">
                            <div class="col-md-12">
                                <label class="form-label" for="DescripcionArchivoTxt">Descripción del Archivo</label>
                                <asp:TextBox ID="DescripcionArchivoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar una descripción"
                                    ControlToValidate="DescripcionArchivoTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>
                        <!-- Fecha de ingreso -->
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaIngresoInput">Fecha de Ingreso</label>
                                <asp:TextBox ID="FechaIngresoInput" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <!-- Fecha de cierre -->
                        <div class="row mb-3">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaCierreInput">Fecha de Cierre</label>
                                <asp:TextBox ID="FechaCierreInput" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <!-- Archivo PDF -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="FileUploadControl">Actualizar Documento (PDF)</label>
                                <asp:FileUpload ID="FileUploadControl" runat="server" CssClass="form-control-file" />
                            </div>
                        </div>
                        <!-- Mensaje de error -->
                        <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="text-danger" Visible="False"></asp:Label>
                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarCorrespondenciaBtn" runat="server" Text="Guardar Cambios"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarCorrespondenciaBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
