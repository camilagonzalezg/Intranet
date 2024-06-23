using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class RegistrarPromocion : System.Web.UI.Page
    {
        UsuariosDAL usuariosDAL = new UsuariosDAL();
        PromocionesDAL promocionesDAL = new PromocionesDAL(); // Assuming you have a data access layer for Promociones

        private void CargarTabla(List<Usuarios> usuarios)
        {
            UsuariosGrid.DataSource = usuarios;
            UsuariosGrid.DataBind();
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarTabla(usuariosDAL.GetAllWithChildren());

                // Verificar si hay un parámetro en la URL
                string mensaje = Request.QueryString["mensaje"];
                if (!string.IsNullOrEmpty(mensaje))
                {
                    // Verificar el tipo de mensaje
                    if (mensaje.Equals("PromocionRegistrada"))
                    {
                        // Mostrar el mensaje de promoción registrada exitosamente
                        MensajePanel.Visible = true;
                        MensajeLabel.Text = "Promoción registrada exitosamente";
                    }
                }
            }
        }

        protected void UsuariosGrid_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "registrarPromocion")
            {
                // Obtener el rut del usuario seleccionado
                string rutUsuario = e.CommandArgument.ToString();

                // Redireccionar a la página de agregar promoción enviando el rut como parámetro
                Response.Redirect("AgregarPromocion.aspx?rut=" + rutUsuario);
            }
        }

        protected void SearchBtn_Click(object sender, EventArgs e)
        {
            string searchParam = FilterByDdl.SelectedValue;
            string searchTerm = SearchTermTxt.Text.ToLower();

            List<Usuarios> usuarios;

            if (searchParam == "all")
            {
                usuarios = usuariosDAL.GetAllWithChildren()
                    .Where(u => u.nombre.ToLower().Contains(searchTerm) ||
                                u.apellido.ToLower().Contains(searchTerm) ||
                                u.Gerencias.nombre.ToLower().Contains(searchTerm) ||
                                u.Subgerencias.nombre.ToLower().Contains(searchTerm) ||
                                u.Departamentos.nombre.ToLower().Contains(searchTerm) ||
                                u.Ubicaciones.nombre.ToLower().Contains(searchTerm))
                    .ToList();
            }
            else
            {
                usuarios = usuariosDAL.GetAllWithChildren()
                    .Where(u => u.GetType().GetProperty(searchParam).GetValue(u, null).ToString().ToLower().Contains(searchTerm))
                    .ToList();
            }

            CargarTabla(usuarios);
        }
    }
}
