<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerUsuarios.aspx.cs" Inherits="IntranetWeb.VerUsuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page content-->
    <section class="py-5">
        <div class="container px-1">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-2 px-md-3 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Usuarios ingresados</h1>
                </div>
                <div class="bg-light rounded-3 py-2 px-4 mb-4 text-center">
                    <asp:Panel ID="MensajePanel" runat="server" Visible="false" CssClass="alert alert-success"
                        role="alert">
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
                            <asp:BoundField DataField="fechaNacimiento" HeaderText="Fecha de Nacimiento" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="cargo" HeaderText="Cargo" />
                            <asp:BoundField DataField="GerenciaNombre" HeaderText="Gerencia" />
                            <asp:BoundField DataField="SubgerenciaNombre" HeaderText="Subgerencia" />
                            <asp:BoundField DataField="DepartamentoNombre" HeaderText="Departamento" />
                            <asp:BoundField DataField="UbicacionNombre" HeaderText="Ubicación" />
                            <asp:BoundField DataField="jefe" HeaderText="Jefe" />
                            <asp:BoundField DataField="TipoContratoNombre" HeaderText="Tipo de Contrato" />
                            <asp:BoundField DataField="fechaIngreso" HeaderText="Fecha de Ingreso" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="email" HeaderText="Email" />
                            <asp:BoundField DataField="celular" HeaderText="Celular" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Editar"
                                        CssClass="btn btn-warning btn-sm" CommandName="editar"
                                        CommandArgument='<%# Eval("rutUsuario") %>'></asp:Button>
                                    <asp:Button runat="server" Text="Eliminar"
                                        CssClass="btn btn-danger btn-sm" CommandName="eliminar"
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
