Select * from Employ� where salaire IN (Select MAX(salaire) as
SalaireMax from Employ� GROUP BY ville) ;