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
    }
}