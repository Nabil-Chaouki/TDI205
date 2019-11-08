create database GestionStagiare
use GestionProjet


create table Groupes
(
 id int,
 nom varchar(50),
 constraint pk_groupe primary key(id) ,
);
/*Requ�te 18 : Cr�ation de la table � Stagiaires � avec plusieurs contraintes d�int�grit�s.*/
create table Stagiaires
(
 id int,
 nom varchar(50),
 note_bac float,
 filier varchar(50),
 id_group int,
 constraint n_note Check(note_bac between 0 and 20),
 Check (filier='tdi' or filier='tri'),
 constraint pk_stagiare Primary key(id),
 constraint fk_stagiare_groupe Foreign key(id_group) References Groupes(id)
);
Alter table Stagiaires Add ville varchar(50)
/*Requ�te 23 : Modification de la colonne*/
Alter table Stagiaires alter column ville varchar(100) not null
/*Requ�te 26 : Cr�ation d�une table avec Id � auto - incr�ment� �, Syntax de � Identity �*/
create table Mention
(
 id int identity(1,2),
 nom varchar(50),
 nmax float,
 nmin float,
)


