<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="IntranetWeb.Home" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <!-- Carrusel con ImagenPortadaSlider-->
    <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
        <div class="carousel-indicators">
            <asp:Repeater ID="RepeaterSliderIndicators" runat="server">
                <ItemTemplate>
                    <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="<%# Container.ItemIndex %>" class="<%# Container.ItemIndex == 0 ? "active" : "" %>" aria-current="true" aria-label="Slide <%# Container.ItemIndex + 1 %>"></button>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <div class="carousel-inner">
            <asp:Repeater ID="RepeaterSlider" runat="server">
                <ItemTemplate>
                    <div class="carousel-item <%# Container.ItemIndex == 0 ? "active" : "" %>">
                        <img src="/Multimedia/ImagenesNoticias/<%# Eval("ImagenUrl") %>" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5><%# Eval("titulo") %></h5>
                            <p><%# Eval("metaDescripcion") %></p>
                        </div>
                    </div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
        <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Previous</span>
        </button>
        <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="visually-hidden">Next</span>
        </button>
    </div>

    <!-- Accesos directos-->
    <section class="py-3">
        <div class="container px-5 my-5">
            <div class="row gx-5 row-cols-2 row-cols-lg-4 py-5">
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-chat-dots"></i></div>
                    <div class="h5 mb-2">Nuestra empresa</div>
                    <p class="text-muted mb-0">Revisa las gerencias, subgerencias y departamentos que posee AFC.</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-people"></i></div>
                    <div class="h5">Novedades</div>
                    <p class="text-muted mb-0">Aquí encontrarás todas las noticias importantes de AFC.</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-question-circle"></i></div>
                    <div class="h5">¿Qué pasa en AFC?</div>
                    <p class="text-muted mb-0">Nuestra empresa se mueve: revisa los cumpleaños, promociones y nacimientos.</p>
                </div>
                <div class="col">
                    <div class="feature bg-primary bg-gradient text-white rounded-3 mb-3"><i class="bi bi-telephone"></i></div>
                    <div class="h5">Contáctanos</div>
                    <p class="text-muted mb-0">Puedes enviarnos un mensaje para pedir información.</p>
                </div>
            </div>
        </div>
    </section>

    <!-- Blog preview section-->
    <section class="py-2">
        <div class="container px-5 my-1">
            <div class="row gx-5">
                <asp:Repeater ID="RepeaterLatestNews" runat="server">
                    <ItemTemplate>
                        <div class="col-lg-4 mb-5">
                            <div class="card h-100 shadow border-0">
                                <img src="/Multimedia/ImagenesNoticias/<%# Eval("ImagenUrlCard") %>" class="card-img-top" alt="Imagen de portada" />
                                <div class="card-body p-4">
                                    <a class="badge bg-primary bg-gradient rounded-pill mb-2 text-decoration-none link-light" id="A1" runat="server" href="#!">
                                        <%# Eval("tags") %></a>
                                    <a class="text-decoration-none link-dark stretched-link" href="<%# Eval("urlSimple") %>">
                                        <h5 class="card-title mb-3"><%# Eval("titulo") %></h5>
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


                <header class="bg-light py-5">
                    <div class="container px-5">
                        <div class="row gx-5 align-items-center justify-content-center">
                            <div class="col-lg-8 col-xl-7 col-xxl-6">
                                <div class="my-5 text-center text-xl-start">
                                    <h1 class="display-5 fw-bolder mb-2">A Bootstrap 5 template for modern businesses</h1>
                                    <p class="lead fw-normal mb-4">Quickly design and customize responsive mobile-first sites with Bootstrap, the world’s most popular front-end open source toolkit!</p>
                                    <div class="d-grid gap-3 d-sm-flex justify-content-sm-center justify-content-xl-start">
                                        <a class="btn btn-primary btn-lg px-4 me-sm-3" href="#features">Get Started</a>
                                        <a class="btn btn-outline-dark btn-lg px-4" href="#!">Learn More</a>
                                    </div>
                                </div>
                            </div>
                            <div class="col-xl-5 col-xxl-6 d-none d-xl-block text-center">
                                <img class="img-fluid rounded-3 my-5" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." />
                            </div>
                        </div>
                    </div>
                </header>

            </div>
        </div>
    </section>

    <!-- Bootstrap Bundle with Popper -->
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/5.1.3/js/bootstrap.bundle.min.js"></script>
</asp:Content>
