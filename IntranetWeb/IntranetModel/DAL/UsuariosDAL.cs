using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntranetModel.DAL
{

    public class UsuariosDAL
    {
        private static List<Usuario> usuarios = new List<Usuario>(); // In-memory storage of users

        // Create Method
        public void Add(Usuario u)
        {
            usuarios.Add(u);
        }
        // Listar
        public List<Usuario> GetAll()
        {
            return usuarios;
        }
       //Borrar
       public void Remove(String rut)
        {
            //busqueda
            Usuario usu = usuarios.Find(u => u.RutUsuario == rut);
            //eliminacion
            usuarios.Remove(usu);
        }
    }

}
