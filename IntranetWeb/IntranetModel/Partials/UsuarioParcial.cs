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
        private RolesUsuario _rolesUsuarioEntity;

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

                if (this.idRolUsuario.HasValue)
                {
                    _rolesUsuarioEntity = db.RolesUsuario.FirstOrDefault(r => r.id == this.idRolUsuario.Value);
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
                if (_rolesUsuarioEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _rolesUsuarioEntity != null ? _rolesUsuarioEntity.nombre : "N/A";
            }
        }
    }
}
