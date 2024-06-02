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
            //navMenu.InnerHtml = @"
            //    <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
            //    <li class='nav-item'><a class='nav-link' href='VerUsuarios.aspx'>Usuarios</a></li>
            //    <li class='nav-item'><a class='nav-link' href='VerNoticias.aspx'>Noticias</a></li>
            //    <li class='nav-item'><a class='nav-link' href='VerPaginas.aspx'>Páginas</a></li>
            //    <li class='nav-item'><a class='nav-link' href='VerCorrespondencia.aspx'>Correspondencia</a></li>
            //    <li class='nav-item'><a class='nav-link' href='VerCultura.aspx'>Cultura</a></li>
            //    <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";

            navMenu.InnerHtml = @"
        <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
        <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownUsuarios' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                Usuarios
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownUsuarios'>
                <li><a class='dropdown-item' href='RegistrarUsuarios.aspx'>Registrar Usuarios</a></li>
                <li><a class='dropdown-item' href='VerUsuarios.aspx'>Ver usuarios</a></li>
            </ul>
        </li>
        <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownNoticias' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                Noticias
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownNoticias'>
                <li><a class='dropdown-item' href='#'>Registrar Noticias</a></li>
                <li><a class='dropdown-item' href='#'>Ver noticias</a></li>
            </ul>
        </li>
        <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownPaginas' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                Páginas
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownPaginas'>
                <li><a class='dropdown-item' href='#'>Registrar Páginas</a></li>
                <li><a class='dropdown-item' href='#'>Ver páginas</a></li>
            </ul>
        </li>
        <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownCorrespondencia' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                Correspondencia
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownCorrespondencia'>
                <li><a class='dropdown-item' href='#'>Registrar Correspondencia</a></li>
                <li><a class='dropdown-item' href='#'>Ver correspondencia</a></li>
            </ul>
        </li>
        <li class='nav-item dropdown'>
            <a class='nav-link dropdown-toggle' href='#' id='navbarDropdownCultura' role='button' data-bs-toggle='dropdown' aria-expanded='false'>
                Cultura
            </a>
            <ul class='dropdown-menu' aria-labelledby='navbarDropdownCultura'>
                <li><a class='dropdown-item' href='#'>Registrar datos Cultura</a></li>
                <li><a class='dropdown-item' href='#'>Ver datos Cultura</a></li>
            </ul>
        </li>
        <li class='nav-item'><a class='nav-link' href='#' id='signOutLink' runat='server' OnServerClick='signOutLink_ServerClick'>Cerrar Sesión</a></li>
    ";
        }

        private void SetMenuColaborador()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='QuePasaEnAFC.aspx'>¿Qué pasa en AFC?</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuGerencia()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='VerCorrespondencia.aspx'>Correspondencia</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuRRHH()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='CargarUsuarios.aspx'>Cargar usuarios</a></li>
                <li class='nav-item'><a class='nav-link' href='#' onclick='logout()'><i class='fa-solid fa-right-from-bracket'></i></a></li>";
        }

        private void SetMenuDefault()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='Login.aspx'>Login</a></li>";
        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            // Terminar la sesión y redirigir al login
            Session.Abandon();
            Response.Redirect("Login.aspx");
        }
    }
}