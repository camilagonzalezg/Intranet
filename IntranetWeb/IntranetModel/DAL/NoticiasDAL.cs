using IntranetModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace IntranetModel.DAL
{
    public class NoticiasDAL
    {
        private IntranetEntities dbEntities = new IntranetEntities();

        // Método para agregar una nueva noticia
        public void Add(Noticias noticia)
        {
            dbEntities.Noticias.Add(noticia);
            dbEntities.SaveChanges();
        }

        // Método para listar todas las noticias
        public List<Noticias> GetAll()
        {
            return dbEntities.Noticias.ToList();
        }

        // Obtener todas las noticias por autor
        public List<Noticias> GetAllByAuthor(string autor)
        {
            return dbEntities.Noticias.Where(n => n.usuarioAutor == autor).ToList();
        }

        // Obtener noticias por ID
        public Noticias GetById(int id)
        {
            return dbEntities.Noticias.FirstOrDefault(n => n.id == id);
        }

        // Obtener noticias por título
        public List<Noticias> GetByTitle(string titulo)
        {
            return dbEntities.Noticias.Where(n => n.titulo.Contains(titulo)).ToList();
        }

        // Obtener noticias por fecha de publicación
        public List<Noticias> GetByFechaPublicacion(DateTime fecha)
        {
            return dbEntities.Noticias.Where(n => DbFunctions.TruncateTime(n.fechaPublicacion) == DbFunctions.TruncateTime(fecha)).ToList();
        }

        // Obtener noticias por tags
        public List<Noticias> GetByTags(string tags)
        {
            return dbEntities.Noticias.Where(n => n.tags.Contains(tags)).ToList();
        }

        // Método para eliminar una noticia por ID
        public void Remove(int id)
        {
            Noticias noticia = dbEntities.Noticias.FirstOrDefault(n => n.id == id);
            if (noticia != null)
            {
                dbEntities.Noticias.Remove(noticia);
                dbEntities.SaveChanges();
            }
        }

        // Método para actualizar una noticia
        public void Update(Noticias noticia)
        {
            dbEntities.Entry(noticia).State = EntityState.Modified;
            dbEntities.SaveChanges();
        }
    }
}
