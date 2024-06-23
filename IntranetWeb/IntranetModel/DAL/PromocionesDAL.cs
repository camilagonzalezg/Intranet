using IntranetModel;
using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;

namespace IntranetModel.DAL
{
    public class PromocionesDAL
    {
        private IntranetEntities dbEntities = new IntranetEntities();

        // Método para agregar una nueva promoción
        public void Add(Promociones p)
        {
            dbEntities.Promociones.Add(p);
            dbEntities.SaveChanges();
        }

        // Método para listar todas las promociones
        public List<Promociones> GetAll()
        {
            return dbEntities.Promociones.ToList();
        }

        // Obtener todas las promociones por RUT del usuario
        public List<Promociones> GetAllByRutUsuario(string rutUsuario)
        {
            return dbEntities.Promociones.Where(p => p.RutUsuario == rutUsuario).ToList();
        }

        // Obtener promoción por ID
        public Promociones GetById(int idPromocion)
        {
            return dbEntities.Promociones.FirstOrDefault(p => p.IdPromocion == idPromocion);
        }

        // Método para eliminar una promoción por ID
        public void Remove(int idPromocion)
        {
            Promociones promocion = dbEntities.Promociones.FirstOrDefault(p => p.IdPromocion == idPromocion);
            if (promocion != null)
            {
                dbEntities.Promociones.Remove(promocion);
                dbEntities.SaveChanges();
            }
        }

        // Método para actualizar una promoción
        public void Update(Promociones p)
        {
            dbEntities.Entry(p).State = EntityState.Modified;
            dbEntities.SaveChanges();
        }

        // Método para obtener todas las promociones con detalles de usuario
        public List<Promociones> GetAllWithUsers()
        {
            return dbEntities.Promociones.Include(p => p.Usuarios).ToList();
        }
    }
}
