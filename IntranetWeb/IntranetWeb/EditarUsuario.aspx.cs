﻿using IntranetModel.DAL;
using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class EditarUsuario : System.Web.UI.Page
    {
        UsuariosDAL usuariosDAL = new UsuariosDAL();
        private string rutUsuarioEditar; // Variable para almacenar el Rut del usuario a editar

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Verificar si se ha pasado un parámetro de Rut en la URL
                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
                {
                    // Obtener el Rut del usuario a editar desde la URL
                    rutUsuarioEditar = Request.QueryString["rut"];

                    // Cargar los datos del usuario a editar en los controles correspondientes
                    CargarDatosUsuario(rutUsuarioEditar);
                }
                else
                {
                    // Si no se proporciona un Rut válido en la URL, redirigir a la página de error o alguna otra página
                    Response.Redirect("Error.aspx");
                }
            }
        }

        // Método para cargar los datos del usuario a editar en los controles del formulario
        private void CargarDatosUsuario(string rut)
        {
            // Obtener el usuario a editar desde la base de datos
            Usuario usuario = usuariosDAL.GetByRut(rut);

            // Verificar si se encontró el usuario
            if (usuario != null)
            {
                // Mostrar los datos del usuario en los controles correspondientes
                NombreTxt.Text = usuario.Nombre;
                ApellidoTxt.Text = usuario.Apellido;
                RutTxt.Text = usuario.RutUsuario;
                CargoTxt.Text = usuario.Cargo;
                GerenciaDdl.SelectedValue = usuario.Gerencia;
                SubgerenciaDdl.SelectedValue = usuario.Subgerencia;
                DepartamentoDdl.SelectedValue = usuario.Departamento;
                UbicaciónDdl.SelectedValue = usuario.Ubicacion;
                JefeDdl.SelectedValue = usuario.Jefe;
                FechaSeleccionadaIngresoTxt.Text = usuario.FechaIngreso.ToShortDateString();
                ContratoDdl.SelectedValue = usuario.TipoContrato;
                RolUsuarioDdl.SelectedValue = usuario.RolUsuario.ToString();
                EmailTxt.Text = usuario.Email;
                CelularTxt.Text = usuario.Celular.ToString();
            }
            else
            {
                // Si no se encuentra el usuario, redirigir a la página de error o alguna otra página
                Response.Redirect("Error.aspx");
            }
        }

        // Evento para manejar el clic en el botón "Guardar Cambios"
        protected void GuardarUsuarioBtn_Click(object sender, EventArgs e)
        {
            // Obtener los datos actualizados del usuario desde los controles del formulario
            string nombre = NombreTxt.Text;
            string apellido = ApellidoTxt.Text;
            string rut = RutTxt.Text;
            string cargo = CargoTxt.Text;
            string gerencia = GerenciaDdl.SelectedValue;
            string subgerencia = SubgerenciaDdl.SelectedValue;
            string departamento = DepartamentoDdl.SelectedValue;
            string ubicacion = UbicaciónDdl.SelectedValue;
            string jefe = JefeDdl.SelectedValue;
            DateTime fechaIngreso = Convert.ToDateTime(FechaSeleccionadaIngresoTxt.Text);
            string tipoContrato = ContratoDdl.SelectedValue;
            int rolUsuario = Convert.ToInt32(RolUsuarioDdl.SelectedValue);
            string email = EmailTxt.Text;
            int celular = Convert.ToInt32(CelularTxt.Text);

            // Crear un objeto Usuario con los datos actualizados
            Usuario usuario = new Usuario
            {
                Nombre = nombre,
                Apellido = apellido,
                RutUsuario = rut,
                Cargo = cargo,
                Gerencia = gerencia,
                Subgerencia = subgerencia,
                Departamento = departamento,
                Ubicacion = ubicacion,
                Jefe = jefe,
                FechaIngreso = fechaIngreso,
                TipoContrato = tipoContrato,
                RolUsuario = rolUsuario,
                Email = email,
                Celular = celular
            };

            // Llamar al método de actualización en el DAL
            usuariosDAL.Update(usuario);

            // Redirigir a la página de VerUsuarios.aspx con un mensaje de éxito
            Response.Redirect("VerUsuarios.aspx?mensaje=ActualizadoExitosamente");
        }
    }
}