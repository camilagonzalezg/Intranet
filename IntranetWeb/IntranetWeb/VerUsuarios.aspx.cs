using IntranetModel.DAL;
using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class VerUsuarios : System.Web.UI.Page
    {
        UsuariosDAL usuariosDAL = new UsuariosDAL();
        private void CargarTabla(List<Usuario> usuarios)
        {
            UsuariosGrid.DataSource = usuarios;
            UsuariosGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(usuariosDAL.GetAll());


                //if (Request.QueryString["mensaje"] != null)
                //{
                //    string mensaje = Request.QueryString["mensaje"];
                //    // Mostrar el mensaje en algún lugar de tu página, por ejemplo:
                //    ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('" + mensaje + "');", true);
                //}

                //// Verificar si hay un parámetro en la URL
                //string mensaje = Request.QueryString["mensaje"];
                //if (!string.IsNullOrEmpty(mensaje))
                //{
                //    // Verificar el tipo de mensaje
                //    if (mensaje.Equals("AgregadoExitosamente"))
                //    {
                //        // Mostrar el mensaje
                //        MensajePanel.Visible = true;
                //    }
                //}

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
            if(e.CommandName == "eliminar")
            {
                String rutAEliminar = e.CommandArgument.ToString();
                usuariosDAL.Remove(rutAEliminar);
                //Actualizo la grilla
                CargarTabla(usuariosDAL.GetAll());

                // Redirigir a VerUsuarios.aspx con un parámetro de mensaje
                Response.Redirect("VerUsuarios.aspx?mensaje=EliminadoExitosamente");

            }
        }
    }
}