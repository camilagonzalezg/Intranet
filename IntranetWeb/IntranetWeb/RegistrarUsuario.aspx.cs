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
        private bool diasFuturosDeshabilitados = false;
        private IntranetEntities db = new IntranetEntities();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                FechaNacimientoDt.Visible = false;
                FechaIngresoDt.Visible = false;

                CargarDatos();
                diasFuturosDeshabilitados = false;
            }
        }

        private void CargarDatos()
        {
            // Cargar TiposContrato
            var tiposContrato = db.TiposContrato.ToList();
            ContratoDdl.DataSource = tiposContrato;
            ContratoDdl.DataTextField = "nombre";
            ContratoDdl.DataValueField = "id";
            ContratoDdl.DataBind();

            // Cargar Gerencias
            var gerencias = db.Gerencias.ToList();
            GerenciaDdl.DataSource = gerencias;
            GerenciaDdl.DataTextField = "nombre";
            GerenciaDdl.DataValueField = "id";
            GerenciaDdl.DataBind();

            // Cargar Subgerencias
            var subgerencias = db.Subgerencias.ToList();
            SubgerenciaDdl.DataSource = subgerencias;
            SubgerenciaDdl.DataTextField = "nombre";
            SubgerenciaDdl.DataValueField = "id";
            SubgerenciaDdl.DataBind();

            // Cargar Departamentos
            var departamentos = db.Departamentos.ToList();
            DepartamentoDdl.DataSource = departamentos;
            DepartamentoDdl.DataTextField = "nombre";
            DepartamentoDdl.DataValueField = "id";
            DepartamentoDdl.DataBind();

            // Cargar Ubicaciones
            var ubicaciones = db.Ubicaciones.ToList();
            UbicaciónDdl.DataSource = ubicaciones;
            UbicaciónDdl.DataTextField = "nombre";
            UbicaciónDdl.DataValueField = "id";
            UbicaciónDdl.DataBind();
        }

        protected void VerCalendarioBtn_Click(object sender, EventArgs e)
        {
            // Mostrar o ocultar calendario
            FechaNacimientoDt.Visible = !FechaNacimientoDt.Visible;
        }

        protected void VerCalendarioIngresoBtn_Click(object sender, EventArgs e)
        {
            // Mostrar o ocultar calendario
            FechaIngresoDt.Visible = !FechaIngresoDt.Visible;
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
                        fechaNacimiento = FechaNacimientoDt.SelectedDate.Date,
                        rutUsuario = RutTxt.Text,
                        cargo = CargoTxt.Text,
                        gerencia = GerenciaDdl.SelectedValue,
                        subgerencia = SubgerenciaDdl.SelectedValue,
                        departamento = DepartamentoDdl.SelectedValue,
                        ubicacion = UbicaciónDdl.SelectedValue,
                        jefe = JefeTxt.Text,
                        rolUsuario = RolUsuarioDdl.SelectedValue,
                        tipoContrato = ContratoDdl.SelectedValue,
                        fechaIngreso = FechaIngresoDt.SelectedDate.Date,
                        email = EmailTxt.Text,
                        celular = Convert.ToInt32(CelularTxt.Text),
                        contraseña = GenerarContraseña()
                    };

                    db.Usuarios.Add(nuevoUsuario);
                    db.SaveChanges();

                    diasFuturosDeshabilitados = true;
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
            // Validar que rut tenga formato xxxx-x
            String rut = RutTxt.Text.Trim();

            // Caso 1: rut ingresado es vacío
            if (rut == string.Empty)
            {
                RutCV.ErrorMessage = "Debe ingresar el RUT del nuevo colaborador";
                args.IsValid = false;
            }
            else
            {
                // Caso 2: rut posee formato incorrecto
                String[] rutArray = rut.Split('-');

                // Caso ideal: XXXXXXX-X
                // rutArray[0] = XXXXXXXXX
                // rutArray[1] = X
                // rutArray.Length == 2

                if (rutArray.Length == 2)
                {
                    if (rutArray[1].Length != 1)
                    {
                        // Caso 3: digito verificador debe tener largo 1
                        RutCV.ErrorMessage = "El dígito verificador debe tener un sólo caracter";
                        args.IsValid = false;
                    }
                    else
                    {
                        args.IsValid = true;
                    }
                }
                else
                {
                    // Caso 2 rut posee formato incorrecto Ej:xx-x-x
                    RutCV.ErrorMessage = "Rut no posee el formato correcto";
                    args.IsValid = false;
                }
            }
        }

        protected void FechaNacimientoDt_SelectionChanged(object sender, EventArgs e)
        {
            FechaSeleccionadaTxt.Text = FechaNacimientoDt.SelectedDate.ToShortDateString();
        }

        protected void FechaNacimientoDt_DayRender(object sender, DayRenderEventArgs e)
        {
            // Solo deshabilitar días futuros si la bandera indica que aún no se ha hecho
            if (!diasFuturosDeshabilitados && e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false; // Deshabilitar la selección de días futuros
            }
        }

        protected void FechaIngresoDt_SelectionChanged(object sender, EventArgs e)
        {
            FechaSeleccionadaIngresoTxt.Text = FechaIngresoDt.SelectedDate.ToShortDateString();
        }

        protected void FechaIngresoDt_DayRender(object sender, DayRenderEventArgs e)
        {
            if (e.Day.Date > DateTime.Today)
            {
                e.Day.IsSelectable = false; // Deshabilitar la selección de días futuros
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
    }
}
