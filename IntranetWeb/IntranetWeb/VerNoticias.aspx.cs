using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class VerNoticias : System.Web.UI.Page
    {
        NoticiasDAL noticiasDAL = new NoticiasDAL();

        private void CargarTabla(List<Noticias> noticias)
        {
            // Ordenar las noticias por fecha de publicación de forma descendente
            var noticiasOrdenadas = noticias.OrderByDescending(n => n.fechaPublicacion).ToList();
            // Agregar mensaje de depuración
            System.Diagnostics.Debug.WriteLine("Noticias a cargar: " + noticiasOrdenadas.Count);
            NoticiasGrid.DataSource = noticiasOrdenadas;
            NoticiasGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Noticias> noticias = noticiasDAL.GetAll();
                System.Diagnostics.Debug.WriteLine("Noticias obtenidas: " + noticias.Count);
                CargarTabla(noticias);

                // Verificar si hay un parámetro en la URL
                string mensaje = Request.QueryString["mensaje"];
                if (!string.IsNullOrEmpty(mensaje))
                {
                    // Verificar el tipo de mensaje
                    if (mensaje.Equals("AgregadoExitosamente"))
                    {
                        // Mostrar el mensaje de noticia agregada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Noticia agregada exitosamente";
                    }
                    else if (mensaje.Equals("ActualizadoExitosamente"))
                    {
                        // Mostrar el mensaje de noticia actualizada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Noticia actualizada exitosamente";
                    }
                    else if (mensaje.Equals("EliminadoExitosamente"))
                    {
                        // Mostrar el mensaje de noticia eliminada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Noticia eliminada exitosamente";
                    }
                }
            }
        }

        protected void NoticiasGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                // Obtener el ID de la noticia seleccionada
                int idAEditar = Convert.ToInt32(e.CommandArgument);

                // Redireccionar a la página de edición de noticia enviando el ID como parámetro
                Response.Redirect("EditarNoticia.aspx?id=" + idAEditar);
            }
            else if (e.CommandName == "eliminar")
            {
                int idAEliminar = Convert.ToInt32(e.CommandArgument);
                noticiasDAL.Remove(idAEliminar);
                // Actualizar la grilla
                List<Noticias> noticias = noticiasDAL.GetAll();
                System.Diagnostics.Debug.WriteLine("Noticias después de eliminar: " + noticias.Count);
                CargarTabla(noticias);

                // Redirigir a VerNoticias.aspx con un parámetro de mensaje
                Response.Redirect("VerNoticias.aspx?mensaje=EliminadoExitosamente");
            }
            else if (e.CommandName == "verPagina")
            {
                // Obtener la URL simple de la noticia
                string urlSimple = e.CommandArgument.ToString();

                // Redireccionar a la página de la noticia usando la URL simple
                Response.Redirect(urlSimple);
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchParam = FilterByDdl.SelectedValue;
            string searchTerm = SearchTermTxt.Text.ToLower();

            List<Noticias> noticias;

            if (searchParam == "all")
            {
                noticias = noticiasDAL.GetAll()
                    .Where(n => n.titulo.ToLower().Contains(searchTerm) ||
                                n.metaDescripcion.ToLower().Contains(searchTerm) ||
                                n.usuarioAutor.ToLower().Contains(searchTerm) ||
                                n.tags.ToLower().Contains(searchTerm))
                    .ToList();
            }
            else
            {
                noticias = noticiasDAL.GetAll()
                    .Where(n => n.GetType().GetProperty(searchParam).GetValue(n, null).ToString().ToLower().Contains(searchTerm))
                    .ToList();
            }

            System.Diagnostics.Debug.WriteLine("Noticias encontradas: " + noticias.Count);
            CargarTabla(noticias);
        }
    }
}

