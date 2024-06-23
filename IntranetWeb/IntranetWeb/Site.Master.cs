using System;
using System.Web.UI;

namespace IntranetWeb
{
    public partial class Site : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string rolUsuario = Session["RolUsuario"] as string;

                if (!string.IsNullOrEmpty(rolUsuario))
                {
                    ConfigureMenu(rolUsuario);
                }
            }

            AddDropdownActivationScript(); // Asegúrate de que se agregue el script para activar los dropdowns
        }

        private void ConfigureMenu(string rol)
        {
            switch (rol)
            {
                case "Administrador":
                    SetMenuAdministrador();
                    break;
                case "Colaborador":
                    SetMenuColaborador();
                    break;
                case "Gerencia":
                    SetMenuGerencia();
                    break;
                case "RRHH":
                    SetMenuRRHH();
                    break;
                default:
                    SetMenuDefault();
                    break;
            }
        }

        private void SetMenuAdministrador()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='/Default.aspx'>Home</a></li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownUsuarios' role='button' data-bs-toggle='dropdown' aria-expanded='false' onclick='activarDropdownList()'>Usuarios</a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdownUsuarios'>
                        <li><a class='dropdown-item' href='/RegistrarUsuario.aspx'>Registrar Usuario</a></li>
                        <li><a class='dropdown-item' href='/VerUsuarios.aspx'>Ver usuarios</a></li>
                    </ul>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownNoticias' role='button' data-bs-toggle='dropdown' aria-expanded='false'>Noticias</a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdownNoticias'>
                        <li><a class='dropdown-item' href='/RegistrarNoticia.aspx'>Registrar Noticias</a></li>
                        <li><a class='dropdown-item' href='/VerNoticias.aspx'>Ver noticias</a></li>
                    </ul>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPaginas' role='button' data-bs-toggle='dropdown' aria-expanded='false'>Páginas</a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdownPaginas'>
                        <li><a class='dropdown-item' href='#'>Registrar Páginas</a></li>
                        <li><a class='dropdown-item' href='#'>Ver páginas</a></li>
                    </ul>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownCorrespondencia' role='button' data-bs-toggle='dropdown' aria-expanded='false'>Correspondencia</a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdownCorrespondencia'>
                        <li><a class='dropdown-item' href='/RegistrarCorrespondencia.aspx'>Registrar Correspondencia</a></li>
                        <li><a class='dropdown-item' href='/VerCorrespondencias.aspx'>Ver correspondencia</a></li>
                    </ul>
                </li>
                <li class='nav-item dropdown'>
                    <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownCultura' role='button' data-bs-toggle='dropdown' aria-expanded='false'>Cultura</a>
                    <ul class='dropdown-menu' aria-labelledby='navbarDropdownCultura'>
                        <li><a class='dropdown-item' href='/RegistrarNacimiento.aspx'>Registrar Nacimiento</a></li>
                        <li><a class='dropdown-item' href='/RegistrarPromocion.aspx'>Registrar Promoción</a></li>
                        <li><a class='dropdown-item' href='/Cultura.aspx'>Ver datos Cultura</a></li>
                    </ul>
                </li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuColaborador()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='/Home.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='/NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='/Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='/Cultura.aspx'>¿Qué pasa en AFC?</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuGerencia()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='/Home.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='/NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='/Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='/Cultura.aspx'>¿Qué pasa en AFC?</a></li>
                <li class='nav-item'><a class='nav-link' href='/VerCorrespondencia.aspx'>Correspondencia</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuRRHH()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='/Home.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='/CargarUsuarios.aspx'>Cargar usuarios</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuDefault()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='/Home.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='/Login.aspx'><i class='fa-solid fa-user'></i> Login</a></li>";
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("/Login.aspx");
        }

        private void AddDropdownActivationScript()
        {
            string script = @"
                <script type='text/javascript'>
                    function activarDropdownList() {
                        var dropdownElements = document.querySelectorAll('.dropdown-toggle');
                        dropdownElements.forEach(function(element) {
                            var dropdown = new bootstrap.Dropdown(element);
                        });
                    }
                </script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "DropdownScript", script);
        }
    }
}
