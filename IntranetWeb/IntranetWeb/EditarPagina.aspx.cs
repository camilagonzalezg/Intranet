using System;
using System.Linq;
using System.Web.UI;
using IntranetModel;
using Ganss.Xss;
using IntranetModel.DAL;

namespace IntranetWeb
{
    public partial class EditarPagina : System.Web.UI.Page
    {
        private PaginasDAL paginasDAL = new PaginasDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string idStr = Request.QueryString["id"];
                if (int.TryParse(idStr, out int id))
                {
                    CargarPagina(id);
                }
                else
                {
                    // Manejar el error si el ID no es válido
                    Response.Redirect("VerPaginas.aspx?mensaje=ErrorID");
                }
            }
        }

        private void CargarPagina(int id)
        {
            Paginas pagina = paginasDAL.GetById(id);
            if (pagina != null)
            {
                TituloTxt.Text = pagina.titulo;
                MetaDescripcionTxt.Text = pagina.metaDescripcion;
                FechaCreacionInput.Text = pagina.fechaPublicacion.HasValue ? pagina.fechaPublicacion.Value.ToString("yyyy-MM-dd") : "";
                CategoriasRadioList.SelectedValue = pagina.tags;
                ContenidoPaginaTxt.Text = pagina.contenidoTexto;
            }
            else
            {
                // Manejar el error si la página no se encuentra
                Response.Redirect("VerPaginas.aspx?mensaje=PaginaNoEncontrada");
            }
        }

        protected void GuardarPaginaBtn_Click(object sender, EventArgs e)
        {
            string idStr = Request.QueryString["id"];
            if (int.TryParse(idStr, out int id))
            {
                string titulo = TituloTxt.Text;
                string metaDescripcion = MetaDescripcionTxt.Text;
                string fechaCreacionStr = FechaCreacionInput.Text;
                string categoria = CategoriasRadioList.SelectedValue;
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

                DateTime? fechaCreacion = null;
                if (DateTime.TryParse(fechaCreacionStr, out DateTime parsedDate))
                {
                    fechaCreacion = parsedDate;
                }

                using (var context = new IntranetEntities())
                {
                    Paginas pagina = context.Paginas.FirstOrDefault(p => p.id == id);
                    if (pagina != null)
                    {
                        pagina.titulo = titulo;
                        pagina.metaDescripcion = metaDescripcion;
                        pagina.fechaPublicacion = fechaCreacion;
                        pagina.tags = categoria;
                        pagina.contenidoTexto = sanitizedContent;

                        context.SaveChanges();
                    }
                    else
                    {
                        // Manejar el error si la página no se encuentra
                        Response.Redirect("VerPaginas.aspx?mensaje=PaginaNoEncontrada");
                        return;
                    }
                }

                // Redireccionar o mostrar un mensaje de éxito
                Response.Redirect("VerPaginas.aspx?mensaje=ActualizadoExitosamente");
            }
        }
    }
}
