<%--<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cultura.aspx.cs" Inherits="IntranetWeb.Cultura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .nav-tabs .nav-link {
            color: #333333; /* Gris Oscuro */
            background-color: #b3e5fc; /* Celeste Claro */
        }

        .nav-tabs .nav-link.active {
            color: #ffffff; /* Blanco */
            background-color: #1a3c68; /* Azul Oscuro */
        }

        .nav-pills .nav-link {
            color: #1a3c68; /* Azul Oscuro */
            background-color: #e0f7fa; /* Celeste Muy Claro */
            margin-bottom: 10px; /* Espacio entre los botones */
        }

        .nav-pills .nav-link.active {
            color: #ffffff; /* Blanco */
            background-color: #333333; /* Gris Oscuro */
        }

        .tab-pane {
            padding: 20px;
            background-color: #ffffff; /* Blanco */
        }

        .tab-pane.active {
            background-color: #ffffff; /* Blanco */
            border: 1px solid #dee2e6;
            border-top: none;
        }

        .bg-custom {
            background-color: #b3e5fc; /* Celeste Claro */
        }
    </style>
    <!-- Page content-->
    <section class="py-5">
        <div class="container px-4">
            <!-- Inicio formulario-->
            <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
                <div class="text-center mb-5">
                    <h1 class="fw-bolder">¿Qué pasa en AFC?</h1>
                </div>
                <!-- Módulo despliegue -->
                <div class="row justify-content-center">
                    <div class="col-md-8">
                        <div class="bg-custom p-4 rounded-3">
                            <nav>
                                <div class="nav nav-tabs justify-content-center" id="nav-tab" role="tablist">
                                    <button class="nav-link active" id="nav-cumpleanos-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Cumpleaños</button>
                                    <button class="nav-link" id="nav-nacimientos-tab" data-bs-toggle="tab" data-bs-target="#nav-profile" type="button" role="tab" aria-controls="nav-profile" aria-selected="false">Nacimientos</button>
                                    <button class="nav-link" id="nav-nuevostrabajadores-tab" data-bs-toggle="tab" data-bs-target="#nav-contact" type="button" role="tab" aria-controls="nav-contact" aria-selected="false">Nuevos trabajadores</button>
                                    <button class="nav-link" id="nav-promociones-tab" data-bs-toggle="tab" data-bs-target="#nav-promociones" type="button" role="tab" aria-controls="nav-promociones" aria-selected="false">Promociones</button>
                                </div>
                            </nav>
                            <div class="tab-content mt-4" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <!--Cumpleaños-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Cumpleaños hoy</button>
                                            <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cumpleaños ayer</button>
                                            <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Cumpleaños mañana</button>
                                        </div>
                                        <div class="tab-content" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">1</div>
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">2</div>
                                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">3</div>
                                        </div>
                                    </div>
                                    <!--Fin Cumpleaños-->
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <!--Nacimientos-->
                                    <p>4</p>
                                </div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <!--Nuevos trabajadores-->
                                    <p>5</p>
                                </div>
                                <div class="tab-pane fade" id="nav-promociones" role="tabpanel" aria-labelledby="nav-promociones-tab">
                                    <!--Promociones-->
                                    <p>6</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>--%>

<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Cultura.aspx.cs" Inherits="IntranetWeb.Cultura" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        .nav-tabs .nav-link {
            color: #333333; /* Gris Oscuro */
            background-color: #b3e5fc; /* Celeste Claro */
        }

        .nav-tabs .nav-link.active {
            color: #ffffff; /* Blanco */
            background-color: #1a3c68; /* Azul Oscuro */
        }

        .nav-pills .nav-link {
            color: #1a3c68; /* Azul Oscuro */
            background-color: #e0f7fa; /* Celeste Muy Claro */
            margin-bottom: 10px; /* Espacio entre los botones */
        }

        .nav-pills .nav-link.active {
            color: #ffffff; /* Blanco */
            background-color: #333333; /* Gris Oscuro */
        }

        .tab-pane {
            padding: 20px;
            background-color: #ffffff; /* Blanco */
        }

        .tab-pane.active {
            background-color: #ffffff; /* Blanco */
            border: 1px solid #dee2e6;
            border-top: none;
        }

        .bg-custom {
            background-color: #b3e5fc; /* Celeste Claro */
        }
    </style>
    <!-- Page content-->
<section class="py-5">
    <div class="container px-4">
        <!-- Inicio formulario-->
        <div class="bg-light rounded-3 py-5 px-4 px-md-5 mb-5">
            <div class="text-center mb-5">
                <h1 class="fw-bolder">¿Qué pasa en AFC?</h1>
            </div>
            <!-- Módulo despliegue -->
            <div class="row justify-content-center">
                <div class="col-md-8">
                    <div class="bg-custom p-4 rounded-3">
                        <nav>
                            <div class="nav nav-tabs justify-content-center" id="nav-tab" role="tablist">
                                <button class="nav-link active" id="nav-cumpleanos-tab" data-bs-toggle="tab" data-bs-target="#nav-home" type="button" role="tab" aria-controls="nav-home" aria-selected="true">Cumpleaños</button>
                                <button class="nav-link" id="nav-nacimientos-tab" data-bs-toggle="tab" data-bs-target="#nav-nacimientos" type="button" role="tab" aria-controls="nav-nacimientos" aria-selected="false">Nacimientos</button>
                                <button class="nav-link" id="nav-nuevostrabajadores-tab" data-bs-toggle="tab" data-bs-target="#nav-nuevostrabajadores" type="button" role="tab" aria-controls="nav-nuevostrabajadores" aria-selected="false">Nuevos trabajadores</button>
                                <button class="nav-link" id="nav-promociones-tab" data-bs-toggle="tab" data-bs-target="#nav-promociones" type="button" role="tab" aria-controls="nav-promociones" aria-selected="false">Promociones</button>
                            </div>
                        </nav>
                        <div class="tab-content mt-4" id="nav-tabContent">
                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <!--Cumpleaños-->
                                <div class="d-flex align-items-start">
                                    <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                        <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Cumpleaños hoy</button>
                                        <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cumpleaños ayer</button>
                                        <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Cumpleaños mañana</button>
                                    </div>
                                    <div class="tab-content" id="v-pills-tabContent">
                                        <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Nombre y apellido trabajador 2<br>
                                            (y otros si hubiese)
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Nombre y apellido trabajador 2<br>
                                            (y otros si hubiese)
                                        </div>
                                        <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Nombre y apellido trabajador 2<br>
                                            (y otros si hubiese)
                                        </div>
                                    </div>
                                </div>
                                <!--Fin Cumpleaños-->
                            </div>
                            <div class="tab-pane fade" id="nav-nacimientos" role="tabpanel" aria-labelledby="nav-nacimientos-tab">
                                <!--Nacimientos-->
                                <div class="d-flex align-items-start">
                                    <div class="nav flex-column nav-pills me-3" id="c-pills-tab" role="tablist" aria-orientation="vertical">
                                        <button class="nav-link active" id="c-pills-ultimo-tab" data-bs-toggle="pill" data-bs-target="#c-pills-ultimo" type="button" role="tab" aria-controls="c-pills-ultimo" aria-selected="true">Último nacimiento</button>
                                        <button class="nav-link" id="c-pills-penultimo-tab" data-bs-toggle="pill" data-bs-target="#c-pills-penultimo" type="button" role="tab" aria-controls="c-pills-penultimo" aria-selected="false">Penúltimo nacimiento</button>
                                        <button class="nav-link" id="c-pills-antepenultimo-tab" data-bs-toggle="pill" data-bs-target="#c-pills-antepenultimo" type="button" role="tab" aria-controls="c-pills-antepenultimo" aria-selected="false">Antepenúltimo nacimiento</button>
                                    </div>
                                    <div class="tab-content" id="c-pills-tabContent">
                                        <div class="tab-pane fade show active" id="c-pills-ultimo" role="tabpanel" aria-labelledby="c-pills-ultimo-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Nombre hijo trabajador 1
                                        </div>
                                        <div class="tab-pane fade" id="c-pills-penultimo" role="tabpanel" aria-labelledby="c-pills-penultimo-tab">
                                            Nombre y apelido trabajador 2<br>
                                            Nombre hijo trabajador 2
                                        </div>
                                        <div class="tab-pane fade" id="c-pills-antepenultimo" role="tabpanel" aria-labelledby="c-pills-antepenultimo-tab">
                                            Nombre y apelido trabajador 3<br>
                                            Nombre hijo trabajador 3
                                        </div>
                                    </div>
                                </div>
                                <!--Fin Nacimientos-->
                            </div>
                            <div class="tab-pane fade" id="nav-nuevostrabajadores" role="tabpanel" aria-labelledby="nav-nuevostrabajadores-tab">
                                <!--Nuevos trabajadores-->
                                <div class="d-flex align-items-start">
                                    <div class="nav flex-column nav-pills me-3" id="i-pills-tab" role="tablist" aria-orientation="vertical">
                                        <button class="nav-link active" id="i-pills-ultimo-tab" data-bs-toggle="pill" data-bs-target="#i-pills-ultimo" type="button" role="tab" aria-controls="i-pills-ultimo" aria-selected="true">Último ingreso</button>
                                        <button class="nav-link" id="i-pills-penultimo-tab" data-bs-toggle="pill" data-bs-target="#i-pills-penultimo" type="button" role="tab" aria-controls="i-pills-penultimo" aria-selected="false">Penúltimo ingreso</button>
                                        <button class="nav-link" id="i-pills-antepenultimo-tab" data-bs-toggle="pill" data-bs-target="#i-pills-antepenultimo" type="button" role="tab" aria-controls="i-pills-antepenultimo" aria-selected="false">Antepenúltimo ingreso</button>
                                    </div>
                                    <div class="tab-content" id="i-pills-tabContent">
                                        <div class="tab-pane fade show active" id="i-pills-ultimo" role="tabpanel" aria-labelledby="i-pills-ultimo-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Fecha ingreso<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                        <div class="tab-pane fade" id="i-pills-penultimo" role="tabpanel" aria-labelledby="i-pills-penultimo-tab">
                                            Nombre y apelido trabajador 2<br>
                                            Fecha ingreso<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                        <div class="tab-pane fade" id="i-pills-antepenultimo" role="tabpanel" aria-labelledby="i-pills-antepenultimo-tab">
                                            Nombre y apelido trabajador 3<br>
                                            Fecha ingreso<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                    </div>
                                </div>
                                <!--Fin Nuevos trabajadores-->
                            </div>
                            <div class="tab-pane fade" id="nav-promociones" role="tabpanel" aria-labelledby="nav-promociones-tab">
                                <!--Promociones-->
                                <div class="d-flex align-items-start">
                                    <div class="nav flex-column nav-pills me-3" id="p-pills-tab" role="tablist" aria-orientation="vertical">
                                        <button class="nav-link active" id="p-pills-ultima-tab" data-bs-toggle="pill" data-bs-target="#p-pills-ultima" type="button" role="tab" aria-controls="p-pills-ultima" aria-selected="true">Última promoción</button>
                                        <button class="nav-link" id="p-pills-penultima-tab" data-bs-toggle="pill" data-bs-target="#p-pills-penultima" type="button" role="tab" aria-controls="p-pills-penultima" aria-selected="false">Penúltima promoción</button>
                                        <button class="nav-link" id="p-pills-antepenultima-tab" data-bs-toggle="pill" data-bs-target="#p-pills-antepenultima" type="button" role="tab" aria-controls="p-pills-antepenultima" aria-selected="false">Antepenúltima promoción</button>
                                    </div>
                                    <div class="tab-content" id="p-pills-tabContent">
                                        <div class="tab-pane fade show active" id="p-pills-ultima" role="tabpanel" aria-labelledby="p-pills-ultima-tab">
                                            Nombre y apelido trabajador 1<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                        <div class="tab-pane fade" id="p-pills-penultima" role="tabpanel" aria-labelledby="p-pills-penultima-tab">
                                            Nombre y apelido trabajador 2<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                        <div class="tab-pane fade" id="p-pills-antepenultima" role="tabpanel" aria-labelledby="p-pills-antepenultima-tab">
                                            Nombre y apelido trabajador 3<br>
                                            Área<br>
                                            Cargo
                                        </div>
                                    </div>
                                </div>
                                <!--Fin Promociones-->
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

</asp:Content>






