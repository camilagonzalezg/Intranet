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

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();

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
            // Cargar Gerencias
            var gerencias = db.Gerencias.ToList();
            GerenciaDdl.DataSource = gerencias;
            GerenciaDdl.DataTextField = "nombre";
            GerenciaDdl.DataValueField = "id";
            GerenciaDdl.DataBind();
            GerenciaDdl.Items.Insert(0, new ListItem("Elija una Gerencia", ""));

            // Cargar Tipos de Contrato
            var tiposContrato = db.TiposContrato.ToList();
            ContratoDdl.DataSource = tiposContrato;
            ContratoDdl.DataTextField = "nombre";
            ContratoDdl.DataValueField = "id";
            ContratoDdl.DataBind();
            ContratoDdl.Items.Insert(0, new ListItem("Elija un Tipo de Contrato", ""));

            // Cargar Roles de Usuario
            var rolesUsuario = db.RolesUsuario.ToList();
            RolUsuarioDdl.DataSource = rolesUsuario;
            RolUsuarioDdl.DataTextField = "nombre";
            RolUsuarioDdl.DataValueField = "id";
            RolUsuarioDdl.DataBind();
            RolUsuarioDdl.Items.Insert(0, new ListItem("Elija un Rol de Usuario", ""));

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
            UbicaciónDdl.DataSource = ubicaciones;
            UbicaciónDdl.DataTextField = "nombre";
            UbicaciónDdl.DataValueField = "id";
            UbicaciónDdl.DataBind();
            UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
        }

        private void CargarDatosUsuario(string rut)
        {
            Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

            if (usuario != null)
            {
                NombreTxt.Text = usuario.nombre;
                ApellidoTxt.Text = usuario.apellido;
                RutTxt.Text = usuario.rutUsuario;
                FechaNacimientoTxt.Text = usuario.fechaNacimiento?.ToString("yyyy-MM-dd");
                CargoTxt.Text = usuario.cargo;
                GerenciaDdl.SelectedValue = usuario.idGerencia.HasValue ? usuario.idGerencia.Value.ToString() : "";
                CargarSubgerencias(usuario.idGerencia);
                SubgerenciaDdl.SelectedValue = usuario.idSubgerencia.HasValue ? usuario.idSubgerencia.Value.ToString() : "";
                CargarDepartamentos(usuario.idSubgerencia);
                DepartamentoDdl.SelectedValue = usuario.idDepartamento.HasValue ? usuario.idDepartamento.Value.ToString() : "";
                CargarUbicaciones(usuario.idDepartamento);
                UbicaciónDdl.SelectedValue = usuario.idUbicacion.HasValue ? usuario.idUbicacion.Value.ToString() : "";
                JefeTxt.Text = usuario.jefe;
                FechaIngresoTxt.Text = usuario.fechaIngreso?.ToString("yyyy-MM-dd");
                ContratoDdl.SelectedValue = usuario.idTipoContrato.HasValue ? usuario.idTipoContrato.Value.ToString() : "";
                RolUsuarioDdl.SelectedValue = usuario.idRolUsuario.HasValue ? usuario.idRolUsuario.Value.ToString() : "";
                EmailTxt.Text = usuario.email;
                CelularTxt.Text = usuario.celular?.ToString() ?? "";
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
                DateTime fechaNacimiento = Convert.ToDateTime(FechaNacimientoTxt.Text);
                string cargo = CargoTxt.Text;
                int? idGerencia = string.IsNullOrEmpty(GerenciaDdl.SelectedValue) ? (int?)null : int.Parse(GerenciaDdl.SelectedValue);
                int? idSubgerencia = string.IsNullOrEmpty(SubgerenciaDdl.SelectedValue) ? (int?)null : int.Parse(SubgerenciaDdl.SelectedValue);
                int? idDepartamento = string.IsNullOrEmpty(DepartamentoDdl.SelectedValue) ? (int?)null : int.Parse(DepartamentoDdl.SelectedValue);
                int? idUbicacion = string.IsNullOrEmpty(UbicaciónDdl.SelectedValue) ? (int?)null : int.Parse(UbicaciónDdl.SelectedValue);
                string jefe = JefeTxt.Text;
                DateTime fechaIngreso = Convert.ToDateTime(FechaIngresoTxt.Text);
                int? idTipoContrato = string.IsNullOrEmpty(ContratoDdl.SelectedValue) ? (int?)null : int.Parse(ContratoDdl.SelectedValue);
                int? idRolUsuario = string.IsNullOrEmpty(RolUsuarioDdl.SelectedValue) ? (int?)null : int.Parse(RolUsuarioDdl.SelectedValue);
                string email = EmailTxt.Text;
                int? celular = string.IsNullOrEmpty(CelularTxt.Text) ? (int?)null : int.Parse(CelularTxt.Text);
                string contraseña = ContraseñaTxt.Text;

                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);
                if (usuario != null)
                {
                    usuario.nombre = nombre;
                    usuario.apellido = apellido;
                    usuario.fechaNacimiento = fechaNacimiento;
                    usuario.cargo = cargo;
                    usuario.idGerencia = idGerencia;
                    usuario.idSubgerencia = idSubgerencia;
                    usuario.idDepartamento = idDepartamento;
                    usuario.idUbicacion = idUbicacion;
                    usuario.jefe = jefe;
                    usuario.fechaIngreso = fechaIngreso;
                    usuario.idTipoContrato = idTipoContrato;
                    usuario.idRolUsuario = idRolUsuario;
                    usuario.email = email;
                    usuario.celular = celular;
                    usuario.contraseña = contraseña;

                    db.SaveChanges();

                    Response.Redirect("VerUsuarios.aspx?mensaje=ActualizadoExitosamente");
                }
                else
                {
                    Response.Redirect("Error.aspx");
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
                UbicaciónDdl.Items.Clear();
                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
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
                UbicaciónDdl.Items.Clear();
                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
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
                UbicaciónDdl.Items.Clear();
                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //Se crea objeto Validador
            Validador objValida = new Validador();

            //Entra el dato de rut
            objValida.ValidaVacio(RutTxt.Text.Trim());
            objValida.ValidaNumDigVerificador(RutTxt.Text.Trim());
            objValida.ValidaDigito(RutTxt.Text.Trim());

            //Se evalúa si estado es "correcto" o "incorrecto"
            if (objValida.xEstado != "Correcto")
            {
                RutCV.ErrorMessage = "Rut incorrecto.";
                args.IsValid = false;
            }
        }
    }
}




//using IntranetModel;
//using System;
//using System.Linq;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace IntranetWeb
//{
//    public partial class EditarUsuario : System.Web.UI.Page
//    {
//        private IntranetEntities db = new IntranetEntities();
//        private string rutUsuarioEditar;
//        private bool diasFuturosDeshabilitados = false;

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                FechaNacimientoDt.Visible = false;
//                FechaIngresoDt.Visible = false;

//                CargarDatos();
//                diasFuturosDeshabilitados = false;

//                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
//                {
//                    rutUsuarioEditar = Request.QueryString["rut"];
//                    CargarDatosUsuario(rutUsuarioEditar);
//                }
//                else
//                {
//                    Response.Redirect("Error.aspx");
//                }
//            }
//        }

//        private void CargarDatos()
//        {
//            var contratos = db.TiposContrato.Select(tc => new { tc.id, tc.nombre }).ToList();
//            ContratoDdl.DataSource = contratos;
//            ContratoDdl.DataTextField = "nombre";
//            ContratoDdl.DataValueField = "id";
//            ContratoDdl.DataBind();
//            ContratoDdl.Items.Insert(0, new ListItem("Elija un Tipo de Contrato", ""));

//            var gerencias = db.Gerencias.Select(g => new { g.id, g.nombre }).ToList();
//            GerenciaDdl.DataSource = gerencias;
//            GerenciaDdl.DataTextField = "nombre";
//            GerenciaDdl.DataValueField = "id";
//            GerenciaDdl.DataBind();
//            GerenciaDdl.Items.Insert(0, new ListItem("Elija una Gerencia", ""));

//            // Inicialmente cargar todas las Subgerencias, Departamentos y Ubicaciones
//            CargarSubgerencias();
//            CargarDepartamentos();
//            CargarUbicaciones();
//        }

//        private void CargarSubgerencias(int? gerenciaId = null)
//        {
//            var subgerencias = gerenciaId.HasValue
//                ? db.Subgerencias.Where(s => s.idGerencia == gerenciaId).ToList()
//                : db.Subgerencias.ToList();
//            SubgerenciaDdl.DataSource = subgerencias;
//            SubgerenciaDdl.DataTextField = "nombre";
//            SubgerenciaDdl.DataValueField = "id";
//            SubgerenciaDdl.DataBind();
//            SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
//        }

//        private void CargarDepartamentos(int? subgerenciaId = null)
//        {
//            var departamentos = subgerenciaId.HasValue
//                ? db.Departamentos.Where(d => d.idSubgerencia == subgerenciaId).ToList()
//                : db.Departamentos.ToList();
//            DepartamentoDdl.DataSource = departamentos;
//            DepartamentoDdl.DataTextField = "nombre";
//            DepartamentoDdl.DataValueField = "id";
//            DepartamentoDdl.DataBind();
//            DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//        }

//        private void CargarUbicaciones(int? departamentoId = null)
//        {
//            var ubicaciones = departamentoId.HasValue
//                ? db.Ubicaciones.Where(u => u.idDepartamento == departamentoId).ToList()
//                : db.Ubicaciones.ToList();
//            UbicaciónDdl.DataSource = ubicaciones;
//            UbicaciónDdl.DataTextField = "nombre";
//            UbicaciónDdl.DataValueField = "id";
//            UbicaciónDdl.DataBind();
//            UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//        }

//        private void CargarDatosUsuario(string rut)
//        {
//            Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

//            if (usuario != null)
//            {
//                NombreTxt.Text = usuario.nombre;
//                ApellidoTxt.Text = usuario.apellido;
//                RutTxt.Text = usuario.rutUsuario;
//                FechaSeleccionadaTxt.Text = usuario.fechaNacimiento?.ToShortDateString();
//                CargoTxt.Text = usuario.cargo;
//                GerenciaDdl.SelectedValue = usuario.idGerencia.HasValue ? usuario.idGerencia.Value.ToString() : "";
//                CargarSubgerencias(usuario.idGerencia);
//                SubgerenciaDdl.SelectedValue = usuario.idSubgerencia.HasValue ? usuario.idSubgerencia.Value.ToString() : "";
//                CargarDepartamentos(usuario.idSubgerencia);
//                DepartamentoDdl.SelectedValue = usuario.idDepartamento.HasValue ? usuario.idDepartamento.Value.ToString() : "";
//                CargarUbicaciones(usuario.idDepartamento);
//                UbicaciónDdl.SelectedValue = usuario.idUbicacion.HasValue ? usuario.idUbicacion.Value.ToString() : "";
//                JefeTxt.Text = usuario.jefe;
//                FechaSeleccionadaIngresoTxt.Text = usuario.fechaIngreso?.ToShortDateString();
//                ContratoDdl.SelectedValue = usuario.idTipoContrato.HasValue ? usuario.idTipoContrato.Value.ToString() : "";
//                RolUsuarioDdl.SelectedValue = usuario.idRolUsuario.HasValue ? usuario.idRolUsuario.Value.ToString() : "";
//                EmailTxt.Text = usuario.email;
//                CelularTxt.Text = usuario.celular?.ToString() ?? "";
//                ContraseñaTxt.Text = usuario.contraseña;
//            }
//            else
//            {
//                Response.Redirect("Error.aspx");
//            }
//        }

//        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
//        {
//            if (Page.IsValid)
//            {
//                string nombre = NombreTxt.Text;
//                string apellido = ApellidoTxt.Text;
//                string rut = RutTxt.Text;
//                DateTime fechaNacimiento = Convert.ToDateTime(FechaSeleccionadaTxt.Text);
//                string cargo = CargoTxt.Text;
//                int? idGerencia = string.IsNullOrEmpty(GerenciaDdl.SelectedValue) ? (int?)null : int.Parse(GerenciaDdl.SelectedValue);
//                int? idSubgerencia = string.IsNullOrEmpty(SubgerenciaDdl.SelectedValue) ? (int?)null : int.Parse(SubgerenciaDdl.SelectedValue);
//                int? idDepartamento = string.IsNullOrEmpty(DepartamentoDdl.SelectedValue) ? (int?)null : int.Parse(DepartamentoDdl.SelectedValue);
//                int? idUbicacion = string.IsNullOrEmpty(UbicaciónDdl.SelectedValue) ? (int?)null : int.Parse(UbicaciónDdl.SelectedValue);
//                string jefe = JefeTxt.Text;
//                DateTime fechaIngreso = Convert.ToDateTime(FechaSeleccionadaIngresoTxt.Text);
//                int? idTipoContrato = string.IsNullOrEmpty(ContratoDdl.SelectedValue) ? (int?)null : int.Parse(ContratoDdl.SelectedValue);
//                int? idRolUsuario = string.IsNullOrEmpty(RolUsuarioDdl.SelectedValue) ? (int?)null : int.Parse(RolUsuarioDdl.SelectedValue);
//                string email = EmailTxt.Text;
//                int? celular = string.IsNullOrEmpty(CelularTxt.Text) ? (int?)null : int.Parse(CelularTxt.Text);
//                string contraseña = ContraseñaTxt.Text;

//                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);
//                if (usuario != null)
//                {
//                    usuario.nombre = nombre;
//                    usuario.apellido = apellido;
//                    usuario.fechaNacimiento = fechaNacimiento;
//                    usuario.cargo = cargo;
//                    usuario.idGerencia = idGerencia;
//                    usuario.idSubgerencia = idSubgerencia;
//                    usuario.idDepartamento = idDepartamento;
//                    usuario.idUbicacion = idUbicacion;
//                    usuario.jefe = jefe;
//                    usuario.fechaIngreso = fechaIngreso;
//                    usuario.idTipoContrato = idTipoContrato;
//                    usuario.idRolUsuario = idRolUsuario;
//                    usuario.email = email;
//                    usuario.celular = celular;
//                    usuario.contraseña = contraseña;

//                    db.SaveChanges();

//                    diasFuturosDeshabilitados = true;
//                    Response.Redirect("VerUsuarios.aspx?mensaje=ActualizadoExitosamente");
//                }
//                else
//                {
//                    Response.Redirect("Error.aspx");
//                }
//            }
//        }

//        protected void VerCalendarioBtn_Click(object sender, EventArgs e)
//        {
//            // Mostrar o ocultar calendario
//            FechaNacimientoDt.Visible = !FechaNacimientoDt.Visible;

//            //Que calendario flote
//            FechaNacimientoDt.Attributes.Add("style", "position:absolute");
//        }

//        protected void FechaNacimientoDt_SelectionChanged(object sender, EventArgs e)
//        {
//            FechaSeleccionadaTxt.Text = FechaNacimientoDt.SelectedDate.ToShortDateString();
//            FechaNacimientoDt.Visible = false;
//        }

//        protected void FechaNacimientoDt_DayRender(object sender, DayRenderEventArgs e)
//        {
//            if (!diasFuturosDeshabilitados && e.Day.Date > DateTime.Today)
//            {
//                e.Day.IsSelectable = false;
//            }
//        }

//        protected void VerCalendarioIngresoBtn_Click(object sender, EventArgs e)
//        {
//            // Mostrar o ocultar calendario
//            FechaIngresoDt.Visible = !FechaIngresoDt.Visible;

//            //Que calendario flote
//            FechaIngresoDt.Attributes.Add("style", "position:absolute");
//        }

//        protected void FechaIngresoDt_SelectionChanged(object sender, EventArgs e)
//        {
//            FechaSeleccionadaIngresoTxt.Text = FechaIngresoDt.SelectedDate.ToShortDateString();
//            FechaIngresoDt.Visible = false;
//        }

//        protected void FechaIngresoDt_DayRender(object sender, DayRenderEventArgs e)
//        {
//            if (e.Day.Date > DateTime.Today)
//            {
//                e.Day.IsSelectable = false;
//            }
//        }

//        protected void GerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int gerenciaId;
//            if (int.TryParse(GerenciaDdl.SelectedValue, out gerenciaId))
//            {
//                CargarSubgerencias(gerenciaId);
//            }
//            else
//            {
//                SubgerenciaDdl.Items.Clear();
//                SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
//                DepartamentoDdl.Items.Clear();
//                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//                UbicaciónDdl.Items.Clear();
//                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }

//        protected void SubgerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int subgerenciaId;
//            if (int.TryParse(SubgerenciaDdl.SelectedValue, out subgerenciaId))
//            {
//                CargarDepartamentos(subgerenciaId);
//            }
//            else
//            {
//                DepartamentoDdl.Items.Clear();
//                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//                UbicaciónDdl.Items.Clear();
//                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }

//        protected void DepartamentoDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int departamentoId;
//            if (int.TryParse(DepartamentoDdl.SelectedValue, out departamentoId))
//            {
//                CargarUbicaciones(departamentoId);
//            }
//            else
//            {
//                UbicaciónDdl.Items.Clear();
//                UbicaciónDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }
//    }
//}

