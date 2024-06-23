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
            padding: 2px; /* Ajuste de padding */
            background-color: #ffffff; /* Blanco */
        }

        .tab-pane.active {
            background-color: #ffffff; /* Blanco */
        }

        .bg-custom {
            background-color: #b3e5fc; /* Celeste Claro */
        }

        .birthday-list, .ingreso-list, .nacimiento-list {
            list-style-type: none; /* Sin viñetas */
            padding-left: 0;
        }

        .birthday-list li, .ingreso-list li, .nacimiento-list li {
            margin-bottom: 10px;
        }

        .birthday-container, .ingreso-container, .nacimiento-container {
            background-color: #ffffff; /* Blanco */
            padding: 2px; /* Ajuste de padding */
            border: none;
        }

        .no-message {
            color: #0000ff; /* Azul */
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 20px;
        }

        .ingreso-info, .nacimiento-info {
            margin-bottom: 10px;
        }

        .ingreso-info span, .nacimiento-info span {
            display: block;
        }

        .ingreso-info .label, .nacimiento-info .label {
            font-weight: bold;
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
                                    <button class="nav-link active" id="nav-cumpleanos-tab" data-bs-toggle="tab" data-bs-target="#nav-cumpleanos" type="button" role="tab" aria-controls="nav-cumpleanos" aria-selected="true">Cumpleaños</button>
                                    <button class="nav-link" id="nav-ingresos-tab" data-bs-toggle="tab" data-bs-target="#nav-ingresos" type="button" role="tab" aria-controls="nav-ingresos" aria-selected="false">Ingresos</button>
                                    <button class="nav-link" id="nav-nacimientos-tab" data-bs-toggle="tab" data-bs-target="#nav-nacimientos" type="button" role="tab" aria-controls="nav-nacimientos" aria-selected="false">Nacimientos</button>
                                </div>
                            </nav>
                            <div class="tab-content mt-4" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-cumpleanos" role="tabpanel" aria-labelledby="nav-cumpleanos-tab">
                                    <!--Cumpleaños-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Cumpleaños hoy</button>
                                            <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cumpleaños ayer</button>
                                            <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Cumpleaños mañana</button>
                                        </div>
                                        <div class="tab-content birthday-container" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysToday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysToday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysYesterday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysYesterday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysTomorrow" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysTomorrow" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Cumpleaños-->
                                </div>
                                <div class="tab-pane fade" id="nav-ingresos" role="tabpanel" aria-labelledby="nav-ingresos-tab">
                                    <!--Ingresos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-ingresos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo" type="button" role="tab" aria-controls="v-pills-ultimo" aria-selected="true">Último ingreso</button>
                                            <button class="nav-link" id="v-pills-penultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo" type="button" role="tab" aria-controls="v-pills-penultimo" aria-selected="false">Penúltimo ingreso</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo" type="button" role="tab" aria-controls="v-pills-antepenultimo" aria-selected="false">Antepenúltimo ingreso</button>
                                        </div>
                                        <div class="tab-content ingreso-container" id="v-pills-ingresos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo" role="tabpanel" aria-labelledby="v-pills-ultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptUltimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo" role="tabpanel" aria-labelledby="v-pills-penultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptPenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo" role="tabpanel" aria-labelledby="v-pills-antepenultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptAntepenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Ingresos-->
                                </div>
                                <div class="tab-pane fade" id="nav-nacimientos" role="tabpanel" aria-labelledby="nav-nacimientos-tab">
                                    <!--Nacimientos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-nacimientos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo-nac" type="button" role="tab" aria-controls="v-pills-ultimo-nac" aria-selected="true">Último nacimiento</button>
                                            <button class="nav-link" id="v-pills-penultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo-nac" type="button" role="tab" aria-controls="v-pills-penultimo-nac" aria-selected="false">Penúltimo nacimiento</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo-nac" type="button" role="tab" aria-controls="v-pills-antepenultimo-nac" aria-selected="false">Antepenúltimo nacimiento</button>
                                        </div>
                                        <div class="tab-content nacimiento-container" id="v-pills-nacimientos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo-nac" role="tabpanel" aria-labelledby="v-pills-ultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptUltimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo-nac" role="tabpanel" aria-labelledby="v-pills-penultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptPenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo-nac" role="tabpanel" aria-labelledby="v-pills-antepenultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptAntepenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Nacimientos-->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
</asp:Content>--%>





<%--
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
            padding: 2px; /* Ajuste de padding */
            background-color: #ffffff; /* Blanco */
        }

        .tab-pane.active {
            background-color: #ffffff; /* Blanco */
        }

        .bg-custom {
            background-color: #b3e5fc; /* Celeste Claro */
        }

        .birthday-list, .ingreso-list, .nacimiento-list, .promocion-list {
            list-style-type: none; /* Sin viñetas */
            padding-left: 0;
        }

        .birthday-list li, .ingreso-list li, .nacimiento-list li, .promocion-list li {
            margin-bottom: 10px;
        }

        .birthday-container, .ingreso-container, .nacimiento-container, .promocion-container {
            background-color: #ffffff; /* Blanco */
            padding: 2px; /* Ajuste de padding */
            border: none;
        }

        .no-message {
            color: #0000ff; /* Azul */
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 20px;
        }

        .ingreso-info, .nacimiento-info, .promocion-info {
            margin-bottom: 10px;
        }

        .ingreso-info span, .nacimiento-info span, .promocion-info span {
            display: block;
        }

        .ingreso-info .label, .nacimiento-info .label, .promocion-info .label {
            font-weight: bold;
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
                                    <button class="nav-link active" id="nav-cumpleanos-tab" data-bs-toggle="tab" data-bs-target="#nav-cumpleanos" type="button" role="tab" aria-controls="nav-cumpleanos" aria-selected="true">Cumpleaños</button>
                                    <button class="nav-link" id="nav-ingresos-tab" data-bs-toggle="tab" data-bs-target="#nav-ingresos" type="button" role="tab" aria-controls="nav-ingresos" aria-selected="false">Ingresos</button>
                                    <button class="nav-link" id="nav-nacimientos-tab" data-bs-toggle="tab" data-bs-target="#nav-nacimientos" type="button" role="tab" aria-controls="nav-nacimientos" aria-selected="false">Nacimientos</button>
                                    <button class="nav-link" id="nav-promociones-tab" data-bs-toggle="tab" data-bs-target="#nav-promociones" type="button" role="tab" aria-controls="nav-promociones" aria-selected="false">Promociones</button>
                                </div>
                            </nav>
                            <div class="tab-content mt-4" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-cumpleanos" role="tabpanel" aria-labelledby="nav-cumpleanos-tab">
                                    <!--Cumpleaños-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Cumpleaños hoy</button>
                                            <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cumpleaños ayer</button>
                                            <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Cumpleaños mañana</button>
                                        </div>
                                        <div class="tab-content birthday-container" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysToday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysToday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysYesterday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysYesterday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysTomorrow" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysTomorrow" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Cumpleaños-->
                                </div>
                                <div class="tab-pane fade" id="nav-ingresos" role="tabpanel" aria-labelledby="nav-ingresos-tab">
                                    <!--Ingresos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-ingresos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo" type="button" role="tab" aria-controls="v-pills-ultimo" aria-selected="true">Último ingreso</button>
                                            <button class="nav-link" id="v-pills-penultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo" type="button" role="tab" aria-controls="v-pills-penultimo" aria-selected="false">Penúltimo ingreso</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo" type="button" role="tab" aria-controls="v-pills-antepenultimo" aria-selected="false">Antepenúltimo ingreso</button>
                                        </div>
                                        <div class="tab-content ingreso-container" id="v-pills-ingresos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo" role="tabpanel" aria-labelledby="v-pills-ultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptUltimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo" role="tabpanel" aria-labelledby="v-pills-penultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptPenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo" role="tabpanel" aria-labelledby="v-pills-antepenultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptAntepenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Ingresos-->
                                </div>
                                <div class="tab-pane fade" id="nav-nacimientos" role="tabpanel" aria-labelledby="nav-nacimientos-tab">
                                    <!--Nacimientos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-nacimientos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo-nac" type="button" role="tab" aria-controls="v-pills-ultimo-nac" aria-selected="true">Último nacimiento</button>
                                            <button class="nav-link" id="v-pills-penultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo-nac" type="button" role="tab" aria-controls="v-pills-penultimo-nac" aria-selected="false">Penúltimo nacimiento</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo-nac" type="button" role="tab" aria-controls="v-pills-antepenultimo-nac" aria-selected="false">Antepenúltimo nacimiento</button>
                                        </div>
                                        <div class="tab-content nacimiento-container" id="v-pills-nacimientos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo-nac" role="tabpanel" aria-labelledby="v-pills-ultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptUltimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo-nac" role="tabpanel" aria-labelledby="v-pills-penultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptPenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo-nac" role="tabpanel" aria-labelledby="v-pills-antepenultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptAntepenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Nacimientos-->
                                </div>
                                <div class="tab-pane fade" id="nav-promociones" role="tabpanel" aria-labelledby="nav-promociones-tab">
                                    <!--Promociones-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-promociones-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultima-prom" type="button" role="tab" aria-controls="v-pills-ultima-prom" aria-selected="true">Última promoción</button>
                                            <button class="nav-link" id="v-pills-penultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultima-prom" type="button" role="tab" aria-controls="v-pills-penultima-prom" aria-selected="false">Penúltima promoción</button>
                                            <button class="nav-link" id="v-pills-antepenultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultima-prom" type="button" role="tab" aria-controls="v-pills-antepenultima-prom" aria-selected="false">Antepenúltima promoción</button>
                                        </div>
                                        <div class="tab-content promocion-container" id="v-pills-promociones-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultima-prom" role="tabpanel" aria-labelledby="v-pills-ultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptUltimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultima-prom" role="tabpanel" aria-labelledby="v-pills-penultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptPenultimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultima-prom" role="tabpanel" aria-labelledby="v-pills-antepenultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptAntepenultimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
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
            padding: 2px; /* Ajuste de padding */
            background-color: #ffffff; /* Blanco */
        }

        .tab-pane.active {
            background-color: #ffffff; /* Blanco */
        }

        .bg-custom {
            background-color: #b3e5fc; /* Celeste Claro */
        }

        .birthday-list, .ingreso-list, .nacimiento-list, .promocion-list {
            list-style-type: none; /* Sin viñetas */
            padding-left: 0;
        }

        .birthday-list li, .ingreso-list li, .nacimiento-list li, .promocion-list li {
            margin-bottom: 10px;
        }

        .birthday-container, .ingreso-container, .nacimiento-container, .promocion-container {
            background-color: #ffffff; /* Blanco */
            padding: 2px; /* Ajuste de padding */
            border: none;
        }

        .no-message {
            color: #0000ff; /* Azul */
            font-weight: bold;
            text-align: center;
            display: block;
            margin-top: 20px;
        }

        .ingreso-info, .nacimiento-info, .promocion-info {
            margin-bottom: 10px;
        }

        .ingreso-info span, .nacimiento-info span, .promocion-info span {
            display: block;
        }

        .ingreso-info .label, .nacimiento-info .label, .promocion-info .label {
            font-weight: bold;
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
                                    <button class="nav-link active" id="nav-cumpleanos-tab" data-bs-toggle="tab" data-bs-target="#nav-cumpleanos" type="button" role="tab" aria-controls="nav-cumpleanos" aria-selected="true">Cumpleaños</button>
                                    <button class="nav-link" id="nav-ingresos-tab" data-bs-toggle="tab" data-bs-target="#nav-ingresos" type="button" role="tab" aria-controls="nav-ingresos" aria-selected="false">Ingresos</button>
                                    <button class="nav-link" id="nav-nacimientos-tab" data-bs-toggle="tab" data-bs-target="#nav-nacimientos" type="button" role="tab" aria-controls="nav-nacimientos" aria-selected="false">Nacimientos</button>
                                    <button class="nav-link" id="nav-promociones-tab" data-bs-toggle="tab" data-bs-target="#nav-promociones" type="button" role="tab" aria-controls="nav-promociones" aria-selected="false">Promociones</button>
                                </div>
                            </nav>
                            <div class="tab-content mt-4" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-cumpleanos" role="tabpanel" aria-labelledby="nav-cumpleanos-tab">
                                    <!--Cumpleaños-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-home-tab" data-bs-toggle="pill" data-bs-target="#v-pills-home" type="button" role="tab" aria-controls="v-pills-home" aria-selected="true">Cumpleaños hoy</button>
                                            <button class="nav-link" id="v-pills-profile-tab" data-bs-toggle="pill" data-bs-target="#v-pills-profile" type="button" role="tab" aria-controls="v-pills-profile" aria-selected="false">Cumpleaños ayer</button>
                                            <button class="nav-link" id="v-pills-messages-tab" data-bs-toggle="pill" data-bs-target="#v-pills-messages" type="button" role="tab" aria-controls="v-pills-messages" aria-selected="false">Cumpleaños mañana</button>
                                        </div>
                                        <div class="tab-content birthday-container" id="v-pills-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysToday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysToday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysYesterday" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysYesterday" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                                <ul class="birthday-list">
                                                    <asp:Repeater ID="rptBirthdaysTomorrow" runat="server">
                                                        <ItemTemplate>
                                                            <li>
                                                                <%# Eval("nombre") %> <%# Eval("apellido") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoBirthdaysTomorrow" runat="server" CssClass="no-message" Text="No hay cumpleaños para este día :( , ¡no dejes de ver los demás!" Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Cumpleaños-->
                                </div>
                                <div class="tab-pane fade" id="nav-ingresos" role="tabpanel" aria-labelledby="nav-ingresos-tab">
                                    <!--Ingresos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-ingresos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo" type="button" role="tab" aria-controls="v-pills-ultimo" aria-selected="true">Último ingreso</button>
                                            <button class="nav-link" id="v-pills-penultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo" type="button" role="tab" aria-controls="v-pills-penultimo" aria-selected="false">Penúltimo ingreso</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo" type="button" role="tab" aria-controls="v-pills-antepenultimo" aria-selected="false">Antepenúltimo ingreso</button>
                                        </div>
                                        <div class="tab-content ingreso-container" id="v-pills-ingresos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo" role="tabpanel" aria-labelledby="v-pills-ultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptUltimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo" role="tabpanel" aria-labelledby="v-pills-penultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptPenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo" role="tabpanel" aria-labelledby="v-pills-antepenultimo-tab">
                                                <ul class="ingreso-list">
                                                    <asp:Repeater ID="rptAntepenultimoIngreso" runat="server">
                                                        <ItemTemplate>
                                                            <li class="ingreso-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de ingreso:</span> <%# Eval("fechaIngreso", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoIngreso" runat="server" CssClass="no-message" Text="No hay ingresos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Ingresos-->
                                </div>
                                <div class="tab-pane fade" id="nav-nacimientos" role="tabpanel" aria-labelledby="nav-nacimientos-tab">
                                    <!--Nacimientos-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-nacimientos-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultimo-nac" type="button" role="tab" aria-controls="v-pills-ultimo-nac" aria-selected="true">Último nacimiento</button>
                                            <button class="nav-link" id="v-pills-penultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultimo-nac" type="button" role="tab" aria-controls="v-pills-penultimo-nac" aria-selected="false">Penúltimo nacimiento</button>
                                            <button class="nav-link" id="v-pills-antepenultimo-nac-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultimo-nac" type="button" role="tab" aria-controls="v-pills-antepenultimo-nac" aria-selected="false">Antepenúltimo nacimiento</button>
                                        </div>
                                        <div class="tab-content nacimiento-container" id="v-pills-nacimientos-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultimo-nac" role="tabpanel" aria-labelledby="v-pills-ultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptUltimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultimo-nac" role="tabpanel" aria-labelledby="v-pills-penultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptPenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultimo-nac" role="tabpanel" aria-labelledby="v-pills-antepenultimo-nac-tab">
                                                <ul class="nacimiento-list">
                                                    <asp:Repeater ID="rptAntepenultimoNacimiento" runat="server">
                                                        <ItemTemplate>
                                                            <li class="nacimiento-info">
                                                                <span class="label">Colaborador:</span> <%# Eval("Colaborador") %>
                                                                <span class="label">Hijo:</span> <%# Eval("NombreHijo") %>
                                                                <span class="label">Fecha de nacimiento:</span> <%# Eval("FechaNacimiento", "{0:dd/MM/yyyy}") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimoNacimiento" runat="server" CssClass="no-message" Text="No hay nacimientos recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                        </div>
                                    </div>
                                    <!--Fin Nacimientos-->
                                </div>
                                <div class="tab-pane fade" id="nav-promociones" role="tabpanel" aria-labelledby="nav-promociones-tab">
                                    <!--Promociones-->
                                    <div class="d-flex align-items-start">
                                        <div class="nav flex-column nav-pills me-3" id="v-pills-promociones-tab" role="tablist" aria-orientation="vertical">
                                            <button class="nav-link active" id="v-pills-ultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-ultima-prom" type="button" role="tab" aria-controls="v-pills-ultima-prom" aria-selected="true">Última promoción</button>
                                            <button class="nav-link" id="v-pills-penultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-penultima-prom" type="button" role="tab" aria-controls="v-pills-penultima-prom" aria-selected="false">Penúltima promoción</button>
                                            <button class="nav-link" id="v-pills-antepenultima-prom-tab" data-bs-toggle="pill" data-bs-target="#v-pills-antepenultima-prom" type="button" role="tab" aria-controls="v-pills-antepenultima-prom" aria-selected="false">Antepenúltima promoción</button>
                                        </div>
                                        <div class="tab-content promocion-container" id="v-pills-promociones-tabContent">
                                            <div class="tab-pane fade show active" id="v-pills-ultima-prom" role="tabpanel" aria-labelledby="v-pills-ultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptUltimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoUltimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-penultima-prom" role="tabpanel" aria-labelledby="v-pills-penultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptPenultimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoPenultimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
                                            </div>
                                            <div class="tab-pane fade" id="v-pills-antepenultima-prom" role="tabpanel" aria-labelledby="v-pills-antepenultima-prom-tab">
                                                <ul class="promocion-list">
                                                    <asp:Repeater ID="rptAntepenultimaPromocion" runat="server">
                                                        <ItemTemplate>
                                                            <li class="promocion-info">
                                                                <span><%# Eval("nombre") %> <%# Eval("apellido") %></span>
                                                                <span class="label">Fecha de promoción:</span> <%# Eval("fechaPromocion", "{0:dd/MM/yyyy}") %>
                                                                <span class="label">Cargo:</span> <%# Eval("cargo") %>
                                                                <span class="label">Gerencia:</span> <%# Eval("gerencia") %>
                                                                <span class="label">Subgerencia:</span> <%# Eval("subgerencia") %>
                                                                <span class="label">Departamento:</span> <%# Eval("departamento") %>
                                                                <span class="label">Ubicación:</span> <%# Eval("ubicacion") %>
                                                                <span class="label">Jefe:</span> <%# Eval("jefe") %>
                                                            </li>
                                                        </ItemTemplate>
                                                    </asp:Repeater>
                                                </ul>
                                                <asp:Label ID="lblNoAntepenultimaPromocion" runat="server" CssClass="no-message" Text="No hay promociones recientes para mostrar." Visible="false"></asp:Label>
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


