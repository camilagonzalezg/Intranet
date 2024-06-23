<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarPromocion.aspx.cs" Inherits="IntranetWeb.EditarPromocion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página -->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Agregar Promoción</h1>
                    <p class="lead fw-normal text-muted mb-0">Modifique los campos necesarios</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">

                        <!-- Nombre y apellido (solo lectura) -->
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label" for="NombreTxt">Nombres</label>
                                <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label" for="ApellidoTxt">Apellidos</label>
                                <asp:TextBox ID="ApellidoTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Campos editables -->
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label" for="CargoTxt">Cargo</label>
                                <asp:TextBox ID="CargoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label" for="GerenciaDdl">Gerencia</label>
                                <asp:DropDownList ID="GerenciaDdl" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="GerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label" for="SubgerenciaDdl">Subgerencia</label>
                                <asp:DropDownList ID="SubgerenciaDdl" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="SubgerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label" for="DepartamentoDdl">Departamento</label>
                                <asp:DropDownList ID="DepartamentoDdl" runat="server" CssClass="form-select" AutoPostBack="true" OnSelectedIndexChanged="DepartamentoDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label" for="UbicacionDdl">Ubicación</label>
                                <asp:DropDownList ID="UbicacionDdl" runat="server" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6">
                                <label class="form-label" for="JefeTxt">Jefe</label>
                                <asp:TextBox ID="JefeTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row mb-4">
                            <div class="col-md-6">
                                <label class="form-label" for="FechaPromocionTxt">Fecha de Promoción</label>
                                <asp:TextBox ID="FechaPromocionTxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarPromocionBtn" runat="server" Text="Guardar Promoción"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarPromocionBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
