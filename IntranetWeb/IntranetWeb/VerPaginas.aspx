﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="VerPaginas.aspx.cs" Inherits="IntranetWeb.VerPaginas" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Page content-->
    <section class="py-5">
        <div class="container px-1">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-2 px-md-3 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Páginas ingresadas</h1>
                </div>

                <!-- Barra de búsqueda-->
                <div class="container d-flex justify-content-center align-items-center">
                    <div class="row justify-content-center">
                        <div class="col-md-12">
                            <div class="input-group">
                                <asp:DropDownList ID="FilterByDdl" runat="server" CssClass="form-select">
                                    <asp:ListItem Text="Filtrar por:" Value="" Enabled="false" Selected="true"></asp:ListItem>
                                    <asp:ListItem Text="Autor" Value="usuarioAutor"></asp:ListItem>
                                    <asp:ListItem Text="Título" Value="titulo"></asp:ListItem>
                                    <asp:ListItem Text="Tags" Value="tags"></asp:ListItem>
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
                    <asp:GridView ID="PaginasGrid" runat="server" AutoGenerateColumns="False"
                        EmptyDataText="No hay páginas guardadas" CssClass="table table-hover table-sm text-center"
                        OnRowCommand="PaginasGrid_RowCommand">
                        <Columns>
                            <asp:BoundField DataField="titulo" HeaderText="Título" />
                            <asp:BoundField DataField="metaDescripcion" HeaderText="Metadescripción" />
                            <asp:BoundField DataField="fechaPublicacion" HeaderText="Fecha de Publicación" DataFormatString="{0:dd/MM/yyyy}" />
                            <asp:BoundField DataField="usuarioAutor" HeaderText="Autor" />
                            <asp:BoundField DataField="tags" HeaderText="Tags" />
                            <asp:TemplateField HeaderText="Acciones">
                                <ItemTemplate>
                                    <asp:Button runat="server" Text="Editar" CssClass="btn btn-warning btn-sm" CommandName="editar" CommandArgument='<%# Eval("id") %>'></asp:Button>
                                    <asp:Button runat="server" Text="Eliminar" CssClass="btn btn-danger btn-sm" CommandName="eliminar" CommandArgument='<%# Eval("id") %>'></asp:Button>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </Columns>
                    </asp:GridView>
                </div>
            </div>
        </div>
    </section>
</asp:Content>
