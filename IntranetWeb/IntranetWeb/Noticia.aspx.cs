//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace IntranetWeb
//{
//    public partial class Noticia : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }
//    }
//}

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
                var noticia = context.Noticias.FirstOrDefault(n => n.urlSimple == urlSimple);
                if (noticia != null)
                {
                    tituloNoticia.InnerText = noticia.titulo;
                    fechaPublicacion.InnerText = noticia.fechaPublicacion?.ToString("MMMM d, yyyy") ?? "Sin fecha";
                    tagNoticia.InnerText = noticia.tags;
                    tagLink.InnerText = noticia.tags;
                    contenidoNoticia.InnerHtml = noticia.contenidoTexto;
                    autorNombre.InnerText = noticia.usuarioAutor;

                    // Asignar imágenes si existen
                    var imagenPortadaSlider = context.ArchivosMultimedia
          .FirstOrDefault(a => a.usuarioAutor == noticia.usuarioAutor && a.tipoArchivo == "Imagen" && a.urlArchivo.Contains("PortadaSlider"));
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

