Create table Stagiaire( id int, nom varchar(50), note_bac float, filiere varchar(50),
 id_groupe int, Constraint n_note Check(note_bac between 0 and 20), Check(filiere='tdi'or filiere='tri'),
 Constraint pk_stagiaire Primary key(id),
 Constraint fk_stagiaire_groupe Foreign key(id_groupe) References Groupe(id) );


/* Constraint :permet de sp�cifier des r�gles pour les donn�es d'une table.*/
/* check: sp�cifie les valeurs que peut prendre un attribut d�une relation */
/* Primary key : L�attribut (ou le groupe d�attributs) doit avoir une valeur unique et identifier un tuple de mani�re unique.*/
/* Foreign key : cle etranger*/