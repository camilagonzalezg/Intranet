<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="NuestraEmpresa.aspx.cs" Inherits="IntranetWeb.NuestraEmpresa" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <style>
        #sidebar {
            position: -webkit-sticky; /* For Safari */
            position: sticky;
            top: 0;
            height: 100vh;
            padding-top: 1rem;
            background-color: #f8f9fa;
        }

        .dropdown-toggle {
            outline: 0;
        }

        .nav-flush .nav-link {
            border-radius: 0;
        }

        .btn-toggle {
            display: inline-flex;
            align-items: center;
            padding: .25rem .5rem;
            font-weight: 600;
            color: rgba(0, 0, 0, .65);
            background-color: transparent;
            border: 0;
        }

        .btn-toggle:hover,
        .btn-toggle:focus {
            color: rgba(0, 0, 0, .85);
            background-color: #d2f4ea;
        }

        .btn-toggle::before {
            width: 1.25em;
            line-height: 0;
            content: url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' width='16' height='16' viewBox='0 0 16 16'%3e%3cpath fill='none' stroke='rgba%280,0,0,.5%29' stroke-linecap='round' stroke-linejoin='round' stroke-width='2' d='M5 14l6-6-6-6'/%3e%3c/svg%3e");
            transition: transform .35s ease;
            transform-origin: .5em 50%;
        }

        .btn-toggle[aria-expanded="true"] {
            color: rgba(0, 0, 0, .85);
        }

        .btn-toggle[aria-expanded="true"]::before {
            transform: rotate(90deg);
        }

        .btn-toggle-nav a {
            display: inline-flex;
            padding: .1875rem .5rem;
            margin-top: .125rem;
            margin-left: 1.25rem;
            text-decoration: none;
        }

        .btn-toggle-nav a:hover,
        .btn-toggle-nav a:focus {
            background-color: #d2f4ea;
        }

        .scrollarea {
            overflow-y: auto;
        }

        .fw-semibold {
            font-weight: 600;
        }

        .lh-tight {
            line-height: 1.25;
        }
    </style>

    <section class="py-1">
        <div class="container px-1 my-0">
            <div class="container-fluid">
                <div class="row">
                    <!-- Sidebar -->
                    <nav id="sidebar" class="col-md-3 col-lg-2 d-md-block sidebar">
                        <div class="position-sticky pt-3">
                            <ul class="list-unstyled ps-0">
                                <li class="mb-1">
                                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="dropdown" data-bs-target="#empresa-collapse" aria-expanded="true">
                                        Nuestra empresa
                                    </button>
                                    <div class="collapse show" id="empresa-collapse">
                                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                            <li><a href="#" class="link-dark rounded">Misión y Visión</a></li>
                                            <li><a href="#" class="link-dark rounded">Administración</a></li>
                                            <li><a href="#" class="link-dark rounded">Modelo de competencias</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="mb-1">
                                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="dropdown" data-bs-target="#gerencias-collapse" aria-expanded="false">
                                        Gerencias
                                    </button>
                                    <div class="collapse" id="gerencias-collapse">
                                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                            <li><a href="#" class="link-dark rounded">Gerencia General</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Administración y Finanzas</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Planificación Estratégica y Experiencia de Clientes</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Operaciones y Servicios</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Tecnología</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Inversiones</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Riesgo y Cumplimiento</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Proyecto Renovación Tecnológica</a></li>
                                            <li><a href="#" class="link-dark rounded">Gerencia de Personas</a></li>
                                            <li><a href="#" class="link-dark rounded">Fiscalía</a></li>
                                            <li><a href="#" class="link-dark rounded">Auditoría</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="mb-1">
                                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="dropdown" data-bs-target="#beneficios-collapse" aria-expanded="false">
                                        Beneficios
                                    </button>
                                    <div class="collapse" id="beneficios-collapse">
                                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                            <li><a href="#" class="link-dark rounded">Beneficios fijos</a></li>
                                            <li><a href="#" class="link-dark rounded">Convenios</a></li>
                                            <li><a href="#" class="link-dark rounded">Socios</a></li>
                                        </ul>
                                    </div>
                                </li>
                                <li class="mb-1">
                                    <button class="btn btn-toggle align-items-center rounded collapsed" data-bs-toggle="dropdown" data-bs-target="#emergencias-collapse" aria-expanded="false">
                                        Emergencias
                                    </button>
                                    <div class="collapse" id="emergencias-collapse">
                                        <ul class="btn-toggle-nav list-unstyled fw-normal pb-1 small">
                                            <li><a href="#" class="link-dark rounded">¿Qué hacer en caso de emergencias?</a></li>
                                        </ul>
                                    </div>
                                </li>
                            </ul>
                        </div>
                    </nav>

                    <!-- Main Content -->
                    <main class="col-md-9 ms-sm-auto col-lg-10 px-md-4">
                        <div class="d-flex flex-column flex-shrink-0">
                            <!-- Header-->
                            <header class="py-5">
                                <div class="container px-5">
                                    <div class="row justify-content-center">
                                        <div class="col-lg-8 col-xxl-6">
                                            <div class="text-center my-5">
                                                <h1 class="fw-bolder mb-3">Our mission is to make building websites easier for everyone.</h1>
                                                <p class="lead fw-normal text-muted mb-4">Start Bootstrap was built on the idea that quality, functional website templates and themes should be available to everyone. Use our open source, free products, or support us by purchasing one of our premium products or services.</p>
                                                <a class="btn btn-primary btn-lg" href="#scroll-target">Read our story</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </header>
                            <!-- About section one-->
                            <section class="py-5 bg-light" id="scroll-target">
                                <div class="container px-5 my-5">
                                    <div class="row gx-5 align-items-center">
                                        <div class="col-lg-6">
                                            <img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                                        <div class="col-lg-6">
                                            <h2 class="fw-bolder">Our founding</h2>
                                            <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero molestiae et fugit cupiditate, quibusdam expedita, mayores eaque quisquam.</p>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- About section two-->
                            <section class="py-5">
                                <div class="container px-5 my-5">
                                    <div class="row gx-5 align-items-center">
                                        <div class="col-lg-6 order-first order-lg-last">
                                            <img class="img-fluid rounded mb-5 mb-lg-0" src="https://dummyimage.com/600x400/343a40/6c757d" alt="..." /></div>
                                        <div class="col-lg-6">
                                            <h2 class="fw-bolder">Growth &amp; beyond</h2>
                                            <p class="lead fw-normal text-muted mb-0">Lorem ipsum dolor sit amet consectetur adipisicing elit. Iusto est, ut esse a labore aliquam beatae expedita. Blanditiis impedit numquam libero molestiae et fugit cupiditate, quibusdam expedita, mayores eaque quisquam.</p>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <!-- Team members section-->
                            <section class="py-5 bg-light">
                                <div class="container px-5 my-5">
                                    <div class="text-center">
                                        <h2 class="fw-bolder">Our team</h2>
                                        <p class="lead fw-normal text-muted mb-5">Dedicated to quality and your success</p>
                                    </div>
                                    <div class="row gx-5 row-cols-1 row-cols-sm-2 row-cols-xl-4 justify-content-center">
                                        <div class="col mb-5 mb-5 mb-xl-0">
                                            <div class="text-center">
                                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                                <h5 class="fw-bolder">Ibbie Eckart</h5>
                                                <div class="fst-italic text-muted">Founder &amp; CEO</div>
                                            </div>
                                        </div>
                                        <div class="col mb-5 mb-5 mb-xl-0">
                                            <div class="text-center">
                                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                                <h5 class="fw-bolder">Arden Vasek</h5>
                                                <div class="fst-italic text-muted">CFO</div>
                                            </div>
                                        </div>
                                        <div class="col mb-5 mb-5 mb-sm-0">
                                            <div class="text-center">
                                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                                <h5 class="fw-bolder">Toribio Nerthus</h5>
                                                <div class="fst-italic text-muted">Operations Manager</div>
                                            </div>
                                        </div>
                                        <div class="col mb-5">
                                            <div class="text-center">
                                                <img class="img-fluid rounded-circle mb-4 px-4" src="https://dummyimage.com/150x150/ced4da/6c757d" alt="..." />
                                                <h5 class="fw-bolder">Malvina Cilla</h5>
                                                <div class="fst-italic text-muted">CTO</div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </section>
                        </div>
                    </main>
                </div>
            </div>

        </div>
    </section>

    <!-- Bootstrap core JS-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <script>
        document.addEventListener('DOMContentLoaded', function () {
            var toggleButtons = document.querySelectorAll('.btn-toggle');
            toggleButtons.forEach(function (button) {
                button.addEventListener('click', function () {
                    var collapseTarget = document.querySelector(button.getAttribute('data-bs-target'));
                    if (collapseTarget) {
                        var bsCollapse = new bootstrap.Collapse(collapseTarget, {
                            toggle: false
                        });
                        if (collapseTarget.classList.contains('show')) {
                            bsCollapse.hide();
                        } else {
                            bsCollapse.show();
                        }
                    }
                });
            });
        });
    </script>
</asp:Content>





