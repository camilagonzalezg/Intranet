using IntranetModel.DAL;
using IntranetModel;
using System;
using System.Web.UI;

namespace IntranetWeb
{
    public partial class AgregarNacimiento : System.Web.UI.Page
    {
        UsuariosDAL usuariosDAL = new UsuariosDAL();
        HijosDAL hijosDAL = new HijosDAL();

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string rutUsuario = Request.QueryString["rut"];
                if (!string.IsNullOrEmpty(rutUsuario))
                {
                    Usuarios usuario = usuariosDAL.GetByRut(rutUsuario);
                    if (usuario != null)
                    {
                        NombreLbl.Text = usuario.nombre; // Accediendo a la propiedad "nombre" de la clase Usuarios
                        ApellidoLbl.Text = usuario.apellido; // Accediendo a la propiedad "apellido" de la clase Usuarios
                        CargoLbl.Text = usuario.cargo; // Accediendo a la propiedad "cargo" de la clase Usuarios
                        GerenciaLbl.Text = usuario.Gerencias?.nombre; // Accediendo a la propiedad "nombre" de la clase Gerencias
                        SubgerenciaLbl.Text = usuario.Subgerencias?.nombre; // Accediendo a la propiedad "nombre" de la clase Subgerencias
                        DepartamentoLbl.Text = usuario.Departamentos?.nombre; // Accediendo a la propiedad "nombre" de la clase Departamentos
                    }
                    else
                    {
                        FormularioPanel.Visible = false;
                        ErrorPanel.Visible = true;
                        ErrorLabel.Text = "Usuario no encontrado.";
                    }
                }
                else
                {
                    FormularioPanel.Visible = false;
                    ErrorPanel.Visible = true;
                    ErrorLabel.Text = "No se ha proporcionado un RUT de usuario.";
                }
            }
        }

        protected void GuardarBtn_Click(object sender, EventArgs e)
        {
            string rutUsuario = Request.QueryString["rut"];
            if (!string.IsNullOrEmpty(rutUsuario))
            {
                string nombreHijo = NombreHijoTxt.Text;
                DateTime fechaNacimiento;
                if (DateTime.TryParse(FechaNacimientoTxt.Text, out fechaNacimiento))
                {
                    Hijos nuevoHijo = new Hijos()
                    {
                        rutUsuario = rutUsuario,
                        nombre = nombreHijo, // Usar "nombre" para el nombre del hijo
                        fechanacimientohijo = fechaNacimiento // Usar "fechanacimientohijo" para la fecha de nacimiento
                    };
                    hijosDAL.Add(nuevoHijo);
                    Response.Redirect("RegistrarNacimiento.aspx?mensaje=NacimientoAgregado");
                }
                else
                {
                    ErrorPanel.Visible = true;
                    ErrorLabel.Text = "Fecha de nacimiento no válida.";
                }
            }
        }
    }
}
