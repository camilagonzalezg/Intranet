using System;
using System.Web;
using System.Web.UI;

namespace IntranetWeb
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verifica si el usuario ha iniciado sesión
                if (Session["Usuario"] == null || Session["RolUsuario"] == null)
                {
                    Response.Redirect("Login.aspx");
                }

                // Verifica si el rol del usuario es "Administrador"
                string rolUsuario = Session["RolUsuario"].ToString();
                if (rolUsuario != "Administrador")
                {
                    Response.Redirect("Home.aspx");
                }
            }
        }
    }
}
