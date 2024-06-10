using System;
using System.Linq;
using IntranetModel;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class Novedades : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadLatestNews();
                LoadOtherNews();
            }
        }

        private void LoadLatestNews()
        {
            using (var context = new IntranetEntities())
            {
                var latestNews = context.Noticias
                    .OrderByDescending(n => n.fechaPublicacion)
                    .Take(1)
                    .Select(n => new
                    {
                        n.titulo,
                        n.metaDescripcion,
                        AutorNombre = n.Usuarios.nombre + " " + n.Usuarios.apellido, // Concatenar nombre y apellido
                        n.fechaPublicacion,
                        ImagenUrlCard = n.ArchivosMultimedia.urlArchivo, // Usa la propiedad correcta para la imagen de la tarjeta
                        n.urlSimple,
                        tags = n.tags // Cambia 'tag' por 'tags'
                    })
                    .ToList();

                RepeaterLatestNews.DataSource = latestNews;
                RepeaterLatestNews.DataBind();
            }
        }

        private void LoadOtherNews()
        {
            using (var context = new IntranetEntities())
            {
                var otherNews = context.Noticias
                    .OrderByDescending(n => n.fechaPublicacion)
                    .Skip(1)
                    .Select(n => new
                    {
                        n.titulo,
                        n.metaDescripcion,
                        AutorNombre = n.Usuarios.nombre + " " + n.Usuarios.apellido, // Concatenar nombre y apellido
                        n.fechaPublicacion,
                        ImagenUrlCard = n.ArchivosMultimedia.urlArchivo, // Usa la propiedad correcta para la imagen de la tarjeta
                        n.urlSimple,
                        tags = n.tags // Cambia 'tag' por 'tags'
                    })
                    .ToList();

                RepeaterOtherNews.DataSource = otherNews;
                RepeaterOtherNews.DataBind();
            }
        }
    }
}
