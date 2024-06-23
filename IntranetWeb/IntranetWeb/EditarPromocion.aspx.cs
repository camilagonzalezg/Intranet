//using IntranetModel;
//using System;
//using System.Linq;
//using System.Web.UI;
//using System.Web.UI.WebControls;

//namespace IntranetWeb
//{
//    public partial class EditarPromocion : System.Web.UI.Page
//    {
//        private IntranetEntities db = new IntranetEntities();
//        private string rutUsuarioEditar;

//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                CargarDatos();

//                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
//                {
//                    rutUsuarioEditar = Request.QueryString["rut"];
//                    CargarDatosUsuario(rutUsuarioEditar);
//                }
//                else
//                {
//                    Response.Redirect("Error.aspx");
//                }
//            }
//        }

//        private void CargarDatos()
//        {
//            // Cargar Gerencias
//            var gerencias = db.Gerencias.ToList();
//            GerenciaDdl.DataSource = gerencias;
//            GerenciaDdl.DataTextField = "nombre";
//            GerenciaDdl.DataValueField = "id";
//            GerenciaDdl.DataBind();
//            GerenciaDdl.Items.Insert(0, new ListItem("Elija una Gerencia", ""));

//            // Inicialmente cargar todas las Subgerencias, Departamentos y Ubicaciones
//            CargarSubgerencias();
//            CargarDepartamentos();
//            CargarUbicaciones();
//        }

//        private void CargarSubgerencias(int? gerenciaId = null)
//        {
//            var subgerencias = gerenciaId.HasValue
//                ? db.Subgerencias.Where(s => s.idGerencia == gerenciaId).ToList()
//                : db.Subgerencias.ToList();
//            SubgerenciaDdl.DataSource = subgerencias;
//            SubgerenciaDdl.DataTextField = "nombre";
//            SubgerenciaDdl.DataValueField = "id";
//            SubgerenciaDdl.DataBind();
//            SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
//        }

//        private void CargarDepartamentos(int? subgerenciaId = null)
//        {
//            var departamentos = subgerenciaId.HasValue
//                ? db.Departamentos.Where(d => d.idSubgerencia == subgerenciaId).ToList()
//                : db.Departamentos.ToList();
//            DepartamentoDdl.DataSource = departamentos;
//            DepartamentoDdl.DataTextField = "nombre";
//            DepartamentoDdl.DataValueField = "id";
//            DepartamentoDdl.DataBind();
//            DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//        }

//        private void CargarUbicaciones(int? departamentoId = null)
//        {
//            var ubicaciones = departamentoId.HasValue
//                ? db.Ubicaciones.Where(u => u.idDepartamento == departamentoId).ToList()
//                : db.Ubicaciones.ToList();
//            UbicacionDdl.DataSource = ubicaciones;
//            UbicacionDdl.DataTextField = "nombre";
//            UbicacionDdl.DataValueField = "id";
//            UbicacionDdl.DataBind();
//            UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//        }

//        private void CargarDatosUsuario(string rut)
//        {
//            Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

//            if (usuario != null)
//            {
//                NombreTxt.Text = usuario.nombre;
//                ApellidoTxt.Text = usuario.apellido;
//                CargoTxt.Text = usuario.cargo;
//                GerenciaDdl.SelectedValue = usuario.idGerencia.HasValue ? usuario.idGerencia.Value.ToString() : "";
//                CargarSubgerencias(usuario.idGerencia);
//                SubgerenciaDdl.SelectedValue = usuario.idSubgerencia.HasValue ? usuario.idSubgerencia.Value.ToString() : "";
//                CargarDepartamentos(usuario.idSubgerencia);
//                DepartamentoDdl.SelectedValue = usuario.idDepartamento.HasValue ? usuario.idDepartamento.Value.ToString() : "";
//                CargarUbicaciones(usuario.idDepartamento);
//                UbicacionDdl.SelectedValue = usuario.idUbicacion.HasValue ? usuario.idUbicacion.Value.ToString() : "";
//                JefeTxt.Text = usuario.jefe;
//            }
//            else
//            {
//                Response.Redirect("Error.aspx");
//            }
//        }

//        protected void GuardarPromocionBtn_Click(object sender, EventArgs e)
//        {
//            if (Page.IsValid)
//            {
//                try
//                {
//                    // Obtener valores de los campos
//                    string cargo = CargoTxt.Text;
//                    int idGerencia = int.Parse(GerenciaDdl.SelectedValue);
//                    int idSubgerencia = int.Parse(SubgerenciaDdl.SelectedValue);
//                    int idDepartamento = int.Parse(DepartamentoDdl.SelectedValue);
//                    int idUbicacion = int.Parse(UbicacionDdl.SelectedValue);
//                    string jefe = JefeTxt.Text;
//                    DateTime fechaPromocion = Convert.ToDateTime(FechaPromocionTxt.Text);

//                    // Buscar el usuario en la base de datos
//                    Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rutUsuarioEditar);
//                    if (usuario != null)
//                    {
//                        // Actualizar datos del usuario
//                        usuario.cargo = cargo;
//                        usuario.idGerencia = idGerencia;
//                        usuario.idSubgerencia = idSubgerencia;
//                        usuario.idDepartamento = idDepartamento;
//                        usuario.idUbicacion = idUbicacion;
//                        usuario.jefe = jefe;

//                        // Crear nueva promoción
//                        Promociones nuevaPromocion = new Promociones
//                        {
//                            RutUsuario = usuario.rutUsuario,
//                            FechaPromocion = fechaPromocion
//                        };
//                        db.Promociones.Add(nuevaPromocion);

//                        // Guardar cambios en la base de datos
//                        db.SaveChanges();

//                        // Redirigir a la página de promociones con mensaje de éxito
//                        Response.Redirect("~/VerPromociones.aspx?mensaje=Promocion+agregada+exitosamente");
//                    }
//                    else
//                    {
//                        // Usuario no encontrado, redirigir a página de error
//                        Response.Redirect("~/Error.aspx?mensaje=Usuario no encontrado");
//                    }
//                }
//                catch (Exception ex)
//                {
//                    // Manejar excepciones y redirigir a página de error
//                    Response.Redirect($"~/Error.aspx?mensaje={ex.Message}");
//                }
//            }
//        }



//        protected void GerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int gerenciaId;
//            if (int.TryParse(GerenciaDdl.SelectedValue, out gerenciaId))
//            {
//                CargarSubgerencias(gerenciaId);
//            }
//            else
//            {
//                SubgerenciaDdl.Items.Clear();
//                SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
//                DepartamentoDdl.Items.Clear();
//                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//                UbicacionDdl.Items.Clear();
//                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }

//        protected void SubgerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int subgerenciaId;
//            if (int.TryParse(SubgerenciaDdl.SelectedValue, out subgerenciaId))
//            {
//                CargarDepartamentos(subgerenciaId);
//            }
//            else
//            {
//                DepartamentoDdl.Items.Clear();
//                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
//                UbicacionDdl.Items.Clear();
//                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }

//        protected void DepartamentoDdl_SelectedIndexChanged(object sender, EventArgs e)
//        {
//            int departamentoId;
//            if (int.TryParse(DepartamentoDdl.SelectedValue, out departamentoId))
//            {
//                CargarUbicaciones(departamentoId);
//            }
//            else
//            {
//                UbicacionDdl.Items.Clear();
//                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
//            }
//        }
//    }
//}





using IntranetModel;
using System;
using System.Linq;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IntranetWeb
{
    public partial class EditarPromocion : System.Web.UI.Page
    {
        private IntranetEntities db = new IntranetEntities();
        private string rutUsuarioEditar;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!string.IsNullOrEmpty(Request.QueryString["rut"]))
                {
                    rutUsuarioEditar = Request.QueryString["rut"];
                    if (!string.IsNullOrEmpty(rutUsuarioEditar))
                    {
                        CargarDatosUsuario(rutUsuarioEditar);
                    }
                    else
                    {
                        Response.Redirect("~/Error.aspx?mensaje=Falta+el+parámetro+de+rut");
                    }
                }
                else
                {
                    Response.Redirect("~/Error.aspx?mensaje=Falta+el+parámetro+de+rut");
                }

                CargarDatos();
            }
        }

        private void CargarDatos()
        {
            try
            {
                // Cargar Gerencias
                var gerencias = db.Gerencias.ToList();
                GerenciaDdl.DataSource = gerencias;
                GerenciaDdl.DataTextField = "nombre";
                GerenciaDdl.DataValueField = "id";
                GerenciaDdl.DataBind();
                GerenciaDdl.Items.Insert(0, new ListItem("Elija una Gerencia", ""));
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+gerencias:+{ex.Message}");
            }

            try
            {
                // Inicialmente cargar todas las Subgerencias, Departamentos y Ubicaciones
                CargarSubgerencias();
                CargarDepartamentos();
                CargarUbicaciones();
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+datos+iniciales:+{ex.Message}");
            }
        }

        private void CargarSubgerencias(int? gerenciaId = null)
        {
            try
            {
                var subgerencias = gerenciaId.HasValue
                    ? db.Subgerencias.Where(s => s.idGerencia == gerenciaId).ToList()
                    : db.Subgerencias.ToList();
                SubgerenciaDdl.DataSource = subgerencias;
                SubgerenciaDdl.DataTextField = "nombre";
                SubgerenciaDdl.DataValueField = "id";
                SubgerenciaDdl.DataBind();
                SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+subgerencias:+{ex.Message}");
            }
        }

        private void CargarDepartamentos(int? subgerenciaId = null)
        {
            try
            {
                var departamentos = subgerenciaId.HasValue
                    ? db.Departamentos.Where(d => d.idSubgerencia == subgerenciaId).ToList()
                    : db.Departamentos.ToList();
                DepartamentoDdl.DataSource = departamentos;
                DepartamentoDdl.DataTextField = "nombre";
                DepartamentoDdl.DataValueField = "id";
                DepartamentoDdl.DataBind();
                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+departamentos:+{ex.Message}");
            }
        }

        private void CargarUbicaciones(int? departamentoId = null)
        {
            try
            {
                var ubicaciones = departamentoId.HasValue
                    ? db.Ubicaciones.Where(u => u.idDepartamento == departamentoId).ToList()
                    : db.Ubicaciones.ToList();
                UbicacionDdl.DataSource = ubicaciones;
                UbicacionDdl.DataTextField = "nombre";
                UbicacionDdl.DataValueField = "id";
                UbicacionDdl.DataBind();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+ubicaciones:+{ex.Message}");
            }
        }

        private void CargarDatosUsuario(string rut)
        {
            try
            {
                // Log del rut recibido
                Response.Write($"Rut recibido: {rut}<br/>");

                Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rut);

                if (usuario != null)
                {
                    Response.Write($"Usuario encontrado: {usuario.nombre} {usuario.apellido}<br/>");

                    NombreTxt.Text = usuario.nombre;
                    ApellidoTxt.Text = usuario.apellido;
                    CargoTxt.Text = usuario.cargo;
                    GerenciaDdl.SelectedValue = usuario.idGerencia.HasValue ? usuario.idGerencia.Value.ToString() : "";
                    CargarSubgerencias(usuario.idGerencia);
                    SubgerenciaDdl.SelectedValue = usuario.idSubgerencia.HasValue ? usuario.idSubgerencia.Value.ToString() : "";
                    CargarDepartamentos(usuario.idSubgerencia);
                    DepartamentoDdl.SelectedValue = usuario.idDepartamento.HasValue ? usuario.idDepartamento.Value.ToString() : "";
                    CargarUbicaciones(usuario.idDepartamento);
                    UbicacionDdl.SelectedValue = usuario.idUbicacion.HasValue ? usuario.idUbicacion.Value.ToString() : "";
                    JefeTxt.Text = usuario.jefe;
                }
                else
                {
                    Response.Redirect("~/Error.aspx?mensaje=Usuario+no+encontrado");
                }
            }
            catch (Exception ex)
            {
                Response.Redirect($"~/Error.aspx?mensaje=Error+cargando+datos+del+usuario:+{ex.Message}");
            }
        }


        protected void GuardarPromocionBtn_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                bool success = false;
                string redirectUrl = string.Empty;

                try
                {
                    // Obtener valores de los campos
                    string cargo = CargoTxt.Text;
                    int idGerencia = int.Parse(GerenciaDdl.SelectedValue);
                    int idSubgerencia = int.Parse(SubgerenciaDdl.SelectedValue);
                    int idDepartamento = int.Parse(DepartamentoDdl.SelectedValue);
                    int idUbicacion = int.Parse(UbicacionDdl.SelectedValue);
                    string jefe = JefeTxt.Text;
                    DateTime fechaPromocion = Convert.ToDateTime(FechaPromocionTxt.Text);

                    // Buscar el usuario en la base de datos
                    Usuarios usuario = db.Usuarios.SingleOrDefault(u => u.rutUsuario == rutUsuarioEditar);
                    if (usuario != null)
                    {
                        // Actualizar datos del usuario
                        usuario.cargo = cargo;
                        usuario.idGerencia = idGerencia;
                        usuario.idSubgerencia = idSubgerencia;
                        usuario.idDepartamento = idDepartamento;
                        usuario.idUbicacion = idUbicacion;
                        usuario.jefe = jefe;

                        // Crear nueva promoción
                        Promociones nuevaPromocion = new Promociones
                        {
                            RutUsuario = usuario.rutUsuario,
                            FechaPromocion = fechaPromocion
                        };
                        db.Promociones.Add(nuevaPromocion);

                        // Guardar cambios en la base de datos
                        db.SaveChanges();

                        success = true;
                        redirectUrl = "~/VerPromociones.aspx?mensaje=Promocion+agregada+exitosamente";
                    }
                    else
                    {
                        // Usuario no encontrado
                        redirectUrl = "~/Error.aspx?mensaje=Usuario+no+encontrado";
                    }
                }
                catch (Exception ex)
                {
                    // Log the error details
                    // Logger.LogException(ex); // Reemplazar con tu mecanismo de logging
                    redirectUrl = $"~/Error.aspx?mensaje=Error+al+guardar+en+la+base+de+datos:+{ex.Message}";
                }

                if (success)
                {
                    Response.Redirect(redirectUrl, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
                else
                {
                    Response.Redirect(redirectUrl, false);
                    Context.ApplicationInstance.CompleteRequest();
                }
            }
        }

        protected void GerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int gerenciaId;
            if (int.TryParse(GerenciaDdl.SelectedValue, out gerenciaId))
            {
                CargarSubgerencias(gerenciaId);
            }
            else
            {
                SubgerenciaDdl.Items.Clear();
                SubgerenciaDdl.Items.Insert(0, new ListItem("Elija una Subgerencia", ""));
                DepartamentoDdl.Items.Clear();
                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }

        protected void SubgerenciaDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int subgerenciaId;
            if (int.TryParse(SubgerenciaDdl.SelectedValue, out subgerenciaId))
            {
                CargarDepartamentos(subgerenciaId);
            }
            else
            {
                DepartamentoDdl.Items.Clear();
                DepartamentoDdl.Items.Insert(0, new ListItem("Elija un Departamento", ""));
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }

        protected void DepartamentoDdl_SelectedIndexChanged(object sender, EventArgs e)
        {
            int departamentoId;
            if (int.TryParse(DepartamentoDdl.SelectedValue, out departamentoId))
            {
                CargarUbicaciones(departamentoId);
            }
            else
            {
                UbicacionDdl.Items.Clear();
                UbicacionDdl.Items.Insert(0, new ListItem("Elija una Ubicación", ""));
            }
        }
    }
}

