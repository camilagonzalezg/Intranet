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
        public string CreateUsuario(Usuario usuario)
        {
            if (usuarios.Any(u => u.RutUsuario == usuario.RutUsuario))
            {
                throw new Exception("El RutUsuario ya existe");
            }

            usuarios.Add(usuario);
            return usuario.RutUsuario;
        }

        // Read Method (Get all users)
        public List<Usuario> GetUsuarios()
        {
            return new List<Usuario>(usuarios); // Return a copy to prevent direct modification
        }

        // Read Method (Get user by RUT)
        public Usuario GetUsuarioByRut(string rutUsuario)
        {
            return usuarios.FirstOrDefault(u => u.RutUsuario == rutUsuario);
        }

        // Read Method (Search users)
        public List<Usuario> BuscarUsuarios(string searchTerm)
        {
            searchTerm = searchTerm.ToLower(); // Case-insensitive search

            return usuarios.Where(u =>
                u.Nombre.ToLower().Contains(searchTerm) ||
                u.Apellido.ToLower().Contains(searchTerm) ||
                u.Email.ToLower().Contains(searchTerm) ||
                u.RutUsuario.Contains(searchTerm) // Include RutUsuario in search
            ).ToList();
        }

        // Update Method
        public void UpdateUsuario(Usuario usuario)
        {
            int index = usuarios.FindIndex(u => u.RutUsuario == usuario.RutUsuario);

            if (index >= 0)
            {
                usuarios[index] = usuario;
            }
        }

        // Delete Method
        public void DeleteUsuario(string rutUsuario)
        {
            usuarios.RemoveAll(u => u.RutUsuario == rutUsuario);
        }
    }



}
