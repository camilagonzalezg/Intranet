using System;
using System.Linq;
using IntranetModel;

namespace IntranetWeb
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {
            string rut = form2Example17.Text; // Usa .Text en lugar de .Value
            string contraseña = form2Example27.Text; // Usa .Text en lugar de .Value

            using (var context = new IntranetEntities())
            {
                var usuario = context.Usuarios.Include("RolesUsuario").FirstOrDefault(u => u.rutUsuario == rut && u.contraseña == contraseña);

                if (usuario != null)
                {
                    // Inicio de sesión exitoso
                    Session["Usuario"] = usuario;
                    Session["RolUsuario"] = usuario.RolesUsuario.nombre;

                    switch (usuario.RolesUsuario.nombre)
                    {
                        case "Administrador":
                            Response.Redirect("Default.aspx"); // Redirigir a la página principal
                            break;
                        case "Colaborador":
                        case "Gerencia":
                        case "RRHH":
                        default:
                            Response.Redirect("Home.aspx"); // Redirigir a Home.aspx
                            break;
                    }
                }
                else
                {
                    // Inicio de sesión fallido
                    lblError.Text = "Rut o contraseña incorrectos";
                    lblError.Visible = true;
                }
            }
        }
    }
}
