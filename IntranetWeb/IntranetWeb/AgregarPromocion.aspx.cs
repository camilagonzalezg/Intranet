using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class AgregarPromocion : System.Web.UI.Page
    {
        private IntranetEntities db = new IntranetEntities();
        private PromocionesDAL promocionesDAL = new PromocionesDAL(); // Asegúrate de tener esta línea
        private string rutUsuario;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();

                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
                {
                    rutUsuario = Request.QueryString["rut"];
                    CargarDatosUsuario(rutUsuario);
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }

        private void CargarDatos()
        {
            // Cargar Gerencias
            var gerencias = db.Gerencias.ToList();
            GerenciaDdl.DataSource = gerencias;
            GerenciaDdl.DataTextField = "nombre";
            GerenciaDdl.DataValueField = "id";
            GerenciaDdl.DataBind();
            GerenciaDdl.Items.Insert(0, new ListItem("Elija una Gerencia", ""));

            // Inicialmente cargar todas las Subgerencias, Departamentos y Ubicaciones
            CargarSubgerencias();
            CargarDepartamentos();
            CargarUbicaciones();
        }

        private void CargarSubgerencias(int? gerenciaId = null)
        {
            var subgerencias = gerenciaId.HasValue
                ? db.Subgerencias.Where(s => s.idGerencia == gerenciaId).ToList()
                : db.Subgerencias.ToList();
            SubgerenciaDdl.DataSource = subgerencias;
            SubgerenciaDdl.DataTextField = "nombre";
            SubgerenciaDdl.DataValueField = "id";
            SubgerenciaDdl.DataBind();
            SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
        }

        private void CargarDepartamentos(int? subgerenciaId = null)
        {
            var departamentos = subgerenciaId.HasValue
                ? db.Departamentos.Where(d => d.idSubgerencia == subgerenciaId).ToList()
                : db.Departamentos.ToList();
            DepartamentoDdl.DataSource = departamentos;
            DepartamentoDdl.DataTextField = "nombre";
            DepartamentoDdl.DataValueField = "id";
            DepartamentoDdl.DataBind();
            DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
        }

        private void CargarUbicaciones(int? departamentoId = null)
        {
            var ubicaciones = departamentoId.HasValue
                ? db.Ubicaciones.Where(u => u.idDepartamento == departamentoId).ToList()
                : db.Ubicaciones.ToList();
            UbicacionDdl.DataSource = ubicaciones;
            UbicacionDdl.DataTextField = "nombre";
            UbicacionDdl.DataValueField = "id";
            UbicacionDdl.DataBind();
            UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
        }

        private void CargarDatosUsuario(string rut)
        {
            Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

            if (usuario != null)
            {
                NombreTxt.Text = usuario.nombre;
                ApellidoTxt.Text = usuario.apellido;
                RutUsuarioTxt.Text = usuario.rutUsuario;
                CargoTxt.Text = usuario.cargo;
                GerenciaDdl.SelectedValue = usuario.idGerencia.HasValue ? usuario.idGerencia.Value.ToString() : "";
                CargarSubgerencias(usuario.idGerencia);
                SubgerenciaDdl.SelectedValue = usuario.idSubgerencia.HasValue ? usuario.idSubgerencia.Value.ToString() : "";
                CargarDepartamentos(usuario.idSubgerencia);
                DepartamentoDdl.SelectedValue = usuario.idDepartamento.HasValue ? usuario.idDepartamento.Value.ToString() : "";
                CargarUbicaciones(usuario.idDepartamento);
                UbicacionDdl.SelectedValue = usuario.idUbicacion.HasValue ? usuario.idUbicacion.Value.ToString() : "";
                JefeTxt.Text = usuario.jefe;
                FechaPromocionTxt.Text = DateTime.Now.ToString("yyyy-MM-dd"); // Fecha de promoción actual
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string rutUsuario = RutUsuarioTxt.Text;
                string nuevoCargo = CargoTxt.Text;
                int? idGerencia = string.IsNullOrEmpty(GerenciaDdl.SelectedValue) ? (int?)null : int.Parse(GerenciaDdl.SelectedValue);
                int? idSubgerencia = string.IsNullOrEmpty(SubgerenciaDdl.SelectedValue) ? (int?)null : int.Parse(SubgerenciaDdl.SelectedValue);
                int? idDepartamento = string.IsNullOrEmpty(DepartamentoDdl.SelectedValue) ? (int?)null : int.Parse(DepartamentoDdl.SelectedValue);
                int? idUbicacion = string.IsNullOrEmpty(UbicacionDdl.SelectedValue) ? (int?)null : int.Parse(UbicacionDdl.SelectedValue);
                string jefe = JefeTxt.Text;
                DateTime fechaPromocion = Convert.ToDateTime(FechaPromocionTxt.Text);

                Promociones promocion = new Promociones
                {
                    RutUsuario = rutUsuario,
                    FechaPromocion = fechaPromocion
                };

                // Aquí actualizarías el usuario con los nuevos datos de promoción
                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rutUsuario);
                if (usuario != null)
                {
                    usuario.cargo = nuevoCargo;
                    usuario.idGerencia = idGerencia;
                    usuario.idSubgerencia = idSubgerencia;
                    usuario.idDepartamento = idDepartamento;
                    usuario.idUbicacion = idUbicacion;
                    usuario.jefe = jefe;

                    db.SaveChanges();
                    promocionesDAL.Add(promocion);

                    Response.Redirect("RegistrarPromocion.aspx?mensaje=PromocionRegistrada");
                }
                else
                {
                    MensajePanel.Visible = true;
                    MensajeLabel.Text = "Usuario no encontrado";
                }
            }
        }

        protected void GerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int gerenciaId;
            if (int.TryParse(GerenciaDdl.SelectedValue, out gerenciaId))
            {
                CargarSubgerencias(gerenciaId);
            }
            else
            {
                SubgerenciaDdl.Items.Clear();
                SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
                DepartamentoDdl.Items.Clear();
                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }

        protected void SubgerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int subgerenciaId;
            if (int.TryParse(SubgerenciaDdl.SelectedValue, out subgerenciaId))
            {
                CargarDepartamentos(subgerenciaId);
            }
            else
            {
                DepartamentoDdl.Items.Clear();
                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }

        protected void DepartamentoDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int departamentoId;
            if (int.TryParse(DepartamentoDdl.SelectedValue, out departamentoId))
            {
                CargarUbicaciones(departamentoId);
            }
            else
            {
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }
    }
}
