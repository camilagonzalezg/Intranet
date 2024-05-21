using System.Linq;

namespace IntranetModel
{
    public partial class Usuarios
    {
        public string TipoContratoNombre
        {
            get
            {
                using (var db = new IntranetEntities())
                {
                    int tipoContratoId;
                    if (int.TryParse(this.tipoContrato, out tipoContratoId))
                    {
                        var tipoContrato = db.TiposContrato.FirstOrDefault(tc => tc.id == tipoContratoId);
                        return tipoContrato != null ? tipoContrato.nombre : "N/A";
                    }
                    return "N/A";
                }
            }
        }

        public string GerenciaNombre
        {
            get
            {
                using (var db = new IntranetEntities())
                {
                    int gerenciaId;
                    if (int.TryParse(this.gerencia, out gerenciaId))
                    {
                        var gerencia = db.Gerencias.FirstOrDefault(g => g.id == gerenciaId);
                        return gerencia != null ? gerencia.nombre : "N/A";
                    }
                    return "N/A";
                }
            }
        }

        public string SubgerenciaNombre
        {
            get
            {
                using (var db = new IntranetEntities())
                {
                    int subgerenciaId;
                    if (int.TryParse(this.subgerencia, out subgerenciaId))
                    {
                        var subgerencia = db.Subgerencias.FirstOrDefault(sg => sg.id == subgerenciaId);
                        return subgerencia != null ? subgerencia.nombre : "N/A";
                    }
                    return "N/A";
                }
            }
        }

        public string DepartamentoNombre
        {
            get
            {
                using (var db = new IntranetEntities())
                {
                    int departamentoId;
                    if (int.TryParse(this.departamento, out departamentoId))
                    {
                        var departamento = db.Departamentos.FirstOrDefault(d => d.id == departamentoId);
                        return departamento != null ? departamento.nombre : "N/A";
                    }
                    return "N/A";
                }
            }
        }

        public string UbicacionNombre
        {
            get
            {
                using (var db = new IntranetEntities())
                {
                    int ubicacionId;
                    if (int.TryParse(this.ubicacion, out ubicacionId))
                    {
                        var ubicacion = db.Ubicaciones.FirstOrDefault(u => u.id == ubicacionId);
                        return ubicacion != null ? ubicacion.nombre : "N/A";
                    }
                    return "N/A";
                }
            }
        }
    }
}
