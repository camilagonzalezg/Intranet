using System;
using System.Linq;
using System.Web.UI;
using IntranetModel;
using IntranetModel.DAL;

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
                ContenidoNoticiaTxt.Text = noticia.contenidoTexto; // Asegúrate de usar ContenidoNoticiaTxt.Text aquí
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
                string contenidoNoticia = ContenidoNoticiaTxt.Text; // Usa ContenidoNoticiaTxt.Text aquí

                if (string.IsNullOrWhiteSpace(contenidoNoticia))
                {
                    // Mostrar mensaje de error
                    ErrorMessageLabel.Text = "Debe ingresar contenido";
                    ErrorMessageLabel.Visible = true;
                    return;
                }

                DateTime? fechaPublicacion = null;
                if (DateTime.TryParse(fechaPublicacionStr, out DateTime parsedDate))
                {
                    fechaPublicacion = parsedDate;
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
                        noticia.contenidoTexto = contenidoNoticia;

                        context.SaveChanges();
                    }
                    else
                    {
                        // Manejar el error si la noticia no se encuentra
                        Response.Redirect("VerNoticias.aspx?mensaje=NoticiaNoEncontrada");
                        return;
                    }
                }

                // Redireccionar o mostrar un mensaje de éxito
                Response.Redirect("VerNoticias.aspx?mensaje=ActualizadoExitosamente");
            }
        }
    }
}
