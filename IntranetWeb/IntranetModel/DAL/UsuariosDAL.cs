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
        
        //GetAll por nombre
        public List<Usuario> GetAll(string nombre) {
        
        return usuarios.FindAll(u=> u.Nombre == nombre);

        }

        //GetAll por rut
        public Usuario GetByRut(string rut)
        {
            return usuarios.FirstOrDefault(u => u.RutUsuario == rut);
        }

        //Borrar
        public void Remove(String rut)
        {
            //busqueda
            Usuario usu = usuarios.Find(u => u.RutUsuario == rut);
            //eliminacion
            usuarios.Remove(usu);
        }


        public void Update(Usuario u)
        {
            // Buscar el usuario por su rut
            Usuario usuarioExistente = usuarios.Find(usu => usu.RutUsuario == u.RutUsuario);

            if (usuarioExistente != null)
            {
                // Actualizar los campos del usuario existente con los nuevos valores
                usuarioExistente.Nombre = u.Nombre;
                usuarioExistente.Apellido = u.Apellido;
                usuarioExistente.FechaNacimiento = u.FechaNacimiento;
                usuarioExistente.Cargo = u.Cargo;
                usuarioExistente.Gerencia = u.Gerencia;
                usuarioExistente.Subgerencia = u.Subgerencia;
                usuarioExistente.Departamento = u.Departamento;
                usuarioExistente.Ubicacion = u.Ubicacion;
                usuarioExistente.Jefe = u.Jefe;
                usuarioExistente.RolUsuario = u.RolUsuario;
                usuarioExistente.TipoContrato = u.TipoContrato;
                usuarioExistente.FechaIngreso = u.FechaIngreso;
                usuarioExistente.Email = u.Email;
                usuarioExistente.Celular = u.Celular;
            }
            else
            {
                // Lanzar una excepción o manejar el caso en el que no se encuentre el usuario
                // Por ejemplo:
                throw new Exception("El usuario a actualizar no existe.");
            }
        }

    }

}
