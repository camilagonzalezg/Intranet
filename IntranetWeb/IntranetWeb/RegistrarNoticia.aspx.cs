//using System;
//using System.Collections.Generic;
//using System.Linq;
//using System.Web;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace IntranetWeb
//{
//    public partial class RegistrarNoticia : System.Web.UI.Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {

//        }

//        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
//        {

//        }
//    }
//}
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using AjaxControlToolkit;

namespace IntranetWeb
{
    public partial class RegistrarNoticia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GuardarNoticiaBtn_Click(object sender, EventArgs e)
        {
            string titulo = TituloTxt.Text;
            string metaDescripcion = MetaDescripcionTxt.Text;
            string fechaPublicacion = FechaPublicacionInput.Text;
            string tags = TagsRadioList.SelectedValue;
            string contenidoNoticia = Request.Form["ContenidoNoticiaTxt"];

            if (string.IsNullOrWhiteSpace(contenidoNoticia))
            {
                // Mostrar mensaje de error (puedes usar un Label para esto)
                ErrorMessageLabel.Text = "Debe ingresar contenido";
                ErrorMessageLabel.Visible = true;
                return;
            }

            // Continuar con el guardado de la noticia
        }
    }
}
