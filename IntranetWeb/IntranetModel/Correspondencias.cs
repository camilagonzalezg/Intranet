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
    
    public partial class Correspondencias
    {
        public int id { get; set; }
        public string usuario { get; set; }
        public string nombreArchivo { get; set; }
        public string descripcionArchivo { get; set; }
        public Nullable<System.DateTime> fechaIngreso { get; set; }
        public Nullable<System.DateTime> fechaCierre { get; set; }
        public string rutaArchivo { get; set; }
    
        public virtual Usuarios Usuarios { get; set; }
    }
}
