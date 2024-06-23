using IntranetModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace IntranetModel.DAL
{
    public class HijosDAL
    {
        private IntranetEntities dbEntities = new IntranetEntities();

        // Método para agregar un nuevo hijo
        public void Add(Hijos hijo)
        {
            dbEntities.Hijos.Add(hijo);
            dbEntities.SaveChanges();
        }

        // Método para listar todos los hijos
        public List<Hijos> GetAll()
        {
            return dbEntities.Hijos.Include(h => h.Usuarios).ToList();
        }

        // Obtener hijos por ID
        public Hijos GetById(int id)
        {
            return dbEntities.Hijos.Include(h => h.Usuarios).FirstOrDefault(h => h.id == id);
        }

        // Obtener hijos por rutUsuario
        public List<Hijos> GetByRutUsuario(string rutUsuario)
        {
            return dbEntities.Hijos.Include(h => h.Usuarios).Where(h => h.rutUsuario == rutUsuario).ToList();
        }

        // Método para eliminar un hijo por ID
        public void Remove(int id)
        {
            Hijos hijo = dbEntities.Hijos.FirstOrDefault(h => h.id == id);
            if (hijo != null)
            {
                dbEntities.Hijos.Remove(hijo);
                dbEntities.SaveChanges();
            }
        }

        // Método para actualizar un hijo
        public void Update(Hijos hijo)
        {
            dbEntities.Entry(hijo).State = EntityState.Modified;
            dbEntities.SaveChanges();
        }
    }
}
