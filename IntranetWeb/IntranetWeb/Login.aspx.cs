using System;
using System.Linq;
using IntranetModel;
using System.Security.Cryptography;

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
                var usuario = context.Usuarios.Include("RolesUsuario").FirstOrDefault(u => u.rutUsuario == rut);

                if (usuario != null && !string.IsNullOrEmpty(usuario.salt) && !string.IsNullOrEmpty(usuario.contraseña))
                {
                    if (VerificarUsuario(contraseña, usuario.contraseña, usuario.salt))
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
                        // Contraseña incorrecta
                        lblError.Text = "Rut o contraseña incorrectos";
                        lblError.Visible = true;
                    }
                }
                else
                {
                    // Usuario no encontrado o campos nulos
                    lblError.Text = "Rut o contraseña incorrectos";
                    lblError.Visible = true;
                }
            }
        }

        // Método de verificación de contraseña
        private bool VerificarUsuario(string password, string hashedPassword, string saltBase64)
        {
            if (string.IsNullOrEmpty(saltBase64) || string.IsNullOrEmpty(hashedPassword))
                return false;

            byte[] salt = Convert.FromBase64String(saltBase64);
            var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(256 / 8);
            return Convert.ToBase64String(hash) == hashedPassword;
        }
    }
}
