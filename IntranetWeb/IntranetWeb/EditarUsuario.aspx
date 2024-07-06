<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarUsuario.aspx.cs" Inherits="IntranetWeb.EditarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página -->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Editar Usuario</h1>
                    <p class="lead fw-normal text-muted mb-0">Modifique los campos necesarios</p>
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
                                <asp:TextBox ID="RutTxt" runat="server" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                <asp:CustomValidator ID="RutCV" runat="server" ValidateEmptyText="true"
                                    CssClass="text-danger" ControlToValidate="RutTxt"
                                    OnServerValidate="RutCV_ServerValidate" ErrorMessage="CustomValidator">
                                </asp:CustomValidator>
                            </div>
                        </div>

                        <!-- Fecha nacimiento, fecha ingreso -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaNacimientoTxt">Fecha Nacimiento</label>
                                <asp:TextBox ID="FechaNacimientoTxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="FechaIngresoTxt">Fecha Ingreso trabajador</label>
                                <asp:TextBox ID="FechaIngresoTxt" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="CargoTxt">Cargo</label>
                                <asp:TextBox ID="CargoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el cargo"
                                    ControlToValidate="CargoTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Gerencia, subgerencia y departamento -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="GerenciaDdl">Gerencia</label>
                                <asp:DropDownList runat="server" ID="GerenciaDdl" CssClass="form-select"
                                    AutoPostBack="true" OnSelectedIndexChanged="GerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="SubgerenciaDdl">Subgerencia</label>
                                <asp:DropDownList runat="server" ID="SubgerenciaDdl" CssClass="form-select"
                                    AutoPostBack="true" OnSelectedIndexChanged="SubgerenciaDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-4">
                                <label class="form-label" for="DepartamentoDdl">Departamento</label>
                                <asp:DropDownList runat="server" ID="DepartamentoDdl" CssClass="form-select"
                                    AutoPostBack="true" OnSelectedIndexChanged="DepartamentoDdl_SelectedIndexChanged">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <!-- Ubicación, jefe y tipo contrato -->
                        <div class="row mb-4">
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
                            <div class="col-md-4">
                                <label class="form-label" for="ContratoDdl">Tipo contrato</label>
                                <asp:DropDownList runat="server" ID="ContratoDdl" CssClass="form-select">
                                </asp:DropDownList>
                            </div>
                        </div>

                        <!-- Rol usuario, email y celular -->
                        <div class="row mb-4">
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
                            <div class="col-md-4">
                                <label class="form-label" for="CelularTxt">Celular</label>
                                <asp:TextBox ID="CelularTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar el celular"
                                    ControlToValidate="CelularTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Generar nueva contraseña -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label">Generar nueva contraseña</label>
                                <asp:Button ID="GenerarContraseñaBtn" runat="server" Text="Generar nueva contraseña" CssClass="btn btn-success mt-4" OnClick="GenerarContraseñaBtn_Click" />
                            </div>
                        </div>

                        <!-- Label para mostrar mensajes -->
                        <div class="mb-4">
                            <asp:Label ID="lblMensaje" runat="server" CssClass="text-success" Visible="false"></asp:Label>
                        </div>

                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarUsuarioBtn" runat="server" Text="Guardar Cambios"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarUsuarioBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>

