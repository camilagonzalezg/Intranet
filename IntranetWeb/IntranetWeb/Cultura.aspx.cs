//using System;
//using System.Linq;
//using System.Web.UI;
//using IntranetModel;

//namespace IntranetWeb
//{
//    public partial class Cultura : Page
//    {
//        protected void Page_Load(object sender, EventArgs e)
//        {
//            if (!IsPostBack)
//            {
//                LoadBirthdays();
//                LoadRecentIngresos();
//                LoadRecentNacimientos();
//            }
//        }

//        private void LoadBirthdays()
//        {
//            using (var context = new IntranetEntities())
//            {
//                DateTime today = DateTime.Today;
//                DateTime yesterday = today.AddDays(-1);
//                DateTime tomorrow = today.AddDays(1);

//                var birthdaysToday = context.Usuarios
//                    .Where(u => u.fechaNacimiento.Value.Month == today.Month && u.fechaNacimiento.Value.Day == today.Day)
//                    .ToList();

//                var birthdaysYesterday = context.Usuarios
//                    .Where(u => u.fechaNacimiento.Value.Month == yesterday.Month && u.fechaNacimiento.Value.Day == yesterday.Day)
//                    .ToList();

//                var birthdaysTomorrow = context.Usuarios
//                    .Where(u => u.fechaNacimiento.Value.Month == tomorrow.Month && u.fechaNacimiento.Value.Day == tomorrow.Day)
//                    .ToList();

//                rptBirthdaysToday.DataSource = birthdaysToday;
//                rptBirthdaysToday.DataBind();
//                lblNoBirthdaysToday.Visible = birthdaysToday.Count == 0;

//                rptBirthdaysYesterday.DataSource = birthdaysYesterday;
//                rptBirthdaysYesterday.DataBind();
//                lblNoBirthdaysYesterday.Visible = birthdaysYesterday.Count == 0;

//                rptBirthdaysTomorrow.DataSource = birthdaysTomorrow;
//                rptBirthdaysTomorrow.DataBind();
//                lblNoBirthdaysTomorrow.Visible = birthdaysTomorrow.Count == 0;
//            }
//        }

//        private void LoadRecentIngresos()
//        {
//            using (var context = new IntranetEntities())
//            {
//                var recentIngresos = context.Usuarios
//                    .Where(u => u.fechaIngreso.HasValue)
//                    .OrderByDescending(u => u.fechaIngreso.Value)
//                    .Take(3)
//                    .ToList();

//                if (recentIngresos.Count > 0)
//                {
//                    rptUltimoIngreso.DataSource = recentIngresos.Take(1);
//                    rptUltimoIngreso.DataBind();
//                    lblNoUltimoIngreso.Visible = false;

//                    rptPenultimoIngreso.DataSource = recentIngresos.Skip(1).Take(1);
//                    rptPenultimoIngreso.DataBind();
//                    lblNoPenultimoIngreso.Visible = false;

//                    rptAntepenultimoIngreso.DataSource = recentIngresos.Skip(2).Take(1);
//                    rptAntepenultimoIngreso.DataBind();
//                    lblNoAntepenultimoIngreso.Visible = false;
//                }
//                else
//                {
//                    lblNoUltimoIngreso.Visible = true;
//                    lblNoPenultimoIngreso.Visible = true;
//                    lblNoAntepenultimoIngreso.Visible = true;
//                }
//            }
//        }

//        private void LoadRecentNacimientos()
//        {
//            using (var context = new IntranetEntities())
//            {
//                var recentNacimientos = context.Hijos
//                    .OrderByDescending(h => h.fechanacimientohijo)
//                    .Take(3)
//                    .Select(h => new
//                    {
//                        Colaborador = h.Usuarios.nombre + " " + h.Usuarios.apellido,
//                        NombreHijo = h.nombre,
//                        FechaNacimiento = h.fechanacimientohijo
//                    })
//                    .ToList();

//                if (recentNacimientos.Count > 0)
//                {
//                    rptUltimoNacimiento.DataSource = recentNacimientos.Take(1);
//                    rptUltimoNacimiento.DataBind();
//                    lblNoUltimoNacimiento.Visible = false;

//                    rptPenultimoNacimiento.DataSource = recentNacimientos.Skip(1).Take(1);
//                    rptPenultimoNacimiento.DataBind();
//                    lblNoPenultimoNacimiento.Visible = false;

//                    rptAntepenultimoNacimiento.DataSource = recentNacimientos.Skip(2).Take(1);
//                    rptAntepenultimoNacimiento.DataBind();
//                    lblNoAntepenultimoNacimiento.Visible = false;
//                }
//                else
//                {
//                    lblNoUltimoNacimiento.Visible = true;
//                    lblNoPenultimoNacimiento.Visible = true;
//                    lblNoAntepenultimoNacimiento.Visible = true;
//                }
//            }
//        }
//    }
//}





using System;
using System.Linq;
using System.Web.UI;
using IntranetModel;

namespace IntranetWeb
{
    public partial class Cultura : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadBirthdays();
                LoadRecentIngresos();
                LoadRecentNacimientos();
                LoadRecentPromociones();
            }
        }

        private void LoadBirthdays()
        {
            using (var context = new IntranetEntities())
            {
                DateTime today = DateTime.Today;
                DateTime yesterday = today.AddDays(-1);
                DateTime tomorrow = today.AddDays(1);

                var birthdaysToday = context.Usuarios
                    .Where(u => u.fechaNacimiento.Value.Month == today.Month && u.fechaNacimiento.Value.Day == today.Day)
                    .ToList();

                var birthdaysYesterday = context.Usuarios
                    .Where(u => u.fechaNacimiento.Value.Month == yesterday.Month && u.fechaNacimiento.Value.Day == yesterday.Day)
                    .ToList();

                var birthdaysTomorrow = context.Usuarios
                    .Where(u => u.fechaNacimiento.Value.Month == tomorrow.Month && u.fechaNacimiento.Value.Day == tomorrow.Day)
                    .ToList();

                rptBirthdaysToday.DataSource = birthdaysToday;
                rptBirthdaysToday.DataBind();
                lblNoBirthdaysToday.Visible = birthdaysToday.Count == 0;

                rptBirthdaysYesterday.DataSource = birthdaysYesterday;
                rptBirthdaysYesterday.DataBind();
                lblNoBirthdaysYesterday.Visible = birthdaysYesterday.Count == 0;

                rptBirthdaysTomorrow.DataSource = birthdaysTomorrow;
                rptBirthdaysTomorrow.DataBind();
                lblNoBirthdaysTomorrow.Visible = birthdaysTomorrow.Count == 0;
            }
        }

        private void LoadRecentIngresos()
        {
            using (var context = new IntranetEntities())
            {
                var recentIngresos = context.Usuarios
                    .Where(u => u.fechaIngreso.HasValue)
                    .OrderByDescending(u => u.fechaIngreso.Value)
                    .Take(3)
                    .ToList();

                if (recentIngresos.Count > 0)
                {
                    rptUltimoIngreso.DataSource = recentIngresos.Take(1);
                    rptUltimoIngreso.DataBind();
                    lblNoUltimoIngreso.Visible = false;

                    rptPenultimoIngreso.DataSource = recentIngresos.Skip(1).Take(1);
                    rptPenultimoIngreso.DataBind();
                    lblNoPenultimoIngreso.Visible = false;

                    rptAntepenultimoIngreso.DataSource = recentIngresos.Skip(2).Take(1);
                    rptAntepenultimoIngreso.DataBind();
                    lblNoAntepenultimoIngreso.Visible = false;
                }
                else
                {
                    lblNoUltimoIngreso.Visible = true;
                    lblNoPenultimoIngreso.Visible = true;
                    lblNoAntepenultimoIngreso.Visible = true;
                }
            }
        }

        private void LoadRecentNacimientos()
        {
            using (var context = new IntranetEntities())
            {
                var recentNacimientos = context.Hijos
                    .OrderByDescending(h => h.fechanacimientohijo)
                    .Take(3)
                    .Select(h => new
                    {
                        Colaborador = h.Usuarios.nombre + " " + h.Usuarios.apellido,
                        NombreHijo = h.nombre,
                        FechaNacimiento = h.fechanacimientohijo
                    })
                    .ToList();

                if (recentNacimientos.Count > 0)
                {
                    rptUltimoNacimiento.DataSource = recentNacimientos.Take(1);
                    rptUltimoNacimiento.DataBind();
                    lblNoUltimoNacimiento.Visible = false;

                    rptPenultimoNacimiento.DataSource = recentNacimientos.Skip(1).Take(1);
                    rptPenultimoNacimiento.DataBind();
                    lblNoPenultimoNacimiento.Visible = false;

                    rptAntepenultimoNacimiento.DataSource = recentNacimientos.Skip(2).Take(1);
                    rptAntepenultimoNacimiento.DataBind();
                    lblNoAntepenultimoNacimiento.Visible = false;
                }
                else
                {
                    lblNoUltimoNacimiento.Visible = true;
                    lblNoPenultimoNacimiento.Visible = true;
                    lblNoAntepenultimoNacimiento.Visible = true;
                }
            }
        }

        private void LoadRecentPromociones()
        {
            using (var context = new IntranetEntities())
            {
                var recentPromociones = context.Promociones
                    .OrderByDescending(p => p.FechaPromocion)
                    .Take(3)
                    .Select(p => new
                    {
                        nombre = p.Usuarios.nombre,
                        apellido = p.Usuarios.apellido,
                        fechaPromocion = p.FechaPromocion,
                        cargo = p.Usuarios.cargo,
                        gerencia = p.Usuarios.Gerencias.nombre,
                        subgerencia = p.Usuarios.Subgerencias.nombre,
                        departamento = p.Usuarios.Departamentos.nombre,
                        ubicacion = p.Usuarios.Ubicaciones.nombre,
                        jefe = p.Usuarios.jefe
                    })
                    .ToList();

                if (recentPromociones.Count > 0)
                {
                    rptUltimaPromocion.DataSource = recentPromociones.Take(1);
                    rptUltimaPromocion.DataBind();
                    lblNoUltimaPromocion.Visible = false;

                    rptPenultimaPromocion.DataSource = recentPromociones.Skip(1).Take(1);
                    rptPenultimaPromocion.DataBind();
                    lblNoPenultimaPromocion.Visible = false;

                    rptAntepenultimaPromocion.DataSource = recentPromociones.Skip(2).Take(1);
                    rptAntepenultimaPromocion.DataBind();
                    lblNoAntepenultimaPromocion.Visible = false;
                }
                else
                {
                    lblNoUltimaPromocion.Visible = true;
                    lblNoPenultimaPromocion.Visible = true;
                    lblNoAntepenultimaPromocion.Visible = true;
                }
            }
        }
    }
}
