//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Entity_Editeur
{
    using System;
    using System.Collections.Generic;
    
    public partial class Editeur
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Editeur()
        {
            this.Livres = new HashSet<Livre>();
        }
    
        public int id { get; set; }
        public string nom { get; set; }
        public string categorie { get; set; }
        public override string ToString()
        { 
            return id + "  /  " + nom + "   /  " + categorie;
        }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Livre> Livres { get; set; }
    }
}
