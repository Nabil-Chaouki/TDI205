//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace tp1
{
    using System;
    using System.Collections.Generic;
    
    public partial class editeur
    {
        public int id { get; set; }
        public string nom { get; set; }
        public string prenom { get; set; }
        public Nullable<int> numero_inscription { get; set; }
        public Nullable<int> id_livre { get; set; }
    
        public virtual Livre Livre { get; set; }

        public override string ToString()
        {
            return id+"  "+nom+"  "+prenom+"  "+numero_inscription+"  "+id_livre;
        }

    }
}
