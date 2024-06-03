using System.Linq;
using System.Data.Entity;
using System.Collections.Generic;

namespace IntranetModel
{
    public partial class Noticias
    {
        private Usuarios _usuarioAutorEntity;
        private ICollection<ComentariosNoticias> _comentariosNoticiasEntities;

        private void LoadRelatedEntities()
        {
            using (var db = new IntranetEntities())
            {
                if (!string.IsNullOrEmpty(this.usuarioAutor))
                {
                    _usuarioAutorEntity = db.Usuarios.FirstOrDefault(u => u.nombre == this.usuarioAutor);
                }

                _comentariosNoticiasEntities = db.ComentariosNoticias.Where(cn => cn.idNoticia == this.id).ToList();
            }
        }

        public string AutorNombre
        {
            get
            {
                if (_usuarioAutorEntity == null)
                {
                    LoadRelatedEntities();
                }
                return _usuarioAutorEntity != null ? _usuarioAutorEntity.nombre : "N/A";
            }
        }

        public List<string> Comentarios
        {
            get
            {
                if (_comentariosNoticiasEntities == null)
                {
                    LoadRelatedEntities();
                }
                return _comentariosNoticiasEntities != null ? _comentariosNoticiasEntities.Select(cn => cn.comentarioTexto).ToList() : new List<string>();
            }
        }
    }
}
