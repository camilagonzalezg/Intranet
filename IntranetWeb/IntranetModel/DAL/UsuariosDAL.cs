using IntranetModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace IntranetModel.DAL
{
    public class UsuariosDAL
    {
        private IntranetEntities dbEntities = new IntranetEntities();

        // Método para agregar un nuevo usuario
        public void Add(Usuarios u)
        {
            dbEntities.Usuarios.Add(u);
            dbEntities.SaveChanges();
        }

        // Método para listar todos los usuarios
        public List<Usuarios> GetAll()
        {
            return dbEntities.Usuarios.ToList();
        }

        // Obtener todos los usuarios por nombre
        public List<Usuarios> GetAll(string nombre)
        {
            return dbEntities.Usuarios.Where(u => u.nombre == nombre).ToList();
        }

        // Obtener usuario por rut
        public Usuarios GetByRut(string rut)
        {
            return dbEntities.Usuarios.FirstOrDefault(u => u.rutUsuario == rut);
        }

        // Método para eliminar un usuario por rut
        public void Remove(string rut)
        {
            Usuarios usuario = dbEntities.Usuarios.FirstOrDefault(u => u.rutUsuario == rut);
            if (usuario != null)
            {
                dbEntities.Usuarios.Remove(usuario);
                dbEntities.SaveChanges();
            }
        }

        // Método para actualizar un usuario
        public void Update(Usuarios u)
        {
            dbEntities.Entry(u).State = EntityState.Modified;
            dbEntities.SaveChanges();
        }

        // Método para obtener todos los usuarios con sus hijos
        public List<Usuarios> GetAllWithChildren()
        {
            return dbEntities.Usuarios.Include(u => u.Hijos).Include(u => u.Gerencias).Include(u => u.Subgerencias).Include(u => u.Departamentos).Include(u => u.Ubicaciones).Include(u => u.TiposContrato).Include(u => u.RolesUsuario).ToList();
        }


    }
}
