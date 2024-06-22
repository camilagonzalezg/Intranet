using System;
using System.Web.UI;

namespace IntranetWeb
{
    public partial class NuestraEmpresa : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Aquí puedes añadir lógica para cargar datos si es necesario
            }

            AddDropdownActivationScript(); // Agrega el script para activar los dropdowns
        }

        private void AddDropdownActivationScript()
        {
            string script = @"
                <script type='text/javascript'>
                    function activarDropdownList() {
                        var dropdownElements = document.querySelectorAll('.dropdown-toggle');
                        dropdownElements.forEach(function(element) {
                            var dropdown = new bootstrap.Dropdown(element);
                        });
                    }
                    document.addEventListener('DOMContentLoaded', activarDropdownList);
                </script>";
            Page.ClientScript.RegisterStartupScript(this.GetType(), "DropdownScript", script);
        }
    }
}
