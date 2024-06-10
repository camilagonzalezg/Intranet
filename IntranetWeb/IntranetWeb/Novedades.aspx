<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Novedades.aspx.cs" Inherits="IntranetWeb.Novedades" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Noticia más reciente -->
    <section class="py-5">
        <div class="container px-5">
            <h1 class="fw-bolder fs-5 mb-4">Novedades en AFC</h1>
            <asp:Repeater ID="RepeaterLatestNews" runat="server">
                <ItemTemplate>
                    <div class="card border-0 shadow rounded-3 overflow-hidden">
                        <div class="card-body p-0">
                            <div class="row gx-0">
                                <div class="col-lg-6 col-xl-5 py-lg-5">
                                    <div class="p-4 p-md-5">
                                        <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                        <div class="h2 fw-bolder"><%# Eval("titulo") %></div>
                                        <p><%# Eval("metaDescripcion") %></p>
                                        <a class="stretched-link text-decoration-none" href="<%# Eval("urlSimple") %>">Read more
                                            <i class="bi bi-arrow-right"></i>
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-6 col-xl-7">
                                    <img class="img-fluid" src="/Multimedia/ImagenesNoticias/<%# Eval("ImagenUrlCard") %>" alt="Imagen de portada" />
                                </div>
                            </div>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
    </section>

    <!-- Desde la segunda noticia más reciente, hasta la última -->
    <section class="py-5">
        <div class="container px-5">
            <h2 class="fw-bolder fs-5 mb-4">Featured Stories</h2>
            <div class="row gx-5">
                <asp:Repeater ID="RepeaterOtherNews" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img class="card-img-top" src="/Multimedia/ImagenesNoticias/<%# Eval("ImagenUrlCard") %>" alt="Imagen de portada" />
                                <div class="card-body p-4">
                                    <div class="badge bg-primary bg-gradient rounded-pill mb-2">News</div>
                                    <a class="text-decoration-none link-dark stretched-link" href="<%# Eval("urlSimple") %>">
                                        <div class="h5 card-title mb-3"><%# Eval("titulo") %></div>
                                    </a>
                                    <p class="card-text mb-0"><%# Eval("metaDescripcion") %></p>
                                </div>
                                <div class="card-footer p-4 pt-0 bg-transparent border-top-0">
                                    <div class="d-flex align-items-end justify-content-between">
                                        <div class="d-flex align-items-center">
                                            <img class="rounded-circle me-3" src="https://dummyimage.com/40x40/ced4da/6c757d" alt="..." />
                                            <div class="small">
                                                <div class="fw-bold"><%# Eval("AutorNombre") %></div>
                                                <div class="text-muted"><%# Eval("fechaPublicacion", "{0:MMMM dd, yyyy}") %></div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </ItemTemplate>
                </asp:Repeater>
            </div>
            <div class="text-end mb-5 mb-xl-0">
                <a class="text-decoration-none" href="#!">More stories
                    <i class="bi bi-arrow-right"></i>
                </a>
            </div>
        </div>
    </section>

</asp:Content>



