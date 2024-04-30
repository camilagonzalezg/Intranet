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

       
    }



}
