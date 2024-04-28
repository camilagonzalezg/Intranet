<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="IntranetWeb.RegistrarUsuario" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page content-->
    <section class="py-5">
        <div class="container px-5">
            <!-- Contact form-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Ingresar Usuario</h1>
                    <p class="lead fw-normal text-muted mb-0">Complete todos los campos</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-8 col-xl-6">

                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row mb-4">
                            <div class="col">
                                <asp:TextBox ID="NombreTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <label class="form-label" for="NombreTxt">Nombres</label>
                            </div>
                            <div class="col">
                                <asp:TextBox ID="ApellidoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <label class="form-label" for="ApellidoTxt">Apellidos</label>
                            </div>
                        </div>

                        <!-- Text input -->
                        <div class="mb-4">
                            <asp:TextBox ID="RutTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="RutTxt">RUT</label>
                        </div>

                        <!-- Text input -->
                        <div class="mb-4">
                            <asp:TextBox ID="CargoTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="CargoTxt">Cargo</label>
                        </div>

                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row mb-4">
                            <div class="col">
                                <asp:DropDownList runat="server" ID="GerenciaDdl" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Personas"></asp:ListItem>
                                </asp:DropDownList>
                                <label class="form-label" for="GerenciaDdl">Gerencia</label>
                            </div>
                            <div class="col">
                                <asp:DropDownList runat="server" ID="SubgerenciaDdl" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Personas"></asp:ListItem>
                                </asp:DropDownList>
                                <label class="form-label" for="SubgerenciaDdl">Subgerencia</label>
                            </div>
                        </div>

                        <!-- 2 column grid layout with text inputs for the first and last names -->
                        <div class="row mb-4">
                            <div class="col">
                                <asp:DropDownList runat="server" ID="DepartamentoDdl" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Personas"></asp:ListItem>
                                </asp:DropDownList>
                                <label class="form-label" for="DepartamentoDdl">Departamento</label>
                            </div>
                            <div class="col">
                                <asp:DropDownList runat="server" ID="UbicaciónDdl" CssClass="form-select">
                                    <asp:ListItem Value="1" Text="Personas"></asp:ListItem>
                                </asp:DropDownList>
                                <label class="form-label" for="UbicaciónDdl">Ubicación</label>
                            </div>
                        </div>

                        <!-- Jefe -->
                        <div class="mb-4">
                            <asp:DropDownList runat="server" ID="JefeDdl" CssClass="form-select">
                                <asp:ListItem Value="1" Text="Personas"></asp:ListItem>
                            </asp:DropDownList>
                            <label class="form-label" for="JefeDdl">Jefe</label>
                        </div>

                        <!-- Fecha ingreso -->
                        <div class="mb-4">
                            <asp:Calendar runat="server" ID="FechaDp" CssClass="form-select"></asp:Calendar>
                            <label class="form-label" for="FechaIngreso">Fecha Ingreso</label>
                        </div>

                        <!-- Tipo contrato -->
                        <div class="mb-4">
                            <asp:DropDownList runat="server" ID="ContratoDdl" CssClass="form-select"></asp:DropDownList>
                            <label class="form-label" for="ContratoDdl">Tipo contrato</label>
                        </div>

                        <!-- Email input -->
                        <div class="mb-4">
                            <asp:TextBox ID="EmailTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="EmailTxt">Email</label>
                        </div>

                        <!-- Number input -->
                        <div class="mb-4">
                            <asp:TextBox ID="CelularTxt" runat="server" CssClass="form-control"></asp:TextBox>
                            <label class="form-label" for="CelularTxt">Celular</label>
                        </div>

                        <!-- Message input -->
                        <div class="mb-4">
                            <asp:TextBox ID="InfoExtraTxt" runat="server" CssClass="form-control" Rows="4"></asp:TextBox>
                            <label class="form-label" for="InfoExtraTxt">Información Adicional</label>
                        </div>

                        <!-- Submit button -->
                        <asp:Button ID="GuardarUsuarioBtn" runat="server" Text="Ingresar" CssClass="btn btn-primary btn-block mb-4"/>
                    </div>
                </div>
            </div>
        </div>
    </section>


</asp:Content>
