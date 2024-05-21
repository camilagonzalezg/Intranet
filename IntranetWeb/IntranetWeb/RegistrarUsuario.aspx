<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="IntranetWeb.RegistrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página-->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Ingresar Usuario</h1>
                    <p class="lead fw-normal text-muted mb-0">Complete todos los campos</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">

                        <!-- Nombre, apellido y rut -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="NombreTxt">Nombres</label>
                                <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar los nombres"
                                    ControlToValidate="NombreTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="ApellidoTxt">Apellidos</label>
                                <asp:TextBox ID="ApellidoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar los apellidos"
                                    ControlToValidate="ApellidoTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="RutTxt">RUT</label>
                                <asp:TextBox ID="RutTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:CustomValidator ID="RutCV" runat="server" ValidateEmptyText="true"
                                    CssClass="text-danger" ControlToValidate="RutTxt"
                                    OnServerValidate="RutCV_ServerValidate" ErrorMessage="CustomValidator">
                                </asp:CustomValidator>
                            </div>

                        </div>

                        <!-- Fecha nacimiento, fecha ingreso -->
                        <div class="row mb-4">
                            <div class="col-md-3">
                                <label class="form-label" for="FechaNacimientoDt">Fecha Nacimiento</label>
                                <asp:TextBox ID="FechaSeleccionadaTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="VerCalendarioBtn" runat="server" Text="Ingresar fecha"
                                    CssClass="btn btn-primary btn-block mb-4" OnClick="VerCalendarioBtn_Click"
                                    CausesValidation="false" />
                                <asp:Calendar runat="server" ID="FechaNacimientoDt"
                                    CssClass="form-select" OnSelectionChanged="FechaNacimientoDt_SelectionChanged"
                                    OnDayRender="FechaNacimientoDt_DayRender"></asp:Calendar>
                            </div>
                            <div class="col-md-3">
                                <label class="form-label" for="FechaIngresoDt">Fecha Ingreso trabajador</label>
                                <asp:TextBox ID="FechaSeleccionadaIngresoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-3">
                                <asp:Button ID="VerCalendarioIngresoBtn" runat="server" Text="Ingresar fecha"
                                    CssClass="btn btn-primary btn-block mb-4" OnClick="VerCalendarioIngresoBtn_Click"
                                    CausesValidation="false" />
                                <asp:Calendar runat="server" ID="FechaIngresoDt" CssClass="form-select"
                                    OnSelectionChanged="FechaIngresoDt_SelectionChanged"
                                    OnDayRender="FechaIngresoDt_DayRender"></asp:Calendar>
                            </div>
                        </div>

                        <!-- Cargo, Gerencia y subgerencia -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="CargoTxt">Cargo</label>
                                <asp:TextBox ID="CargoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el cargo"
                                    ControlToValidate="CargoTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="GerenciaDdl">Gerencia</label>
                                <asp:DropDownList runat="server" ID="GerenciaDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="SubgerenciaDdl">Subgerencia</label>
                                <asp:DropDownList runat="server" ID="SubgerenciaDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <!-- Departamento, ubicacion, jefe -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="DepartamentoDdl">Departamento</label>
                                <asp:DropDownList runat="server" ID="DepartamentoDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="UbicaciónDdl">Ubicación</label>
                                <asp:DropDownList runat="server" ID="UbicaciónDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="JefeTxt">Jefe</label>
                                <asp:TextBox ID="JefeTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el Jefe"
                                    ControlToValidate="JefeTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>

                        </div>

                        <!-- Tipo contrato, rol usuario, email -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="ContratoDdl">Tipo contrato</label>
                                <asp:DropDownList runat="server" ID="ContratoDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="RolUsuarioDdl">Rol de usuario</label>
                                <asp:DropDownList runat="server" ID="RolUsuarioDdl" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Colaborador"></asp:ListItem>
                                    <asp:ListItem Value="2" Text="Gerencia"></asp:ListItem>
                                    <asp:ListItem Value="3" Text="Administrador"></asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="EmailTxt">Email</label>
                                <asp:TextBox ID="EmailTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el email"
                                    ControlToValidate="EmailTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Celular input -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="CelularTxt">Celular</label>
                                <asp:TextBox ID="CelularTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el celular"
                                    ControlToValidate="CelularTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarUsuarioBtn" runat="server" Text="Ingresar Usuario"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarUsuarioBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
