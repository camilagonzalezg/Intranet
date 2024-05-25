using System.Linq;
using System.Data.Entity;

namespace IntranetModel
{
    public partial class Usuarios
    {
        private TiposContrato _tipoContratoEntity;
        private Gerencias _gerenciaEntity;
        private Subgerencias _subgerenciaEntity;
        private Departamentos _departamentoEntity;
        private Ubicaciones _ubicacionEntity;

        private void LoadRelatedEntities()
        {
            using (var db = new IntranetEntities())
            {
                if (this.idTipoContrato.HasValue)
                {
                    _tipoContratoEntity = db.TiposContrato.FirstOrDefault(tc => tc.id == this.idTipoContrato.Value);
                }

                if (this.idGerencia.HasValue)
                {
                    _gerenciaEntity = db.Gerencias.FirstOrDefault(g => g.id == this.idGerencia.Value);
                }

                if (this.idSubgerencia.HasValue)
                {
                    _subgerenciaEntity = db.Subgerencias.FirstOrDefault(sg => sg.id == this.idSubgerencia.Value);
                }

                if (this.idDepartamento.HasValue)
                {
                    _departamentoEntity = db.Departamentos.FirstOrDefault(d => d.id == this.idDepartamento.Value);
                }

                if (this.idUbicacion.HasValue)
                {
                    _ubicacionEntity = db.Ubicaciones.FirstOrDefault(u => u.id == this.idUbicacion.Value);
                }
            }
        }

        public string TipoContratoNombre
        {
            get
            {
                if (_tipoContratoEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _tipoContratoEntity != null ? _tipoContratoEntity.nombre : "N/A";
            }
        }

        public string GerenciaNombre
        {
            get
            {
                if (_gerenciaEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _gerenciaEntity != null ? _gerenciaEntity.nombre : "N/A";
            }
        }

        public string SubgerenciaNombre
        {
            get
            {
                if (_subgerenciaEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _subgerenciaEntity != null ? _subgerenciaEntity.nombre : "N/A";
            }
        }

        public string DepartamentoNombre
        {
            get
            {
                if (_departamentoEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _departamentoEntity != null ? _departamentoEntity.nombre : "N/A";
            }
        }

        public string UbicacionNombre
        {
            get
            {
                if (_ubicacionEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _ubicacionEntity != null ? _ubicacionEntity.nombre : "N/A";
            }
        }

        public string RolUsuarioNombre
        {
            get
            {
                switch (this.idRolUsuario)
                {
                    case 1:
                        return "Colaborador";
                    case 2:
                        return "Gerencia";
                    case 3:
                        return "Administrador";
                    default:
                        return "N/A";
                }
            }
        }
    }
}




//using System.Linq;

//namespace IntranetModel
//{
//    public partial class Usuarios
//    {
//        public string TipoContratoNombre
//        {
//            get
//            {
//                using (var db = new IntranetEntities())
//                {
//                    int tipoContratoId;
//                    if (int.TryParse(this.tipoContrato, out tipoContratoId))
//                    {
//                        var tipoContrato = db.TiposContrato.FirstOrDefault(tc => tc.id == tipoContratoId);
//                        return tipoContrato != null ? tipoContrato.nombre : "N/A";
//                    }
//                    return "N/A";
//                }
//            }
//        }

//        public string GerenciaNombre
//        {
//            get
//            {
//                using (var db = new IntranetEntities())
//                {
//                    int gerenciaId;
//                    if (int.TryParse(this.gerencia, out gerenciaId))
//                    {
//                        var gerencia = db.Gerencias.FirstOrDefault(g => g.id == gerenciaId);
//                        return gerencia != null ? gerencia.nombre : "N/A";
//                    }
//                    return "N/A";
//                }
//            }
//        }

//        public string SubgerenciaNombre
//        {
//            get
//            {
//                using (var db = new IntranetEntities())
//                {
//                    int subgerenciaId;
//                    if (int.TryParse(this.subgerencia, out subgerenciaId))
//                    {
//                        var subgerencia = db.Subgerencias.FirstOrDefault(sg => sg.id == subgerenciaId);
//                        return subgerencia != null ? subgerencia.nombre : "N/A";
//                    }
//                    return "N/A";
//                }
//            }
//        }

//        public string DepartamentoNombre
//        {
//            get
//            {
//                using (var db = new IntranetEntities())
//                {
//                    int departamentoId;
//                    if (int.TryParse(this.departamento, out departamentoId))
//                    {
//                        var departamento = db.Departamentos.FirstOrDefault(d => d.id == departamentoId);
//                        return departamento != null ? departamento.nombre : "N/A";
//                    }
//                    return "N/A";
//                }
//            }
//        }

//        public string UbicacionNombre
//        {
//            get
//            {
//                using (var db = new IntranetEntities())
//                {
//                    int ubicacionId;
//                    if (int.TryParse(this.ubicacion, out ubicacionId))
//                    {
//                        var ubicacion = db.Ubicaciones.FirstOrDefault(u => u.id == ubicacionId);
//                        return ubicacion != null ? ubicacion.nombre : "N/A";
//                    }
//                    return "N/A";
//                }
//            }
//        }

//        public string RolUsuarioNombre
//        {
//            get
//            {
//                switch (this.rolUsuario)
//                {
//                    case "1":
//                        return "Colaborador";
//                    case "2":
//                        return "Gerencia";
//                    case "3":
//                        return "Administrador";
//                    default:
//                        return "N/A";
//                }
//            }
//        }
//    }
//}

