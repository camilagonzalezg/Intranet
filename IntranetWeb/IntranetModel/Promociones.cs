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
    
    public partial class Promociones
    {
        public int IdPromocion { get; set; }
        public string RutUsuario { get; set; }
        public System.DateTime FechaPromocion { get; set; }
    
        public virtual Usuarios Usuarios { get; set; }
    }
}
