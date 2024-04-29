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
            string[] contratos = { "Definido", "Indefinido" };
            ContratoDdl.DataSource = contratos;
            ContratoDdl.DataBind();

            string[] usuarios = { "Colaborador", "Administrador", "Gerencia" };
            RolUsuarioDdl.DataSource = usuarios;
            RolUsuarioDdl.DataBind();

        }

        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {

            } else
            {

            }
        }

        protected void RutCV_ServerValidate(object source, ServerValidateEventArgs args)
        {
            //Validar que rut tenga formato xxxx-x
            String rut = RutTxt.Text.Trim();

            //Caso 1: rut ingresado es vacío
            if(rut == string.Empty)
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
                    if(rutArray[1].Length != 1)
                    {
                        //Caso 3: digito verificador debe tener largo 1
                        RutCV.ErrorMessage = "El dígito verificador debe tener un sólo caracter";
                        args.IsValid = false;
                    }
                    else
                    {
                        args.IsValid = true;
                    }                   
                } else
                {
                    //Caso 2 rut posee formato incorrecto Ej:xx-x-x
                    RutCV.ErrorMessage = "Rut no posee el formato correcto";
                    args.IsValid = false;
                }



            }

        }
    }
}