create table Employ�(num int,nom varchar(100),ville varchar(100),salaire int)
insert into Employ� values(1,'jk','rabat',5000)
insert into Employ� values(2,'tk','fes',6000)
insert into Employ� values(3,'v','tanger',3000)
insert into Employ� values(4,'jm','casablanca',0)
Select * From Employ� where salaire =(select MAX(salaire) From
Employ�);

Select * from Employ� where salaire IN (Select MAX(salaire) as
SalaireMax from Employ� GROUP BY ville);
Select * From Employ� where salaire> ANY(Select MAX (salaire) from
Employ� GROUP BY ville);
Select * From Employ� where salaire< All(select MAX (salaire) from
Employ� GROUP BY ville) ;