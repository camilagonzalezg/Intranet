using System;
using System.Linq;
using IntranetModel;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadSliderNews();
                LoadLatestNews();
            }
        }

        private void LoadSliderNews()
        {
            using (var context = new IntranetEntities())
            {
                var sliderNews = context.Noticias
                    .Where(n => n.ColocarEnSlider == true)
                    .OrderByDescending(n => n.fechaPublicacion)
                    .Take(3)
                    .Select(n => new
                    {
                        n.titulo,
                        n.metaDescripcion,
                        ImagenUrl = n.ArchivosMultimedia1.urlArchivo, // Ajusta esta propiedad según corresponda
                        n.urlSimple // Asegúrate de incluir esta propiedad en tu modelo
                    })
                    .ToList();

                RepeaterSlider.DataSource = sliderNews;
                RepeaterSlider.DataBind();

                RepeaterSliderIndicators.DataSource = sliderNews;
                RepeaterSliderIndicators.DataBind();
            }
        }

        private void LoadLatestNews()
        {
            using (var context = new IntranetEntities())
            {
                var latestNews = context.Noticias
                    .OrderByDescending(n => n.fechaPublicacion)
                    .Take(3)
                    .Select(n => new
                    {
                        n.titulo,
                        n.metaDescripcion,
                        AutorNombre = n.Usuarios.nombre + " " + n.Usuarios.apellido, // Concatenar nombre y apellido
                        n.fechaPublicacion,
                        ImagenUrlCard = n.ArchivosMultimedia1.urlArchivo,
                        n.urlSimple,
                        tags = n.tags // Cambia 'tag' por 'tags'
                    })
                    .ToList();

                RepeaterLatestNews.DataSource = latestNews;
                RepeaterLatestNews.DataBind();
            }
        }
    }
}

