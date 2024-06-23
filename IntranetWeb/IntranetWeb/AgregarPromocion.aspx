<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="AgregarPromocion.aspx.cs" Inherits="IntranetWeb.AgregarPromocion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página -->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Agregar Promoción</h1>
                    <p class="lead fw-normal text-muted mb-0">Complete los campos necesarios</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">

                        <!-- Mensaje de Error -->
                        <asp:Panel ID="MensajePanel" runat="server" Visible="false" CssClass="alert alert-danger" role="alert">
                            <asp:Label ID="MensajeLabel" runat="server" Text=""></asp:Label>
                        </asp:Panel>

                        <!-- Nombre, apellido y rut -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="NombreTxt">Nombres</label>
                                <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="ApellidoTxt">Apellidos</label>
                                <asp:TextBox ID="ApellidoTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="RutUsuarioTxt">RUT</label>
                                <asp:TextBox ID="RutUsuarioTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Cargo, Gerencia, Subgerencia, Departamento, Ubicación y Jefe -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="CargoTxt">Nuevo Cargo</label>
                                <asp:TextBox ID="CargoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="GerenciaDdl">Gerencia</label>
                                <asp:DropDownList runat="server" ID="GerenciaDdl" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="GerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="SubgerenciaDdl">Subgerencia</label>
                                <asp:DropDownList runat="server" ID="SubgerenciaDdl" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="SubgerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="DepartamentoDdl">Departamento</label>
                                <asp:DropDownList runat="server" ID="DepartamentoDdl" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="DepartamentoDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="UbicacionDdl">Ubicación</label>
                                <asp:DropDownList runat="server" ID="UbicacionDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="JefeTxt">Jefe</label>
                                <asp:TextBox ID="JefeTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Fecha de Promoción -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaPromocionTxt">Fecha de Promoción</label>
                                <asp:TextBox ID="FechaPromocionTxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarBtn" runat="server" Text="Guardar Promoción" CssClass="btn btn-primary btn-block mb-4" OnClick="GuardarBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
