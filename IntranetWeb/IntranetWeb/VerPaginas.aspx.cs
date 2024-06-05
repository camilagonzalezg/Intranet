using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class VerPaginas : System.Web.UI.Page
    {
        PaginasDAL paginasDAL = new PaginasDAL();

        private void CargarTabla(List<Paginas> paginas)
        {
            PaginasGrid.DataSource = paginas;
            PaginasGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(paginasDAL.GetAll());

                // Verificar si hay un parámetro en la URL
                string mensaje = Request.QueryString["mensaje"];
                if (!string.IsNullOrEmpty(mensaje))
                {
                    // Verificar el tipo de mensaje
                    if (mensaje.Equals("AgregadoExitosamente"))
                    {
                        // Mostrar el mensaje de página agregada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Página agregada exitosamente";
                    }
                    else if (mensaje.Equals("ActualizadoExitosamente"))
                    {
                        // Mostrar el mensaje de página actualizada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Página actualizada exitosamente";
                    }
                    else if (mensaje.Equals("EliminadoExitosamente"))
                    {
                        // Mostrar el mensaje de página eliminada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Página eliminada exitosamente";
                    }
                }
            }
        }

        protected void PaginasGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                // Obtener el ID de la página seleccionada
                int idAEditar = Convert.ToInt32(e.CommandArgument);

                // Redireccionar a la página de edición de página enviando el ID como parámetro
                Response.Redirect("EditarPagina.aspx?id=" + idAEditar);
            }
            else if (e.CommandName == "eliminar")
            {
                int idAEliminar = Convert.ToInt32(e.CommandArgument);
                paginasDAL.Remove(idAEliminar);
                // Actualizar la grilla
                CargarTabla(paginasDAL.GetAll());

                // Redirigir a VerPaginas.aspx con un parámetro de mensaje
                Response.Redirect("VerPaginas.aspx?mensaje=EliminadoExitosamente");
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchParam = FilterByDdl.SelectedValue;
            string searchTerm = SearchTermTxt.Text.ToLower();

            List<Paginas> paginas;

            if (searchParam == "all")
            {
                paginas = paginasDAL.GetAll()
                    .Where(p => p.titulo.ToLower().Contains(searchTerm) ||
                                p.metaDescripcion.ToLower().Contains(searchTerm) ||
                                p.usuarioAutor.ToLower().Contains(searchTerm) ||
                                p.tags.ToLower().Contains(searchTerm))
                    .ToList();
            }
            else
            {
                paginas = paginasDAL.GetAll()
                    .Where(p => p.GetType().GetProperty(searchParam).GetValue(p, null).ToString().ToLower().Contains(searchTerm))
                    .ToList();
            }

            CargarTabla(paginas);
        }
    }
}
