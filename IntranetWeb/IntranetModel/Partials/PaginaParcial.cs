using System.Linq;
using System.Data.Entity;

namespace IntranetModel
{
    public partial class Paginas
    {
        private Usuarios _usuarioAutorEntity;

        private void LoadRelatedEntities()
        {
            using (var db = new IntranetEntities())
            {
                if (!string.IsNullOrEmpty(this.usuarioAutor))
                {
                    _usuarioAutorEntity = db.Usuarios.FirstOrDefault(u => u.nombre == this.usuarioAutor);
                }
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
    }
}
