//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace IntranetModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class Ubicaciones
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public Nullable<int> idDepartamento { get; set; }
    
        public virtual Departamentos Departamentos { get; set; }
    }
}
