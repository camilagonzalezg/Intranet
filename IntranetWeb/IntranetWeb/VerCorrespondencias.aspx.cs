using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using IntranetDAL;

namespace IntranetWeb
{
    public partial class VerCorrespondencia : System.Web.UI.Page
    {
        CorrespondenciasDAL correspondenciasDAL = new CorrespondenciasDAL();

        private void CargarTabla(List<Correspondencias> correspondencias)
        {
            // Ordenar las correspondencias por fecha de ingreso de forma descendente
            var correspondenciasOrdenadas = correspondencias.OrderByDescending(c => c.fechaIngreso).ToList();
            CorrespondenciasGrid.DataSource = correspondenciasOrdenadas;
            CorrespondenciasGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Correspondencias> correspondencias = correspondenciasDAL.GetAllCorrespondencias();
                CargarTabla(correspondencias);

                // Verificar si hay un parámetro en la URL
                string mensaje = Request.QueryString["mensaje"];
                if (!string.IsNullOrEmpty(mensaje))
                {
                    // Verificar el tipo de mensaje
                    if (mensaje.Equals("AgregadoExitosamente"))
                    {
                        // Mostrar el mensaje de correspondencia agregada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Correspondencia agregada exitosamente";
                    }
                    else if (mensaje.Equals("ActualizadoExitosamente"))
                    {
                        // Mostrar el mensaje de correspondencia actualizada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Correspondencia actualizada exitosamente";
                    }
                    else if (mensaje.Equals("EliminadoExitosamente"))
                    {
                        // Mostrar el mensaje de correspondencia eliminada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Correspondencia eliminada exitosamente";
                    }
                }
            }
        }

        protected void CorrespondenciasGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                // Obtener el ID de la correspondencia seleccionada
                int idAEditar = Convert.ToInt32(e.CommandArgument);

                // Redireccionar a la página de edición de correspondencia enviando el ID como parámetro
                Response.Redirect("EditarCorrespondencia.aspx?id=" + idAEditar);
            }
            else if (e.CommandName == "eliminar")
            {
                int idAEliminar = Convert.ToInt32(e.CommandArgument);
                correspondenciasDAL.DeleteCorrespondencia(idAEliminar);
                // Actualizar la grilla
                List<Correspondencias> correspondencias = correspondenciasDAL.GetAllCorrespondencias();
                CargarTabla(correspondencias);

                // Redirigir a VerCorrespondencias.aspx con un parámetro de mensaje
                Response.Redirect("VerCorrespondencias.aspx?mensaje=EliminadoExitosamente");
            }
            else if (e.CommandName == "verDocumento")
            {
                // Obtener la ruta del archivo de la correspondencia
                string rutaArchivo = e.CommandArgument.ToString();

                // Redireccionar a la ruta del documento
                Response.Redirect("~/" + rutaArchivo);
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchParam = FilterByDdl.SelectedValue;
            string searchTerm = SearchTermTxt.Text.ToLower();

            List<Correspondencias> correspondencias;

            if (searchParam == "all")
            {
                correspondencias = correspondenciasDAL.GetAllCorrespondencias()
                    .Where(c => c.usuario.ToLower().Contains(searchTerm) ||
                                c.nombreArchivo.ToLower().Contains(searchTerm) ||
                                c.descripcionArchivo.ToLower().Contains(searchTerm))
                    .ToList();
            }
            else
            {
                correspondencias = correspondenciasDAL.GetAllCorrespondencias()
                    .Where(c => c.GetType().GetProperty(searchParam).GetValue(c, null).ToString().ToLower().Contains(searchTerm))
                    .ToList();
            }

            CargarTabla(correspondencias);
        }
    }
}
