using System;
using System.Linq;
using System.Web.UI;
using IntranetModel;

namespace IntranetWeb
{
    public partial class RegistrarNoticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
        {
            string titulo = TituloTxt.Text;
            string metaDescripcion = MetaDescripcionTxt.Text;
            string fechaPublicacionStr = FechaPublicacionInput.Text;
            string tags = TagsRadioList.SelectedValue;
            string contenidoNoticia = Request.Form["ContenidoNoticiaTxt"];

            if (string.IsNullOrWhiteSpace(contenidoNoticia))
            {
                // Mostrar mensaje de error
                ErrorMessageLabel.Text = "Debe ingresar contenido";
                ErrorMessageLabel.Visible = true;
                return;
            }

            // Validar y limpiar la entrada del usuario si es necesario

            DateTime? fechaPublicacion = null;
            if (DateTime.TryParse(fechaPublicacionStr, out DateTime parsedDate))
            {
                fechaPublicacion = parsedDate;
            }

            // Obtener el usuario actual desde la sesión
            var usuario = Session["Usuario"] as Usuarios;
            if (usuario == null)
            {
                // El usuario no está autenticado, redirigir a la página de inicio de sesión
                Response.Redirect("Login.aspx");
                return;
            }

            using (var context = new IntranetEntities())
            {
                Noticias nuevaNoticia = new Noticias
                {
                    titulo = titulo,
                    metaDescripcion = metaDescripcion,
                    fechaPublicacion = fechaPublicacion,
                    tags = tags,
                    contenidoTexto = contenidoNoticia,
                    usuarioAutor = usuario.rutUsuario, // Usar el rut del usuario autenticado
                    likes = 0 // Inicializamos los likes a 0
                };

                context.Noticias.Add(nuevaNoticia);
                context.SaveChanges();
            }

            // Redireccionar o mostrar un mensaje de éxito
            Response.Redirect("VerNoticias.aspx"); // Redirigir a una página de lista de noticias
        }
    }
}
