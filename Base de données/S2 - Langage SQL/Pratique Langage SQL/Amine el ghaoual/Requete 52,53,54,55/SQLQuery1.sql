create table Employ�
(
 num int,
 nom varchar(50),
 ville varchar(50),
 salaire float
);
insert into Employ� values(1,'karim','tanger',3000)
insert into Employ� values(2,'hamid','chaouen',5000)
insert into Employ� values(3,'said','fes',6000)


/*Requ�te 52 : Afficher la liste des employ�s ayant le salaire maximal*/
Select * From Employ� where salaire =(select MAX(salaire) From Employ�) ;
/*Requ�te 53 : Utilisation sous - interrogation avec l�op�rateur � IN �*/
Select * from Employ� where salaire IN (Select MAX(salaire) as SalaireMax from Employ� GROUP BY ville) ;
/*Requ�te 54 : Utilisation sous - interrogation avec l�op�rateur � Any �*/
Select * From Employ� where salaire> ANY(Select MAX (salaire) from Employ� GROUP BY ville) ;
/*Requ�te 55 : Utilisation sous - interrogation avec l�op�rateur � All �*/
Select * From Employ� where salaire< All(select MAX (salaire) from Employ� GROUP BY ville) ;