﻿using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntranetModel.DAL
{
    public class UsuariosDAL
    {
        private List<Usuario> usuarios = new List<Usuario>(); // In-memory storage of users

        // Crear usuario
        public string CreateUsuario(Usuario usuario)
        {
            if (usuarios.Any(u => u.RutUsuario == usuario.RutUsuario))
            {
                throw new Exception("El RutUsuario ya existe");
            }

            usuarios.Add(usuario);
            return usuario.RutUsuario;
        }

        // Obtener usuarios general
        public List<Usuario> GetUsuarios()
        {
            return new List<Usuario>(usuarios); // Return a copy to prevent direct modification
        }

        // Obtener usuarios por rut
        public Usuario GetUsuarioByRut(string rutUsuario)
        {
            return usuarios.FirstOrDefault(u => u.RutUsuario == rutUsuario);
        }

        // Buscar usuarios
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

        // Actualizar usuarios
        public void UpdateUsuario(Usuario usuario)
        {
            int index = usuarios.FindIndex(u => u.RutUsuario == usuario.RutUsuario);

            if (index >= 0)
            {
                usuarios[index] = usuario;
            }
        }

        // Borrar usuarios
        public void DeleteUsuario(string rutUsuario)
        {
            usuarios.RemoveAll(u => u.RutUsuario == rutUsuario);
        }
    }


}
