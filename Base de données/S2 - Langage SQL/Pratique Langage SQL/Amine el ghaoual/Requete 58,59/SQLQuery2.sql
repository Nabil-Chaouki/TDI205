
/*Requ�te 58 : Exemp le de cr�ation d�un view*/
Create VIEW ListeStagiaires as Select Nom, id from Stagiaires ;  
/*Requ�te 59 : Exemple de cr�ation d�un index*/
Create index index_nom on Stagiaires(nom);