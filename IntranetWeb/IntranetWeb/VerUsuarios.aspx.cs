using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class VerUsuarios : System.Web.UI.Page
    {
        UsuariosDAL usuariosDAL = new UsuariosDAL();

        private void CargarTabla(List<Usuarios> usuarios)
        {
            UsuariosGrid.DataSource = usuarios;
            UsuariosGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(usuariosDAL.GetAll());

                // Verificar si hay un parámetro en la URL
                string mensaje = Request.QueryString["mensaje"];
                if (!string.IsNullOrEmpty(mensaje))
                {
                    // Verificar el tipo de mensaje
                    if (mensaje.Equals("AgregadoExitosamente"))
                    {
                        // Mostrar el mensaje de usuario agregado exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Usuario agregado exitosamente";
                    }
                    else if (mensaje.Equals("ActualizadoExitosamente"))
                    {
                        // Mostrar el mensaje de usuario actualizado exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Usuario actualizado exitosamente";
                    }
                    else if (mensaje.Equals("EliminadoExitosamente"))
                    {
                        // Mostrar el mensaje de usuario eliminado exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Usuario eliminado exitosamente";
                    }
                }
            }
        }

        protected void UsuariosGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "editar")
            {
                // Obtener el rut del usuario seleccionado
                string rutAEditar = e.CommandArgument.ToString();

                // Redireccionar a la página de edición de usuario enviando el rut como parámetro
                Response.Redirect("EditarUsuario.aspx?rut=" + rutAEditar);
            }
            else if (e.CommandName == "eliminar")
            {
                string rutAEliminar = e.CommandArgument.ToString();
                usuariosDAL.Remove(rutAEliminar);
                // Actualizar la grilla
                CargarTabla(usuariosDAL.GetAll());

                // Redirigir a VerUsuarios.aspx con un parámetro de mensaje
                Response.Redirect("VerUsuarios.aspx?mensaje=EliminadoExitosamente");
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchParam = FilterByDdl.SelectedValue;
            string searchTerm = SearchTermTxt.Text.ToLower();

            List<Usuarios> usuarios;

            if (searchParam == "all")
            {
                usuarios = usuariosDAL.GetAll()
                    .Where(u => u.nombre.ToLower().Contains(searchTerm) ||
                                u.apellido.ToLower().Contains(searchTerm) ||
                                u.GerenciaNombre.ToLower().Contains(searchTerm) ||
                                u.SubgerenciaNombre.ToLower().Contains(searchTerm) ||
                                u.DepartamentoNombre.ToLower().Contains(searchTerm) ||
                                u.UbicacionNombre.ToLower().Contains(searchTerm) ||
                                u.TipoContratoNombre.ToLower().Contains(searchTerm) ||
                                u.RolUsuarioNombre.ToLower().Contains(searchTerm))
                    .ToList();
            }
            else
            {
                usuarios = usuariosDAL.GetAll()
                    .Where(u => u.GetType().GetProperty(searchParam).GetValue(u, null).ToString().ToLower().Contains(searchTerm))
                    .ToList();
            }

            CargarTabla(usuarios);
        }
    }
}
