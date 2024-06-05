<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="EditarPagina.aspx.cs" Inherits="IntranetWeb.EditarPagina" ValidateRequest="false" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página-->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Editar Página</h1>
                    <p class="lead fw-normal text-muted mb-0">Modifique los campos necesarios</p>
                </div>
                <div class="row gx-5 justify-content-center">
                    <div class="col-lg-10 col-xl-8">

                        <!-- Título -->
                        <div class="row mb-12">
                            <div class="col-md-12">
                                <label class="form-label" for="TituloTxt">Título</label>
                                <asp:TextBox ID="TituloTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar un título"
                                    ControlToValidate="TituloTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Metadescripción -->
                        <div class="row mb-12">
                            <div class="col-md-12">
                                <label class="form-label" for="MetaDescripcionTxt">Metadescripción</label>
                                <asp:TextBox ID="MetaDescripcionTxt" runat="server" CssClass="form-control"></asp:TextBox>
                                <asp:RequiredFieldValidator runat="server" ErrorMessage="Debe ingresar una metadescripción"
                                    ControlToValidate="MetaDescripcionTxt" CssClass="text-danger">
                                </asp:RequiredFieldValidator>
                            </div>
                        </div>

                        <!-- Fecha de Creación -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaCreacionInput">Fecha de Creación</label>
                                <asp:TextBox ID="FechaCreacionInput" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Categorías -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="CategoriasRadioList">Categorías</label>
                                <asp:RadioButtonList ID="CategoriasRadioList" runat="server" CssClass="form-check">
                                    <asp:ListItem Text="Corporativo" Value="Corporativo"></asp:ListItem>
                                    <asp:ListItem Text="Servicios" Value="Servicios"></asp:ListItem>
                                    <asp:ListItem Text="Contacto" Value="Contacto"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <!-- Imagen portada -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="ImagenPortada">Imagen portada</label>
                                <asp:FileUpload ID="ImagenPortada" runat="server" CssClass="form-control-file" />
                            </div>
                        </div>

                        <!-- Contenido Página -->
                        <div class="row mb-12">
                            <div class="col-md-12">
                                <label class="form-label" for="ContenidoPaginaTxt">Contenido Página</label>
                                <asp:TextBox ID="ContenidoPaginaTxt" TextMode="MultiLine" runat="server" CssClass="form-control" Rows="20"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Mensaje de error -->
                        <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="text-danger" Visible="False"></asp:Label>

                        <!-- Botón Guardar -->
                        <asp:Button ID="GuardarPaginaBtn" runat="server" Text="Guardar Cambios"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarPaginaBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Inicializar TinyMCE -->
    <script>
        tinymce.init({
            selector: '#<%= ContenidoPaginaTxt.ClientID %>',
            toolbar: 'undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help',
            plugins: 'lists link image preview',
            menubar: false
        });
    </script>
</asp:Content>
