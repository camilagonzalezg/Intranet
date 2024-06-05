using System;
using System.Linq;
using System.Web.UI;
using IntranetModel;
using Ganss.Xss;

namespace IntranetWeb
{
    public partial class RegistrarPagina : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarPaginaBtn_Click(object sender, EventArgs e)
        {
            string titulo = TituloTxt.Text;
            string metaDescripcion = MetaDescripcionTxt.Text;
            string fechaPublicacionStr = FechaPublicacionInput.Text;
            string tags = TagsRadioList.SelectedValue;
            string contenidoPagina = ContenidoPaginaTxt.Text;

            if (string.IsNullOrWhiteSpace(contenidoPagina))
            {
                // Mostrar mensaje de error
                ErrorMessageLabel.Text = "Debe ingresar contenido";
                ErrorMessageLabel.Visible = true;
                return;
            }

            // Sanitizar el contenido HTML
            var sanitizer = new HtmlSanitizer();
            string sanitizedContent = sanitizer.Sanitize(contenidoPagina);

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
                Paginas nuevaPagina = new Paginas
                {
                    titulo = titulo,
                    metaDescripcion = metaDescripcion,
                    fechaPublicacion = fechaPublicacion,
                    tags = tags,
                    contenidoTexto = sanitizedContent,
                    usuarioAutor = usuario.rutUsuario // Usar el rut del usuario autenticado
                };

                context.Paginas.Add(nuevaPagina);
                context.SaveChanges();
            }

            // Redireccionar o mostrar un mensaje de éxito
            Response.Redirect("VerPaginas.aspx"); // Redirigir a una página de lista de páginas
        }
    }
}
