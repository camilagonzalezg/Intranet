//using System;
//using System.Linq;
//using System.Text.RegularExpressions;
//using System.Web.UI;
//using IntranetModel;
//using IntranetModel.DAL;
//using Ganss.Xss;

//namespace IntranetWeb
//{
//    public partial class RegistrarNoticia : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
//        {
//            string titulo = TituloTxt.Text;
//            string metaDescripcion = MetaDescripcionTxt.Text;
//            string fechaPublicacionStr = FechaPublicacionInput.Text;
//            string tags = TagsRadioList.SelectedValue;
//            string contenidoNoticia = ContenidoNoticiaTxt.Text;

//            if (string.IsNullOrWhiteSpace(contenidoNoticia))
//            {
//                // Mostrar mensaje de error
//                ErrorMessageLabel.Text = "Debe ingresar contenido";
//                ErrorMessageLabel.Visible = true;
//                return;
//            }

//            // Sanitizar el contenido HTML
//            var sanitizer = new HtmlSanitizer();
//            string sanitizedContent = sanitizer.Sanitize(contenidoNoticia);

//            DateTime? fechaPublicacion = null;
//            if (DateTime.TryParse(fechaPublicacionStr, out DateTime parsedDate))
//            {
//                fechaPublicacion = parsedDate;
//            }

//            // Obtener el usuario actual desde la sesión
//            var usuario = Session["Usuario"] as Usuarios;
//            if (usuario == null)
//            {
//                // El usuario no está autenticado, redirigir a la página de inicio de sesión
//                Response.Redirect("Login.aspx");
//                return;
//            }

//            // Generar URL simple a partir del título
//            string urlSimple = GenerateUrlSimple(titulo);

//            Noticias nuevaNoticia = new Noticias
//            {
//                titulo = titulo,
//                metaDescripcion = metaDescripcion,
//                fechaPublicacion = fechaPublicacion,
//                tags = tags,
//                contenidoTexto = sanitizedContent,
//                usuarioAutor = usuario.rutUsuario, // Usar el rut del usuario autenticado
//                likes = 0, // Inicializamos los likes a 0
//                urlSimple = urlSimple
//            };

//            NoticiasDAL noticiasDAL = new NoticiasDAL();
//            noticiasDAL.Add(nuevaNoticia);

//            // Redireccionar o mostrar un mensaje de éxito
//            Response.Redirect("VerNoticias.aspx"); // Redirigir a una página de lista de noticias
//        }

//        private string GenerateUrlSimple(string titulo)
//        {
//            // Convertir a minúsculas
//            string urlSimple = titulo.ToLowerInvariant();

//            // Reemplazar caracteres especiales y espacios con guiones
//            urlSimple = Regex.Replace(urlSimple, @"[^a-z0-9\s-]", ""); // Eliminar caracteres especiales
//            urlSimple = Regex.Replace(urlSimple, @"\s+", " ").Trim(); // Reemplazar múltiples espacios con uno solo
//            urlSimple = Regex.Replace(urlSimple, @"\s", "-"); // Reemplazar espacios con guiones

//            // Añadir prefijo "noticias/"
//            urlSimple = "noticias/" + urlSimple;

//            return urlSimple;
//        }
//    }
//}

using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using IntranetModel;
using IntranetModel.DAL;
using Ganss.Xss;

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
            string contenidoNoticia = ContenidoNoticiaTxt.Text;

            if (string.IsNullOrWhiteSpace(contenidoNoticia))
            {
                // Mostrar mensaje de error
                ErrorMessageLabel.Text = "Debe ingresar contenido";
                ErrorMessageLabel.Visible = true;
                return;
            }

            // Sanitizar el contenido HTML
            var sanitizer = new HtmlSanitizer();
            string sanitizedContent = sanitizer.Sanitize(contenidoNoticia);

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

            // Generar URL simple a partir del título
            string urlSimple = GenerateUrlSimple(titulo);

            Noticias nuevaNoticia = new Noticias
            {
                titulo = titulo,
                metaDescripcion = metaDescripcion,
                fechaPublicacion = fechaPublicacion,
                tags = tags,
                contenidoTexto = sanitizedContent,
                usuarioAutor = usuario.rutUsuario, // Usar el rut del usuario autenticado
                likes = 0, // Inicializamos los likes a 0
                urlSimple = urlSimple
            };

            NoticiasDAL noticiasDAL = new NoticiasDAL();
            noticiasDAL.Add(nuevaNoticia);

            // Manejar la subida de imágenes
            string basePath = Server.MapPath("~/Multimedia/ImagenesNoticias/");
            string relativePath = $"{DateTime.Now.Year}/{DateTime.Now.Month}/";
            string fullPath = Path.Combine(basePath, relativePath);

            // Crear la carpeta si no existe
            if (!Directory.Exists(fullPath))
            {
                Directory.CreateDirectory(fullPath);
            }

            // Guardar la imagen de portada slider
            if (ImagenPortadaSlider.HasFile)
            {
                string fileName = Path.GetFileName(ImagenPortadaSlider.FileName);
                string filePath = Path.Combine(fullPath, fileName);
                ImagenPortadaSlider.SaveAs(filePath);

                GuardarArchivoMultimedia(usuario.rutUsuario, "Imagen", Path.Combine(relativePath, fileName));
            }

            // Guardar la imagen de portada card
            if (ImagenPortadaCard.HasFile)
            {
                string fileName = Path.GetFileName(ImagenPortadaCard.FileName);
                string filePath = Path.Combine(fullPath, fileName);
                ImagenPortadaCard.SaveAs(filePath);

                GuardarArchivoMultimedia(usuario.rutUsuario, "Imagen", Path.Combine(relativePath, fileName));
            }

            // Redireccionar a la página de la noticia recién creada
            Response.Redirect("noticias/" + urlSimple.Substring(urlSimple.LastIndexOf('/') + 1));
        }

        private string GenerateUrlSimple(string titulo)
        {
            // Convertir a minúsculas
            string urlSimple = titulo.ToLowerInvariant();

            // Reemplazar caracteres especiales y espacios con guiones
            urlSimple = Regex.Replace(urlSimple, @"[^a-z0-9\s-]", ""); // Eliminar caracteres especiales
            urlSimple = Regex.Replace(urlSimple, @"\s+", " ").Trim(); // Reemplazar múltiples espacios con uno solo
            urlSimple = Regex.Replace(urlSimple, @"\s", "-"); // Reemplazar espacios con guiones

            // Añadir prefijo "noticias/"
            urlSimple = "noticias/" + urlSimple;

            return urlSimple;
        }

        private void GuardarArchivoMultimedia(string usuarioAutor, string tipoArchivo, string urlArchivo)
        {
            using (var context = new IntranetEntities())
            {
                ArchivosMultimedia archivoMultimedia = new ArchivosMultimedia
                {
                    fechaPublicacion = DateTime.Now,
                    tipoArchivo = tipoArchivo,
                    urlArchivo = urlArchivo,
                    usuarioAutor = usuarioAutor
                };

                context.ArchivosMultimedia.Add(archivoMultimedia);
                context.SaveChanges();
            }
        }
    }
}



