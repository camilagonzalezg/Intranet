<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarNacimiento.aspx.cs" Inherits="IntranetWeb.AgregarNacimiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página -->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario -->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Agregar Nacimiento</h1>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">
                        <asp:Panel ID="FormularioPanel" runat="server">
                            <!-- Datos del usuario (no editables) -->
                            <div class="row mb-4">
                                <div class="col-md-4">
                                    <label class="form-label">Nombres</label>
                                    <asp:Label ID="NombreLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Apellidos</label>
                                    <asp:Label ID="ApellidoLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Cargo</label>
                                    <asp:Label ID="CargoLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                            </div>
                            <div class="row mb-4">
                                <div class="col-md-4">
                                    <label class="form-label">Gerencia</label>
                                    <asp:Label ID="GerenciaLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Subgerencia</label>
                                    <asp:Label ID="SubgerenciaLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                                <div class="col-md-4">
                                    <label class="form-label">Departamento</label>
                                    <asp:Label ID="DepartamentoLbl" runat="server" CssClass="form-control-plaintext"></asp:Label>
                                </div>
                            </div>

                            <!-- Campos para agregar nacimiento -->
                            <div class="mb-4">
                                <label class="form-label" for="NombreHijoTxt">Nombre del Hijo</label>
                                <asp:TextBox ID="NombreHijoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="mb-4">
                                <label class="form-label" for="FechaNacimientoTxt">Fecha de Nacimiento</label>
                                <asp:TextBox ID="FechaNacimientoTxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>

                            <!-- Botón Guardar -->
                            <asp:Button ID="GuardarBtn" runat="server" Text="Guardar" CssClass="btn btn-success btn-block mb-4" OnClick="GuardarBtn_Click" />
                        </asp:Panel>
                        <asp:Panel ID="ErrorPanel" runat="server" Visible="false" CssClass="alert alert-danger">
                            <asp:Label ID="ErrorLabel" runat="server" Text=""></asp:Label>
                        </asp:Panel>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
