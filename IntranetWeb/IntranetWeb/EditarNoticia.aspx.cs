//using System;
//using System.Linq;
//using System.Web.UI;
//using IntranetModel;
//using Ganss.Xss;
//using IntranetModel.DAL;

//namespace IntranetWeb
//{
//    public partial class EditarNoticia : System.Web.UI.Page
//    {
//        private NoticiasDAL noticiasDAL = new NoticiasDAL();

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                string idStr = Request.QueryString["id"];
//                if (int.TryParse(idStr, out int id))
//                {
//                    CargarNoticia(id);
//                }
//                else
//                {
//                    // Manejar el error si el ID no es válido
//                    Response.Redirect("VerNoticias.aspx?mensaje=ErrorID");
//                }
//            }
//        }

//        private void CargarNoticia(int id)
//        {
//            Noticias noticia = noticiasDAL.GetById(id);
//            if (noticia != null)
//            {
//                TituloTxt.Text = noticia.titulo;
//                MetaDescripcionTxt.Text = noticia.metaDescripcion;
//                FechaPublicacionInput.Text = noticia.fechaPublicacion.HasValue ? noticia.fechaPublicacion.Value.ToString("yyyy-MM-dd") : "";
//                TagsRadioList.SelectedValue = noticia.tags;
//                ContenidoNoticiaTxt.Text = noticia.contenidoTexto;
//            }
//            else
//            {
//                // Manejar el error si la noticia no se encuentra
//                Response.Redirect("VerNoticias.aspx?mensaje=NoticiaNoEncontrada");
//            }
//        }

//        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
//        {
//            string idStr = Request.QueryString["id"];
//            if (int.TryParse(idStr, out int id))
//            {
//                string titulo = TituloTxt.Text;
//                string metaDescripcion = MetaDescripcionTxt.Text;
//                string fechaPublicacionStr = FechaPublicacionInput.Text;
//                string tags = TagsRadioList.SelectedValue;
//                string contenidoNoticia = ContenidoNoticiaTxt.Text;

//                if (string.IsNullOrWhiteSpace(contenidoNoticia))
//                {
//                    // Mostrar mensaje de error
//                    ErrorMessageLabel.Text = "Debe ingresar contenido";
//                    ErrorMessageLabel.Visible = true;
//                    return;
//                }

//                // Sanitizar el contenido HTML
//                var sanitizer = new HtmlSanitizer();
//                string sanitizedContent = sanitizer.Sanitize(contenidoNoticia);

//                DateTime? fechaPublicacion = null;
//                if (DateTime.TryParse(fechaPublicacionStr, out DateTime parsedDate))
//                {
//                    fechaPublicacion = parsedDate;
//                }

//                using (var context = new IntranetEntities())
//                {
//                    Noticias noticia = context.Noticias.FirstOrDefault(n => n.id == id);
//                    if (noticia != null)
//                    {
//                        noticia.titulo = titulo;
//                        noticia.metaDescripcion = metaDescripcion;
//                        noticia.fechaPublicacion = fechaPublicacion;
//                        noticia.tags = tags;
//                        noticia.contenidoTexto = sanitizedContent;

//                        context.SaveChanges();
//                    }
//                    else
//                    {
//                        // Manejar el error si la noticia no se encuentra
//                        Response.Redirect("VerNoticias.aspx?mensaje=NoticiaNoEncontrada");
//                        return;
//                    }
//                }

//                // Redireccionar o mostrar un mensaje de éxito
//                Response.Redirect("VerNoticias.aspx?mensaje=ActualizadoExitosamente");
//            }
//        }
//    }
//}

using System;
using System.IO;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web.UI;
using IntranetModel;
using Ganss.Xss;
using IntranetModel.DAL;
using System.Globalization;
using System.Text;

namespace IntranetWeb
{
    public partial class EditarNoticia : System.Web.UI.Page
    {
        private NoticiasDAL noticiasDAL = new NoticiasDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idStr = Request.QueryString["id"];
                if (int.TryParse(idStr, out int id))
                {
                    CargarNoticia(id);
                }
                else
                {
                    // Manejar el error si el ID no es válido
                    Response.Redirect("VerNoticias.aspx?mensaje=ErrorID");
                }
            }
        }

        private void CargarNoticia(int id)
        {
            Noticias noticia = noticiasDAL.GetById(id);
            if (noticia != null)
            {
                TituloTxt.Text = noticia.titulo;
                MetaDescripcionTxt.Text = noticia.metaDescripcion;
                FechaPublicacionInput.Text = noticia.fechaPublicacion.HasValue ? noticia.fechaPublicacion.Value.ToString("yyyy-MM-dd") : "";
                TagsRadioList.SelectedValue = noticia.tags;
                ContenidoNoticiaTxt.Text = noticia.contenidoTexto;
            }
            else
            {
                // Manejar el error si la noticia no se encuentra
                Response.Redirect("VerNoticias.aspx?mensaje=NoticiaNoEncontrada");
            }
        }

        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
        {
            string idStr = Request.QueryString["id"];
            if (int.TryParse(idStr, out int id))
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
                    archivoMultimediaIdSlider = GuardarArchivoMultimedia("Imagen", imagenPortadaSliderUrl);
                }

                if (ImagenPortadaCard.HasFile)
                {
                    string fileNameCard = Path.GetFileName(ImagenPortadaCard.FileName);
                    string filePathCard = Path.Combine(fullPath, fileNameCard);
                    ImagenPortadaCard.SaveAs(filePathCard);

                    string imagenPortadaCardUrl = Path.Combine(relativePath, fileNameCard).Replace("\\", "/");
                    archivoMultimediaIdCard = GuardarArchivoMultimedia("Imagen", imagenPortadaCardUrl);
                }

                using (var context = new IntranetEntities())
                {
                    Noticias noticia = context.Noticias.FirstOrDefault(n => n.id == id);
                    if (noticia != null)
                    {
                        noticia.titulo = titulo;
                        noticia.metaDescripcion = metaDescripcion;
                        noticia.fechaPublicacion = fechaPublicacion;
                        noticia.tags = tags;
                        noticia.contenidoTexto = sanitizedContent;
                        noticia.ArchivoMultimediaIdSlider = archivoMultimediaIdSlider;
                        noticia.ArchivoMultimediaIdCard = archivoMultimediaIdCard;
                        noticia.ColocarEnSlider = colocarEnSlider;

                        context.SaveChanges();
                    }
                    else
                    {
                        Response.Redirect("VerNoticias.aspx?mensaje=NoticiaNoEncontrada");
                        return;
                    }
                }

                Response.Redirect("VerNoticias.aspx?mensaje=ActualizadoExitosamente");
            }
        }

        private string GenerateUrlSimple(string titulo)
        {
            string urlSimple = titulo.ToLowerInvariant();

            string normalizedString = urlSimple.Normalize(NormalizationForm.FormD);

            StringBuilder stringBuilder = new StringBuilder();
            foreach (char c in normalizedString)
            {
                UnicodeCategory unicodeCategory = CharUnicodeInfo.GetUnicodeCategory(c);
                if (unicodeCategory != UnicodeCategory.NonSpacingMark)
                {
                    stringBuilder.Append(c);
                }
            }

            urlSimple = stringBuilder.ToString().Normalize(NormalizationForm.FormC);

            urlSimple = Regex.Replace(urlSimple, @"[^a-z0-9\s-]", "");
            urlSimple = Regex.Replace(urlSimple, @"\s+", " ").Trim();
            urlSimple = Regex.Replace(urlSimple, @"\s", "-");

            urlSimple = "noticias/" + urlSimple;

            return urlSimple;
        }

        private int GuardarArchivoMultimedia(string tipoArchivo, string urlArchivo)
        {
            using (var context = new IntranetEntities())
            {
                ArchivosMultimedia archivoMultimedia = new ArchivosMultimedia
                {
                    fechaPublicacion = DateTime.Now,
                    tipoArchivo = tipoArchivo,
                    urlArchivo = urlArchivo,
                    usuarioAutor = "usuario" // Puedes reemplazar esto con el usuario real si está disponible
                };

                context.ArchivosMultimedia.Add(archivoMultimedia);
                context.SaveChanges();

                return archivoMultimedia.id;
            }
        }
    }
}
