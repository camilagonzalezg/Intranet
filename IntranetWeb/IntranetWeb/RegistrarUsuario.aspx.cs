using IntranetModel;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Security.Cryptography;

namespace IntranetWeb
{
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
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
                    byte[] salt;
                    string contraseñaSimple = GenerarContraseña();
                    string hashedPassword = HashPassword(contraseñaSimple, out salt);

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
                        celular = string.IsNullOrEmpty(CelularTxt.Text) ? (int?)null : int.TryParse(CelularTxt.Text, out int celularResult) ? celularResult : (int?)null,
                        contraseña = hashedPassword,
                        salt = Convert.ToBase64String(salt)
                    };

                    db.Usuarios.Add(nuevoUsuario);
                    db.SaveChanges();

                    // Enviar la contraseña simple por correo
                    EnviarCorreoContraseñaSimple(contraseñaSimple, nuevoUsuario.email);

                    Response.Redirect("VerUsuarios.aspx?mensaje=AgregadoExitosamente");
                }
                else
                {
                    RutCV.ErrorMessage = "El RUT ya existe en la base de datos.";
                    RutCV.IsValid = false;
                }
            }
        }

        private void EnviarCorreoContraseñaSimple(string contraseñaSimple, string email)
        {
            try
            {
                var fromAddress = new MailAddress("camilag@gmail.com", "AFC Intranet");
                var toAddress = new MailAddress(email);
                const string fromPassword = ""; // Contraseña de aplicación
                const string subject = "Contraseña Temporal";
                string body = $"Su contraseña temporal es: {contraseñaSimple}";

                var smtp = new SmtpClient
                {
                    Host = "smtp.gmail.com",
                    Port = 587,
                    EnableSsl = true,
                    DeliveryMethod = SmtpDeliveryMethod.Network,
                    UseDefaultCredentials = false,
                    Credentials = new System.Net.NetworkCredential(fromAddress.Address, fromPassword)
                };

                using (var message = new MailMessage(fromAddress, toAddress)
                {
                    Subject = subject,
                    Body = body
                })
                {
                    smtp.Send(message);
                }
            }
            catch (Exception ex)
            {
                // Manejar errores de envío de correo
                // Puedes registrar el error o mostrar un mensaje de error
                Console.WriteLine("Error al enviar el correo: " + ex.Message);
            }
        }

        private bool UsuarioExiste(string rutUsuario)
        {
            return db.Usuarios.Any(u => u.rutUsuario == rutUsuario);
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            // Se crea objeto Validador
            Validador objValida = new Validador();

            // Entra el dato de rut
            objValida.ValidaVacio(RutTxt.Text.Trim());
            objValida.ValidaNumDigVerificador(RutTxt.Text.Trim());
            objValida.ValidaDigito(RutTxt.Text.Trim());

            // Se evalúa si estado es "correcto" o "incorrecto"
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

        // Métodos de hash y verificación de contraseñas
        private static string HashPassword(string password, out byte[] salt)
        {
            // Genera una sal
            salt = new byte[128 / 8];
            using (var rng = RandomNumberGenerator.Create())
            {
                rng.GetBytes(salt);
            }

            // Hashea la contraseña con la sal usando PBKDF2
            var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(256 / 8);
            return Convert.ToBase64String(hash);
        }

        private static bool VerifyPassword(string password, string hashedPassword, byte[] salt)
        {
            var pbkdf2 = new Rfc2898DeriveBytes(password, salt, 10000);
            byte[] hash = pbkdf2.GetBytes(256 / 8);
            return Convert.ToBase64String(hash) == hashedPassword;
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
