//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace DataBaseFirst
{
    using System;
    using System.Collections.Generic;
    
    public partial class Commande
    {
        public int IdCommande { get; set; }
        public string Descriptions { get; set; }
        public Nullable<decimal> Prix { get; set; }
        public Nullable<int> ProduitId { get; set; }
    
        public virtual Produit Produit { get; set; }
    }
}
