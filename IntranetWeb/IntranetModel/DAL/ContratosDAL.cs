using IntranetModel.DTO;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IntranetModel.DAL
{
    public class ContratosDAL
    {
        private static List<Contrato> contratos = new List<Contrato>()
        {
            new Contrato()
            {
                Nombre = "Definido"
            },

            new Contrato()
            {
                Nombre = "Indefinido"
            }
        };

        public List<Contrato> GetAll() { return contratos; }
    }
}
