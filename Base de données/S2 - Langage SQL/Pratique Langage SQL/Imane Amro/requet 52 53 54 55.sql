create table Employ�( salaire float,ville varchar(50))
insert into Employ� values(5000,'tanger')
insert into Employ� values (3000,'fes'),(6000,'rabat')

/*requet 52*/
 alter table Employ� add ville varchar(20);
 Select * From Employ� where salaire =(select MAX(salaire) From Employ�) ; 
/*requet 53*/
Select * from Employ� where salaire IN (Select MAX(salaire) asSalaireMax from  Employ� GROUP BY ville)
/*requet 54*/
Select * From Employ� where salaire> ANY(Select MAX (salaire) from Employ� GROUP BY ville) 
/*requet 55*/
Select * From Employ� where salaire< All(select MAX (salaire) from Employ� GROUP BY ville) ;