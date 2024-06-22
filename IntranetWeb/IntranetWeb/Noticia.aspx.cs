using System;
using System.Linq;
using IntranetModel;

namespace IntranetWeb
{
    public partial class Noticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string urlSimple = Request.QueryString["url"];
                if (!string.IsNullOrEmpty(urlSimple))
                {
                    MostrarNoticia(urlSimple);
                }
                else
                {
                    // Redirigir a una página de error o mostrar mensaje de error
                    Response.Redirect("Error.aspx");
                }
            }
        }

        private void MostrarNoticia(string urlSimple)
        {
            using (var context = new IntranetEntities())
            {
                var noticia = context.Noticias
                    .Include("Usuarios") // Incluir la relación con Usuarios
                    .FirstOrDefault(n => n.urlSimple == urlSimple);

                if (noticia != null)
                {
                    tituloNoticia.InnerText = noticia.titulo;
                    fechaPublicacion.InnerText = noticia.fechaPublicacion?.ToString("MMMM d, yyyy") ?? "Sin fecha";
                    tagNoticia.InnerText = noticia.tags;
                    tagLink.InnerText = noticia.tags;
                    contenidoNoticia.InnerHtml = noticia.contenidoTexto;

                    // Concatenar nombre y apellido del autor
                    autorNombre.InnerText = noticia.Usuarios.nombre + " " + noticia.Usuarios.apellido;

                    // Asignar imágenes si existen
                    var imagenPortadaSlider = context.ArchivosMultimedia
                        .FirstOrDefault(a => a.id == noticia.ArchivoMultimediaIdSlider && a.tipoArchivo == "Imagen");
                    if (imagenPortadaSlider != null)
                    {
                        portadaSlider.Src = "/Multimedia/ImagenesNoticias/" + imagenPortadaSlider.urlArchivo;
                    }
                }
                else
                {
                    // Redirigir a una página de error o mostrar mensaje de error
                    Response.Redirect("Error.aspx");
                }
            }
        }
    }
}

