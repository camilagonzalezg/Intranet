using IntranetModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace IntranetModel.DAL
{
    public class PaginasDAL
    {
        private IntranetEntities dbEntities = new IntranetEntities();

        // Método para agregar una nueva página
        public void Add(Paginas pagina)
        {
            dbEntities.Paginas.Add(pagina);
            dbEntities.SaveChanges();
        }

        // Método para listar todas las páginas
        public List<Paginas> GetAll()
        {
            return dbEntities.Paginas.ToList();
        }

        // Obtener todas las páginas por autor
        public List<Paginas> GetAllByAuthor(string autor)
        {
            return dbEntities.Paginas.Where(p => p.usuarioAutor == autor).ToList();
        }

        // Obtener páginas por ID
        public Paginas GetById(int id)
        {
            return dbEntities.Paginas.FirstOrDefault(p => p.id == id);
        }

        // Obtener páginas por título
        public List<Paginas> GetByTitle(string titulo)
        {
            return dbEntities.Paginas.Where(p => p.titulo.Contains(titulo)).ToList();
        }

        // Método para eliminar una página por ID
        public void Remove(int id)
        {
            Paginas pagina = dbEntities.Paginas.FirstOrDefault(p => p.id == id);
            if (pagina != null)
            {
                dbEntities.Paginas.Remove(pagina);
                dbEntities.SaveChanges();
            }
        }

        // Método para actualizar una página
        public void Update(Paginas pagina)
        {
            dbEntities.Entry(pagina).State = EntityState.Modified;
            dbEntities.SaveChanges();
        }
    }
}
