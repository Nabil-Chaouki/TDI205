begin Transaction Modification
save Transaction p1
Update Employ� set Nom='nabil' where salaire=5000;
save Transaction p2
Update Employ� set Nom='abdnbi' where salaire=0;
Rollback Transaction p2
Commit Transaction Modification
Select*from Employ�