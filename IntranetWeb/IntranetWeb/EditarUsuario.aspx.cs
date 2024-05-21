using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        private IntranetEntities db = new IntranetEntities();
        private string rutUsuarioEditar;
        private bool diasFuturosDeshabilitados = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FechaNacimientoDt.Visible = false;
                FechaIngresoDt.Visible = false;

                CargarDatos();
                diasFuturosDeshabilitados = false;

                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
                {
                    rutUsuarioEditar = Request.QueryString["rut"];
                    CargarDatosUsuario(rutUsuarioEditar);
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }

        private void CargarDatos()
        {
            var contratos = db.TiposContrato.Select(tc => new { tc.id, tc.nombre }).ToList();
            ContratoDdl.DataSource = contratos;
            ContratoDdl.DataTextField = "nombre";
            ContratoDdl.DataValueField = "id";
            ContratoDdl.DataBind();

            var gerencias = db.Gerencias.Select(g => new { g.id, g.nombre }).ToList();
            GerenciaDdl.DataSource = gerencias;
            GerenciaDdl.DataTextField = "nombre";
            GerenciaDdl.DataValueField = "id";
            GerenciaDdl.DataBind();

            var subgerencias = db.Subgerencias.Select(sg => new { sg.id, sg.nombre }).ToList();
            SubgerenciaDdl.DataSource = subgerencias;
            SubgerenciaDdl.DataTextField = "nombre";
            SubgerenciaDdl.DataValueField = "id";
            SubgerenciaDdl.DataBind();

            var departamentos = db.Departamentos.Select(d => new { d.id, d.nombre }).ToList();
            DepartamentoDdl.DataSource = departamentos;
            DepartamentoDdl.DataTextField = "nombre";
            DepartamentoDdl.DataValueField = "id";
            DepartamentoDdl.DataBind();

            var ubicaciones = db.Ubicaciones.Select(u => new { u.id, u.nombre }).ToList();
            UbicaciónDdl.DataSource = ubicaciones;
            UbicaciónDdl.DataTextField = "nombre";
            UbicaciónDdl.DataValueField = "id";
            UbicaciónDdl.DataBind();
        }

        private void CargarDatosUsuario(string rut)
        {
            Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

            if (usuario != null)
            {
                NombreTxt.Text = usuario.nombre;
                ApellidoTxt.Text = usuario.apellido;
                RutTxt.Text = usuario.rutUsuario;
                FechaSeleccionadaTxt.Text = usuario.fechaNacimiento?.ToShortDateString();
                CargoTxt.Text = usuario.cargo;
                GerenciaDdl.SelectedValue = usuario.gerencia;
                SubgerenciaDdl.SelectedValue = usuario.subgerencia;
                DepartamentoDdl.SelectedValue = usuario.departamento;
                UbicaciónDdl.SelectedValue = usuario.ubicacion;
                JefeTxt.Text = usuario.jefe;
                FechaSeleccionadaIngresoTxt.Text = usuario.fechaIngreso?.ToShortDateString();
                ContratoDdl.SelectedValue = usuario.tipoContrato;
                RolUsuarioDdl.SelectedValue = usuario.rolUsuario;
                EmailTxt.Text = usuario.email;
                CelularTxt.Text = usuario.celular.ToString();
                ContraseñaTxt.Text = usuario.contraseña;
            }
            else
            {
                Response.Redirect("Error.aspx");
            }
        }

        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                string nombre = NombreTxt.Text;
                string apellido = ApellidoTxt.Text;
                string rut = RutTxt.Text;
                DateTime fechaNacimiento = Convert.ToDateTime(FechaSeleccionadaTxt.Text);
                string cargo = CargoTxt.Text;
                string gerencia = GerenciaDdl.SelectedValue;
                string subgerencia = SubgerenciaDdl.SelectedValue;
                string departamento = DepartamentoDdl.SelectedValue;
                string ubicacion = UbicaciónDdl.SelectedValue;
                string jefe = JefeTxt.Text;
                DateTime fechaIngreso = Convert.ToDateTime(FechaSeleccionadaIngresoTxt.Text);
                string tipoContrato = ContratoDdl.SelectedValue;
                string rolUsuario = RolUsuarioDdl.SelectedValue;
                string email = EmailTxt.Text;
                int celular = Convert.ToInt32(CelularTxt.Text);
                string contraseña = ContraseñaTxt.Text;

                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);
                if (usuario != null)
                {
                    usuario.nombre = nombre;
                    usuario.apellido = apellido;
                    usuario.fechaNacimiento = fechaNacimiento;
                    usuario.cargo = cargo;
                    usuario.gerencia = gerencia;
                    usuario.subgerencia = subgerencia;
                    usuario.departamento = departamento;
                    usuario.ubicacion = ubicacion;
                    usuario.jefe = jefe;
                    usuario.fechaIngreso = fechaIngreso;
                    usuario.tipoContrato = tipoContrato;
                    usuario.rolUsuario = rolUsuario;
                    usuario.email = email;
                    usuario.celular = celular;
                    usuario.contraseña = contraseña;

                    db.SaveChanges();

                    diasFuturosDeshabilitados = true;
                    Response.Redirect("VerUsuarios.aspx?mensaje=ActualizadoExitosamente");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }

        protected void VerCalendarioBtn_Click(object sender, EventArgs e)
        {
            FechaNacimientoDt.Visible = !FechaNacimientoDt.Visible;
        }

        protected void FechaNacimientoDt_SelectionChanged(object sender, EventArgs e)
        {
            FechaSeleccionadaTxt.Text = FechaNacimientoDt.SelectedDate.ToShortDateString();
        }

        protected void FechaNacimientoDt_DayRender(object sender, DayRenderEventArgs e)
        {
            if (!diasFuturosDeshabilitados && e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }

        protected void VerCalendarioIngresoBtn_Click(object sender, EventArgs e)
        {
            FechaIngresoDt.Visible = !FechaIngresoDt.Visible;
        }

        protected void FechaIngresoDt_SelectionChanged(object sender, EventArgs e)
        {
            FechaSeleccionadaIngresoTxt.Text = FechaIngresoDt.SelectedDate.ToShortDateString();
        }

        protected void FechaIngresoDt_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false;
            }
        }
    }
}
