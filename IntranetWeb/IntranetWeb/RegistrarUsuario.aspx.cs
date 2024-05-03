using IntranetModel.DAL;
using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{

    public partial class RegistrarUsuario : System.Web.UI.Page
    {

        // Variable para indicar si ya se deshabilitó la selección de días futuros
        private bool diasFuturosDeshabilitados = false;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                //Verificar que es la primera vez que se muestra
                FechaNacimientoDt.Visible = false;
                FechaIngresoDt.Visible = false;

                List<Contrato> contratos = new ContratosDAL().GetAll();
                ContratoDdl.DataSource = contratos;
                ContratoDdl.DataTextField = "Nombre";
                ContratoDdl.DataValueField = "Nombre";
                ContratoDdl.DataBind();

                // Restablecer la bandera a false al cargar la página
                diasFuturosDeshabilitados = false;
            }

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


                string nombre = NombreTxt.Text;
                string apellido = ApellidoTxt.Text;
                DateTime fechaNacimiento = FechaNacimientoDt.SelectedDate.Date;
                string rutUsuario = RutTxt.Text;
                string cargo = CargoTxt.Text;
                string gerencia = GerenciaDdl.SelectedValue;
                string subgerencia = SubgerenciaDdl.SelectedValue;
                string departamento = DepartamentoDdl.SelectedValue;
                string ubicacion = UbicaciónDdl.SelectedValue;
                string jefe = JefeDdl.SelectedValue;
                int rolUsuario = Convert.ToInt32(RolUsuarioDdl.SelectedValue);
                string tipoContrato = ContratoDdl.SelectedValue;
                DateTime fechaIngreso = FechaIngresoDt.SelectedDate.Date;
                string email = EmailTxt.Text;
                int celular = Convert.ToInt32(CelularTxt.Text);

                Usuario u = new Usuario();
                u.Nombre = nombre;
                u.Apellido = apellido;
                u.FechaNacimiento = fechaNacimiento;
                u.RutUsuario = rutUsuario;
                u.Cargo = cargo;
                u.Gerencia = gerencia;
                u.Subgerencia = subgerencia;
                u.Departamento = departamento;
                u.Ubicacion = ubicacion;
                u.Jefe = jefe;
                u.RolUsuario = rolUsuario;
                u.TipoContrato  = tipoContrato;
                u.FechaIngreso = fechaIngreso;
                u.Email = email;
                u.Celular = celular;

                UsuariosDAL usuariosDAL = new UsuariosDAL();
                usuariosDAL.Add(u);

                // Establecer la bandera a true para indicar que se deshabilitaron los días futuros
                diasFuturosDeshabilitados = true;

                // Redireccionar a la página VerUsuarios.aspx con el parámetro de mensaje
                Response.Redirect("VerUsuarios.aspx?mensaje=AgregadoExitosamente");
            }
            else
            {

            }
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //Validar que rut tenga formato xxxx-x
            String rut = RutTxt.Text.Trim();

            //Caso 1: rut ingresado es vacío
            if (rut == string.Empty)
            {
                RutCV.ErrorMessage = "Debe ingresar el RUT del nuevo colaborador";
                args.IsValid = false;
            }
            else
            {
                //Caso 2: rut posee formato incorrecto
                String[] rutArray = rut.Split('-');

                //Caso ideal: XXXXXXX-X
                // rutArray[0] = XXXXXXXXX
                // rutArray[1] = X
                // rutArray.Length == 2

                if (rutArray.Length == 2)
                {
                    if (rutArray[1].Length != 1)
                    {
                        //Caso 3: digito verificador debe tener largo 1
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
                    //Caso 2 rut posee formato incorrecto Ej:xx-x-x
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


    }
}