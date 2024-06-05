<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="RegistrarNoticia.aspx.cs" Inherits="IntranetWeb.RegistrarNoticia" ValidateRequest="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Contenido de la página-->
    <section class="py-5">
        <div class="container-fluid px-5">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">Ingresar Noticia</h1>
                    <p class="lead fw-normal text-muted mb-0">Complete todos los campos</p>
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

                        <!-- Fecha publicación -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="FechaPublicacionInput">Fecha de publicación</label>
                                <asp:TextBox ID="FechaPublicacionInput" runat="server" TextMode="Date" CssClass="form-control"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Tags -->
                        <div class="row mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="TagsRadioList">Tags</label>
                                <asp:RadioButtonList ID="TagsRadioList" runat="server" CssClass="form-check">
                                    <asp:ListItem Text="Novedades empresa" Value="Novedades empresa"></asp:ListItem>
                                    <asp:ListItem Text="Beneficios" Value="Beneficios"></asp:ListItem>
                                    <asp:ListItem Text="Desarrollo organizacional" Value="Desarrollo organizacional"></asp:ListItem>
                                </asp:RadioButtonList>
                            </div>
                        </div>

                        <!-- Imagen portada Slider -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="ImagenPortadaSlider">Imagen portada slider</label>
                                <asp:FileUpload ID="ImagenPortadaSlider" runat="server" CssClass="form-control-file" />
                            </div>
                        </div>

                        <!-- Imagen portada Card -->
                        <div class="mb-4">
                            <div class="col-md-4">
                                <label class="form-label" for="ImagenPortadaCard">Imagen tarjeta noticia</label>
                                <asp:FileUpload ID="ImagenPortadaCard" runat="server" CssClass="form-control-file" />
                            </div>
                        </div>

                        <!-- Contenido Noticia -->
                        <div class="row mb-12">
                            <div class="col-md-12">
                                <label class="form-label" for="ContenidoNoticiaTxt">Contenido Noticia</label>
                                <asp:TextBox ID="ContenidoNoticiaTxt" TextMode="MultiLine" runat="server" CssClass="form-control" Rows="20"></asp:TextBox>
                            </div>
                        </div>

                        <!-- Mensaje de error -->
                        <asp:Label ID="ErrorMessageLabel" runat="server" CssClass="text-danger" Visible="False"></asp:Label>

                        <!-- Botón Publicar -->
                        <asp:Button ID="GuardarNoticiaBtn" runat="server" Text="Ingresar Noticia"
                            CssClass="btn btn-primary btn-block mb-4"
                            OnClick="GuardarNoticiaBtn_Click" />
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- Inicializar TinyMCE -->
    <script>
        tinymce.init({
            selector: '#<%= ContenidoNoticiaTxt.ClientID %>',
            toolbar: 'undo redo | formatselect | bold italic | alignleft aligncenter alignright alignjustify | bullist numlist outdent indent | removeformat | help',
            plugins: 'lists link image preview',
            menubar: false
        });
    </script>
</asp:Content>
