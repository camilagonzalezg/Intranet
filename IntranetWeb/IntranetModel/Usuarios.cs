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
    
    public partial class Usuarios
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Usuarios()
        {
            this.ArchivosMultimedia = new HashSet<ArchivosMultimedia>();
            this.ComentariosNoticias = new HashSet<ComentariosNoticias>();
            this.Correspondencias = new HashSet<Correspondencias>();
            this.Hijos = new HashSet<Hijos>();
            this.Noticias = new HashSet<Noticias>();
            this.Paginas = new HashSet<Paginas>();
        }
    
        public string rutUsuario { get; set; }
        public string nombre { get; set; }
        public string apellido { get; set; }
        public Nullable<System.DateTime> fechaNacimiento { get; set; }
        public string cargo { get; set; }
        public Nullable<int> idGerencia { get; set; }
        public Nullable<int> idSubgerencia { get; set; }
        public Nullable<int> idDepartamento { get; set; }
        public Nullable<int> idUbicacion { get; set; }
        public string jefe { get; set; }
        public Nullable<int> idRolUsuario { get; set; }
        public Nullable<int> idTipoContrato { get; set; }
        public Nullable<System.DateTime> fechaIngreso { get; set; }
        public string email { get; set; }
        public Nullable<int> celular { get; set; }
        public string contraseña { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ArchivosMultimedia> ArchivosMultimedia { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ComentariosNoticias> ComentariosNoticias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Correspondencias> Correspondencias { get; set; }
        public virtual Departamentos Departamentos { get; set; }
        public virtual Gerencias Gerencias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Hijos> Hijos { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Noticias> Noticias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Paginas> Paginas { get; set; }
        public virtual RolesUsuario RolesUsuario { get; set; }
        public virtual Subgerencias Subgerencias { get; set; }
        public virtual TiposContrato TiposContrato { get; set; }
        public virtual Ubicaciones Ubicaciones { get; set; }
    }
}
