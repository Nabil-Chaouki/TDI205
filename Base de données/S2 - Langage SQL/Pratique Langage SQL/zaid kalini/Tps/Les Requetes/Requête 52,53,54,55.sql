Create Table Employ�(Num int,Nom varchar(30),ville varchar(30),salaire float);
insert into Employ� values(1,'ilias','tanger',4000),(2,'omar','tanger',3000),(1,'oussama','tanger',5000);
Select * From Employ� where salaire =(select MAX(salaire) From Employ�) ;
Select * from Employ� where salaire IN (Select MAX(salaire) as SalaireMax from Employ� GROUP BY ville) ;
Select * From Employ� where salaire> ANY(Select MAX (salaire) from Employ� GROUP BY ville) ;
Select * From Employ� where salaire< All(select MAX (salaire) from Employ� GROUP BY ville) ;