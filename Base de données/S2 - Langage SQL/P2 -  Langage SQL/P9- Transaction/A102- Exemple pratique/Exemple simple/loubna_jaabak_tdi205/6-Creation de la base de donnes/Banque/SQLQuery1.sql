CREATE TABLE client(id_cli int  PRIMARY KEY ,nom NVARCHAR(20),prenom Nvarchar(50),Adresse nvarchar(50));
insert into client(id_cli,nom,prenom,Adresse) values(1,'loubna','jaabak','Tanger');

select *from client;
truncate table client;
select *from client;
create table Compte(id int  PRIMARY KEY,Solde float);
insert into Compte(id,Solde) values(1,5000);
select *from compte;
truncate table compte;
create table Opperation(id int  PRIMARY KEY,typee nvarchar(50),datee date,Montant float);
insert into Opperation(id,typee,datee,Montant) values(1,'T1',04/10/2019,1200);
truncate table Opperation;
select *from Opperation;
begin transaction;
TRUNCATE  TABLE Opperation;
commit;
SELECT DISTINCT *from Compte;
alter table client
add constraint pk_ foreign key (id_cli)
references compte(id)
on delete cascade
on update cascade
alter table compte
add constraint pk_ foreign key (id)
references Opperation(id)
on delete cascade
on update cascade
select *from compte;
begin transaction ;
drop table client;
rollback;
begin transaction;
update compte set solde=5000-500 where id=1 ;
commit;
begin transaction;
update compte set solde=4500-500 where id=1 ;
commit;
begin transaction;
select distinct *from compte where id= 1;
rollback;
SELECT * FROM compte WHERE id = 1;

