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
    
    public partial class Paginas
    {
        public int id { get; set; }
        public string usuarioAutor { get; set; }
        public string titulo { get; set; }
        public string metaDescripcion { get; set; }
        public string contenidoTexto { get; set; }
        public Nullable<System.DateTime> fechaPublicacion { get; set; }
        public string tags { get; set; }
        public Nullable<int> likes { get; set; }
    
        public virtual Usuarios Usuarios { get; set; }
    }
}
