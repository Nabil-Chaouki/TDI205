

Begin Transaction Modification
save Transaction p1
Update Employ� set ville='Tanger' where (select max(salaire) from Employ�)=5000;
save Transaction p2
Update Employ� set Nom='' where salaire=0;
Rollback Transaction p2
Commit Transaction Modification
Select*from Employ�