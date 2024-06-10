using System.Collections.Generic;
using System.Linq;
using IntranetModel;

namespace IntranetDAL
{
    public class CorrespondenciasDAL
    {
        private IntranetEntities _context;

        public CorrespondenciasDAL()
        {
            _context = new IntranetEntities();
        }

        public List<Correspondencias> GetAllCorrespondencias()
        {
            return _context.Correspondencias.ToList();
        }

        public Correspondencias GetCorrespondenciaById(int id)
        {
            return _context.Correspondencias.Find(id);
        }

        public void AddCorrespondencia(Correspondencias correspondencia)
        {
            _context.Correspondencias.Add(correspondencia);
            _context.SaveChanges();
        }

        public void UpdateCorrespondencia(Correspondencias correspondencia)
        {
            _context.Entry(correspondencia).State = System.Data.Entity.EntityState.Modified;
            _context.SaveChanges();
        }

        public void DeleteCorrespondencia(int id)
        {
            Correspondencias correspondencia = _context.Correspondencias.Find(id);
            if (correspondencia != null)
            {
                _context.Correspondencias.Remove(correspondencia);
                _context.SaveChanges();
            }
        }
    }
}
