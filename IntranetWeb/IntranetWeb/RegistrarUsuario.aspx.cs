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
    public partial class RegistrarUsuario : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                List<Contrato> contratos = new ContratosDAL().GetAll();
                ContratoDdl.DataSource = contratos;
                ContratoDdl.DataTextField = "Nombre";
                ContratoDdl.DataValueField = "Nombre";
                ContratoDdl.DataBind();
            }

        }

        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string nombre = NombreTxt.Text;
                string apellido = ApellidoTxt.Text;
                DateTime fechaNacimiento = FechaNacimientoDt.SelectedDate;
                string rutUsuario = RutTxt.Text;
                string gerencia = GerenciaDdl.SelectedValue;
                string subgerencia = SubgerenciaDdl.SelectedValue;
                string departamento = DepartamentoDdl.SelectedValue;
                string ubicacion = UbicaciónDdl.SelectedValue;
                string jefe = JefeDdl.SelectedValue;
                int rolUsuario = Convert.ToInt32(RolUsuarioDdl.SelectedValue);
                string tipoContrato = ContratoDdl.SelectedValue;
                DateTime fechaIngreso = FechaIngresoDt.SelectedDate;
                DateTime fechaTermino = FechaTerminoDt.SelectedDate;
                string email = EmailTxt.Text;
                int celular = Convert.ToInt32(CelularTxt.Text);
                string info = InfoExtraTxt.Text;

                Usuario u = new Usuario();
                u.Nombre = nombre;
                u.Apellido = apellido;
                u.FechaNacimiento = fechaNacimiento;
                u.RutUsuario = rutUsuario;
                u.Gerencia = gerencia;
                u.Subgerencia = subgerencia;
                u.Departamento = departamento;
                u.Ubicacion = ubicacion;
                u.Jefe = jefe;
                u.RolUsuario = rolUsuario;
                u.TipoContrato  = tipoContrato;
                u.FechaIngreso = fechaIngreso;
                u.FechaTermino = fechaTermino;
                u.Email = email;
                u.Celular = celular;
                u.Info = info;

                UsuariosDAL usuariosDAL = new UsuariosDAL();
                usuariosDAL.Add(u);


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

        protected void VerCalendarioBtn_Click(object sender, EventArgs e)
        {

        }
    }
}