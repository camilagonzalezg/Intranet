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
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='VerUsuarios.aspx'>Usuarios</a></li>
                <li class='nav-item'><a class='nav-link' href='VerNoticias.aspx'>Noticias</a></li>
                <li class='nav-item'><a class='nav-link' href='VerPaginas.aspx'>Páginas</a></li>
                <li class='nav-item'><a class='nav-link' href='VerCorrespondencia.aspx'>Correspondencia</a></li>
                <li class='nav-item'><a class='nav-link' href='VerCultura.aspx'>Cultura</a></li>";
        }

        private void SetMenuColaborador()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='QuePasaEnAFC.aspx'>¿Qué pasa en AFC?</a></li>";
        }

        private void SetMenuGerencia()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='NuestraEmpresa.aspx'>Nuestra empresa</a></li>
                <li class='nav-item'><a class='nav-link' href='Novedades.aspx'>Novedades</a></li>
                <li class='nav-item'><a class='nav-link' href='VerCorrespondencia.aspx'>Correspondencia</a></li>";
        }

        private void SetMenuRRHH()
        {
            navMenu.InnerHtml = @"
                <li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>
                <li class='nav-item'><a class='nav-link' href='CargarUsuarios.aspx'>Cargar usuarios</a></li>";
        }

        private void SetMenuDefault()
        {
            navMenu.InnerHtml = "<li class='nav-item'><a class='nav-link' href='Default.aspx'>Home</a></li>";
        }
    }
}