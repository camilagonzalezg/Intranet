using System;
using System.IO;
using System.Web.UI;
using IntranetModel;
using IntranetDAL;

namespace IntranetWeb
{
    public partial class EditarCorrespondencia : System.Web.UI.Page
    {
        private CorrespondenciasDAL correspondenciasDAL = new CorrespondenciasDAL();
        private int correspondenciaId;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.QueryString["id"] != null)
                {
                    correspondenciaId = int.Parse(Request.QueryString["id"]);
                    CargarCorrespondencia(correspondenciaId);
                }
                else
                {
                    Response.Redirect("VerCorrespondencias.aspx");
                }
            }
        }

        private void CargarCorrespondencia(int id)
        {
            Correspondencias correspondencia = correspondenciasDAL.GetCorrespondenciaById(id);

            if (correspondencia != null)
            {
                NombreArchivoTxt.Text = correspondencia.nombreArchivo;
                DescripcionArchivoTxt.Text = correspondencia.descripcionArchivo;
                FechaIngresoInput.Text = correspondencia.fechaIngreso?.ToString("yyyy-MM-dd");
                FechaCierreInput.Text = correspondencia.fechaCierre?.ToString("yyyy-MM-dd");
            }
            else
            {
                Response.Redirect("VerCorrespondencias.aspx");
            }
        }

        protected void GuardarCorrespondenciaBtn_Click(object sender, EventArgs e)
        {
            if (Request.QueryString["id"] != null)
            {
                correspondenciaId = int.Parse(Request.QueryString["id"]);
                ActualizarCorrespondencia(correspondenciaId);
            }
            else
            {
                Response.Redirect("VerCorrespondencias.aspx");
            }
        }

        private void ActualizarCorrespondencia(int id)
        {
            Correspondencias correspondencia = correspondenciasDAL.GetCorrespondenciaById(id);

            if (correspondencia != null)
            {
                correspondencia.nombreArchivo = NombreArchivoTxt.Text;
                correspondencia.descripcionArchivo = DescripcionArchivoTxt.Text;

                if (DateTime.TryParse(FechaIngresoInput.Text, out DateTime fechaIngreso))
                {
                    correspondencia.fechaIngreso = fechaIngreso;
                }

                if (DateTime.TryParse(FechaCierreInput.Text, out DateTime fechaCierre))
                {
                    correspondencia.fechaCierre = fechaCierre;
                }

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
                    string filePath = Path.Combine(fullPath, fileName);
                    FileUploadControl.SaveAs(filePath);

                    correspondencia.rutaArchivo = Path.Combine("Correspondencias", relativePath, fileName).Replace("\\", "/");
                }

                correspondenciasDAL.UpdateCorrespondencia(correspondencia);

                Response.Redirect("VerCorrespondencias.aspx?mensaje=ActualizadoExitosamente");
            }
        }
    }
}
