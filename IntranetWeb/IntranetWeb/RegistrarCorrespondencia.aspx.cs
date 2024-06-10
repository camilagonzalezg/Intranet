using System;
using System.IO;
using System.Web.UI;
using IntranetModel;
using IntranetDAL;

namespace IntranetWeb
{
    public partial class RegistrarCorrespondencia : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void GuardarCorrespondenciaBtn_Click(object sender, EventArgs e)
        {
            string nombreArchivo = NombreArchivoTxt.Text;
            string descripcionArchivo = DescripcionArchivoTxt.Text;
            string fechaIngresoStr = FechaIngresoInput.Text;
            string fechaCierreStr = FechaCierreInput.Text;

            if (string.IsNullOrWhiteSpace(nombreArchivo) || string.IsNullOrWhiteSpace(descripcionArchivo))
            {
                ErrorMessageLabel.Text = "Debe ingresar el nombre y la descripción del archivo";
                ErrorMessageLabel.Visible = true;
                return;
            }

            DateTime? fechaIngreso = null;
            if (DateTime.TryParse(fechaIngresoStr, out DateTime parsedFechaIngreso))
            {
                fechaIngreso = parsedFechaIngreso;
            }

            DateTime? fechaCierre = null;
            if (DateTime.TryParse(fechaCierreStr, out DateTime parsedFechaCierre))
            {
                fechaCierre = parsedFechaCierre;
            }

            var usuario = Session["Usuario"] as Usuarios;
            if (usuario == null)
            {
                Response.Redirect("Login.aspx");
                return;
            }

            string filePath = null;
            if (FileUploadControl.HasFile)
            {
                string basePath = Server.MapPath("~/Correspondencias/");
                string relativePath = $"{DateTime.Now.Year}/{DateTime.Now.Month}/";
                string fullPath = Path.Combine(basePath, relativePath);

                if (!Directory.Exists(fullPath))
                {
                    Directory.CreateDirectory(fullPath);
                }

                string fileName = Path.GetFileName(FileUploadControl.FileName);
                filePath = Path.Combine(fullPath, fileName);
                FileUploadControl.SaveAs(filePath);

                filePath = Path.Combine("Correspondencias", relativePath, fileName).Replace("\\", "/");
            }

            Correspondencias nuevaCorrespondencia = new Correspondencias
            {
                usuario = usuario.rutUsuario,
                nombreArchivo = nombreArchivo,
                descripcionArchivo = descripcionArchivo,
                fechaIngreso = fechaIngreso,
                fechaCierre = fechaCierre,
                rutaArchivo = filePath // Asegúrate de guardar la ruta del archivo
            };

            CorrespondenciasDAL correspondenciasDAL = new CorrespondenciasDAL();
            correspondenciasDAL.AddCorrespondencia(nuevaCorrespondencia);

            Response.Redirect("VerCorrespondencias.aspx?mensaje=AgregadoExitosamente");
        }
    }
}
