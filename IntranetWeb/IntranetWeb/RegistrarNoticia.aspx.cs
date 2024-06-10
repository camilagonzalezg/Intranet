using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using IntranetModel;
using IntranetModel.DAL;
using Ganss.Xss;
using System.Globalization;
using System.Text;

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
            bool colocarEnSlider = ColocarEnSliderCheck.Checked;

            if (string.IsNullOrWhiteSpace(contenidoNoticia))
            {
                ErrorMessageLabel.Text = "Debe ingresar contenido";
                ErrorMessageLabel.Visible = true;
                return;
            }

            var sanitizer = new HtmlSanitizer();
            string sanitizedContent = sanitizer.Sanitize(contenidoNoticia);

            DateTime? fechaPublicacion = null;
            if (DateTime.TryParse(fechaPublicacionStr, out DateTime parsedDate))
            {
                fechaPublicacion = parsedDate;
            }

            var usuario = Session["Usuario"] as Usuarios;
            if (usuario == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            string urlSimple = GenerateUrlSimple(titulo);

            int? archivoMultimediaIdSlider = null;
            int? archivoMultimediaIdCard = null;

            string basePath = Server.MapPath("~/Multimedia/ImagenesNoticias/");
            string relativePath = $"{DateTime.Now.Year}/{DateTime.Now.Month}/";
            string fullPath = Path.Combine(basePath, relativePath);

            if (!Directory.Exists(fullPath))
            {
                Directory.CreateDirectory(fullPath);
            }

            if (ImagenPortadaSlider.HasFile)
            {
                string fileNameSlider = Path.GetFileName(ImagenPortadaSlider.FileName);
                string filePathSlider = Path.Combine(fullPath, fileNameSlider);
                ImagenPortadaSlider.SaveAs(filePathSlider);

                string imagenPortadaSliderUrl = Path.Combine(relativePath, fileNameSlider).Replace("\\", "/");
                archivoMultimediaIdSlider = GuardarArchivoMultimedia(usuario.rutUsuario, "Imagen", imagenPortadaSliderUrl);
            }

            if (ImagenPortadaCard.HasFile)
            {
                string fileNameCard = Path.GetFileName(ImagenPortadaCard.FileName);
                string filePathCard = Path.Combine(fullPath, fileNameCard);
                ImagenPortadaCard.SaveAs(filePathCard);

                string imagenPortadaCardUrl = Path.Combine(relativePath, fileNameCard).Replace("\\", "/");
                archivoMultimediaIdCard = GuardarArchivoMultimedia(usuario.rutUsuario, "Imagen", imagenPortadaCardUrl);
            }

            Noticias nuevaNoticia = new Noticias
            {
                titulo = titulo,
                metaDescripcion = metaDescripcion,
                fechaPublicacion = fechaPublicacion,
                tags = tags,
                contenidoTexto = sanitizedContent,
                usuarioAutor = usuario.rutUsuario,
                likes = 0,
                urlSimple = urlSimple,
                ArchivoMultimediaIdSlider = archivoMultimediaIdSlider,
                ArchivoMultimediaIdCard = archivoMultimediaIdCard,
                ColocarEnSlider = colocarEnSlider
            };

            NoticiasDAL noticiasDAL = new NoticiasDAL();
            noticiasDAL.Add(nuevaNoticia);

            Response.Redirect("noticias/" + urlSimple.Substring(urlSimple.LastIndexOf('/') + 1), false);
            Context.ApplicationInstance.CompleteRequest();
        }

        private string GenerateUrlSimple(string titulo)
        {
            // Convertir a minúsculas
            string urlSimple = titulo.ToLowerInvariant();

            // Normalizar la cadena a FormD (descomposición de compatibilidad de caracteres)
            string normalizedString = urlSimple.Normalize(NormalizationForm.FormD);

            // Filtrar solo las letras y números (incluyendo letras con acento)
            StringBuilder stringBuilder = new StringBuilder();
            foreach (char c in normalizedString)
            {
                UnicodeCategory unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            // Convertir la cadena normalizada a FormC (composición de caracteres)
            urlSimple = stringBuilder.ToString().Normalize(NormalizationForm.FormC);

            // Reemplazar caracteres especiales y espacios con guiones
            urlSimple = Regex.Replace(urlSimple, @"[^a-z0-9\s-]", ""); // Eliminar caracteres especiales
            urlSimple = Regex.Replace(urlSimple, @"\s+", " ").Trim(); // Reemplazar múltiples espacios con uno solo
            urlSimple = Regex.Replace(urlSimple, @"\s", "-"); // Reemplazar espacios con guiones

            // Añadir prefijo "noticias/"
            urlSimple = "noticias/" + urlSimple;

            return urlSimple;
        }


        private int GuardarArchivoMultimedia(string usuarioAutor, string tipoArchivo, string urlArchivo)
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

                System.Diagnostics.Debug.WriteLine("Guardado Archivo Multimedia ID: " + archivoMultimedia.id);
                System.Diagnostics.Debug.WriteLine("URL Archivo: " + archivoMultimedia.urlArchivo);

                return archivoMultimedia.id;
            }
        }


    }
}




