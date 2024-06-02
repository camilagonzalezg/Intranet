using IntranetModel;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        // Variable para indicar si ya se deshabilitó la selección de días futuros

        private IntranetEntities db = new IntranetEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                CargarDatos();
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

        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                if (!UsuarioExiste(RutTxt.Text))
                {
                    Usuarios nuevoUsuario = new Usuarios
                    {
                        nombre = NombreTxt.Text,
                        apellido = ApellidoTxt.Text,
                        fechaNacimiento = DateTime.Parse(FechaNacimientoTxt.Text),
                        rutUsuario = RutTxt.Text,
                        cargo = CargoTxt.Text,
                        idGerencia = string.IsNullOrEmpty(GerenciaDdl.SelectedValue) ? (int?)null : int.Parse(GerenciaDdl.SelectedValue),
                        idSubgerencia = string.IsNullOrEmpty(SubgerenciaDdl.SelectedValue) ? (int?)null : int.Parse(SubgerenciaDdl.SelectedValue),
                        idDepartamento = string.IsNullOrEmpty(DepartamentoDdl.SelectedValue) ? (int?)null : int.Parse(DepartamentoDdl.SelectedValue),
                        idUbicacion = string.IsNullOrEmpty(UbicaciónDdl.SelectedValue) ? (int?)null : int.Parse(UbicaciónDdl.SelectedValue),
                        jefe = JefeTxt.Text,
                        idRolUsuario = string.IsNullOrEmpty(RolUsuarioDdl.SelectedValue) ? (int?)null : int.Parse(RolUsuarioDdl.SelectedValue),
                        idTipoContrato = string.IsNullOrEmpty(ContratoDdl.SelectedValue) ? (int?)null : int.Parse(ContratoDdl.SelectedValue),
                        fechaIngreso = DateTime.Parse(FechaIngresoTxt.Text),
                        email = EmailTxt.Text,
                        celular = string.IsNullOrEmpty(CelularTxt.Text) ? (int?)null : int.Parse(CelularTxt.Text),
                        contraseña = GenerarContraseña()
                    };

                    db.Usuarios.Add(nuevoUsuario);
                    db.SaveChanges();

                    Response.Redirect("VerUsuarios.aspx?mensaje=AgregadoExitosamente");
                }
                else
                {
                    RutCV.ErrorMessage = "El RUT ya existe en la base de datos.";
                    RutCV.IsValid = false;
                }
            }
        }

        private bool UsuarioExiste(string rutUsuario)
        {
            return db.Usuarios.Any(u => u.rutUsuario == rutUsuario);
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

       // Método para generar una contraseña aleatoria de 6 caracteres
        private string GenerarContraseña()
        {
            const string caracteresPermitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random rnd = new Random();
            string contraseña = new string(Enumerable.Repeat(caracteresPermitidos, 6)
                .Select(s => s[rnd.Next(s.Length)]).ToArray());
            return contraseña;
        }

        protected void GerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int gerenciaId = int.Parse(GerenciaDdl.SelectedValue);
            CargarSubgerencias(gerenciaId);
        }

        protected void SubgerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int subgerenciaId = int.Parse(SubgerenciaDdl.SelectedValue);
            CargarDepartamentos(subgerenciaId);
        }

        protected void DepartamentoDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int departamentoId = int.Parse(DepartamentoDdl.SelectedValue);
            CargarUbicaciones(departamentoId);
        }

    }
}