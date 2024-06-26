﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarNacimiento.aspx.cs" Inherits="IntranetWeb.RegistrarNacimiento" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page content-->
    <section class="py-5">

        <div class="container px-1">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-2 px-md-3 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Registrar Nacimiento</h1>
                </div>

                <!-- Barra de búsqueda-->
                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="input-group">
                                <asp:DropDownList ID="FilterByDdl" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Filtrar por:" Value="" Enabled="false" Selected="true"></asp:ListItem>
                                    <asp:ListItem Text="Gerencia" Value="GerenciaNombre"></asp:ListItem>
                                    <asp:ListItem Text="Subgerencia" Value="SubgerenciaNombre"></asp:ListItem>
                                    <asp:ListItem Text="Departamento" Value="DepartamentoNombre"></asp:ListItem>
                                    <asp:ListItem Text="Ubicación" Value="UbicacionNombre"></asp:ListItem>
                                    <asp:ListItem Text="Tipo de Contrato" Value="TipoContratoNombre"></asp:ListItem>
                                    <asp:ListItem Text="Rol de Usuario" Value="RolUsuarioNombre"></asp:ListItem>
                                    <asp:ListItem Text="Todo" Value="all"></asp:ListItem>
                                </asp:DropDownList>
                                <asp:TextBox ID="SearchTermTxt" runat="server" CssClass="form-control" placeholder="Buscar término..."></asp:TextBox>
                                <asp:Button ID="SearchBtn" runat="server" CssClass="btn btn-outline-secondary" Text="Buscar" OnClick="SearchBtn_Click" />
                            </div>
                        </div>
                    </div>
                </div>

                <div class="bg-light rounded-3 py-2 px-4 mb-4 text-center">
                    <asp:Panel ID="MensajePanel" runat="server" Visible="false" CssClass="alert alert-success" role="alert">
                        <asp:Label ID="MensajeLabel" runat="server" Text=""></asp:Label>
                    </asp:Panel>
                </div>
                
                <div class="row gx-1 justify-content-center">
                    <asp:GridView ID="UsuariosGrid" runat="server" AutoGenerateColumns="False"
                        EmptyDataText="No hay usuarios guardados" CssClass="table table-hover table-sm text-center"
                        OnRowCommand="UsuariosGrid_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="rutUsuario" HeaderText="RUT" />
                            <asp:BoundField DataField="nombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="apellido" HeaderText="Apellido" />
                            <asp:BoundField DataField="fechaNacimiento" HeaderText="Fecha de Nacimiento colaborador" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="cargo" HeaderText="Cargo" />
                            <asp:BoundField DataField="fechaIngreso" HeaderText="Fecha de Ingreso" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="celular" HeaderText="Celular" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Agregar nacimiento"
                                        CssClass="btn btn-success btn-sm" CommandName="agregarNacimiento"
                                        CommandArgument='<%# Eval("rutUsuario") %>'></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>

</asp:Content>
