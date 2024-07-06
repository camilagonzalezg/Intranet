using IntranetModel;
using System;
using System.Linq;
using System.Security.Cryptography;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

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
                    ViewState["rutUsuarioEditar"] = rutUsuarioEditar; // Guarda en ViewState
                    CargarDatosUsuario(rutUsuarioEditar);
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
            else
            {
                rutUsuarioEditar = ViewState["rutUsuarioEditar"] as string; // Recupera de ViewState
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

                    db.SaveChanges();

                    Response.Redirect("VerUsuarios.aspx?mensaje=ActualizadoExitosamente");
                }
                else
                {
                    Response.Redirect("Error.aspx");
                }
            }
        }

        protected void GenerarContraseñaBtn_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(rutUsuarioEditar))
            {
                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rutUsuarioEditar);
                if (usuario != null)
                {
                    string nuevaContraseña = GenerarContraseña();
                    byte[] salt;
                    string hashedPassword = HashPassword(nuevaContraseña, out salt);

                    usuario.contraseña = hashedPassword;
                    usuario.salt = Convert.ToBase64String(salt);
                    db.SaveChanges();

                    Console.WriteLine("Nueva contraseña generada para el usuario: " + usuario.email);
                    bool correoEnviado = EnviarCorreoContraseñaSimple(nuevaContraseña, usuario.email);

                    if (correoEnviado)
                    {
                        lblMensaje.Text = "Nueva contraseña generada y enviada por correo.";
                        lblMensaje.CssClass = "text-success";
                    }
                    else
                    {
                        lblMensaje.Text = "No se pudo enviar el correo electrónico.";
                        lblMensaje.CssClass = "text-danger";
                    }

                    lblMensaje.Visible = true;
                }
                else
                {
                    Console.WriteLine("Usuario no encontrado para RUT: " + rutUsuarioEditar);
                    lblMensaje.Text = "Usuario no encontrado.";
                    lblMensaje.CssClass = "text-danger";
                    lblMensaje.Visible = true;
                }
            }
            else
            {
                Console.WriteLine("RUT de usuario para editar está vacío.");
                lblMensaje.Text = "RUT de usuario no especificado.";
                lblMensaje.CssClass = "text-danger";
                lblMensaje.Visible = true;
            }
        }

        private bool EnviarCorreoContraseñaSimple(string contraseñaSimple, string email)
        {
            try
            {
                var fromAddress = new MailAddress("camilag@gmail.com", "Tu Nombre");
                var toAddress = new MailAddress(email);
                const string fromPassword = ""; // Contraseña de aplicación
                const string subject = "Nueva Contraseña Temporal";
                string body = $"Su nueva contraseña temporal es: {contraseñaSimple}";

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
                    Console.WriteLine("Correo enviado exitosamente a: " + email);
                    return true; // Envío exitoso
                }
            }
            catch (SmtpFailedRecipientException ex)
            {
                Console.WriteLine("Error al enviar el correo a " + ex.FailedRecipient + ": " + ex.Message);
            }
            catch (SmtpException ex)
            {
                Console.WriteLine("Error de SMTP: " + ex.Message);
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error general al enviar el correo: " + ex.Message);
            }

            return false; // Envío fallido
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

        private string GenerarContraseña()
        {
            const string caracteresPermitidos = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            Random rnd = new Random();
            string contraseña = new string(Enumerable.Repeat(caracteresPermitidos, 6)
                .Select(s => s[rnd.Next(s.Length)]).ToArray());
            return contraseña;
        }
    }
}


