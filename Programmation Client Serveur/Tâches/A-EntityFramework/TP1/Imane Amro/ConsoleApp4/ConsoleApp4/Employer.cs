//------------------------------------------------------------------------------
// <auto-generated>
//     Ce code a été généré à partir d'un modèle.
//
//     Des modifications manuelles apportées à ce fichier peuvent conduire à un comportement inattendu de votre application.
//     Les modifications manuelles apportées à ce fichier sont remplacées si le code est régénéré.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ConsoleApp4
{
    using System;
    using System.Collections.Generic;
    
    public partial class Employer
    {
        public int Id { get; set; }
        public string Nom { get; set; }
        public string prenom { get; set; }
        public Nullable<int> IdEntreprise { get; set; }
    
        public virtual Entreprise Entreprise { get; set; }
    }
}
