--1) Créer la base de données et remlir les tables par un jeu d'essai
if exists (select * from sys.databases where name = 'EFF_2016')
	drop database EFF_2016;
create database EFF_2016;
go
use EFF_2016;
go
create table Categorie (
	idCategorie int primary key,
	nomCategorie varchar(50)
);
create table Organisateur (
	idOrg int primary key,
	nomOrg varchar(50),
	prenomOrg varchar(50),
	emailOrg varchar(50),
	passOrg varchar(50)
);
create table Campagne (
	idCamp int primary key,
	nomCamp varchar(50),
	[description] varchar(50),
	dateCreation date,
	dateFin date,
	montantCamp money,
	nomBeneficiere varchar(50),
	prenBeneficiere varchar(50),
	dateDernierePart date,
	idCategorie int foreign key references Categorie (idCategorie),
	idOrg int foreign key references Organisateur (idOrg)
);
create table Participant (
	idP int primary key,
	nomP varchar(50),
	prenomP varchar(50),
	emailP varchar(50),
	passP varchar(50)
);
create table Participation (
	idPart int primary key identity,
	[datePart] date,
	montantPart money,
	idCamp int foreign key references Campagne (idCamp),
	idP int foreign key references Participant (idP)
);
go
set dateformat dmy
go
insert into Categorie values (1, 'Maladie')
insert into Categorie values (2, 'Crise financière')
insert into Categorie values (3, 'Problèmes psychologiques')
go
select * from Categorie
go
insert into Organisateur values (1, 'El atif','Ibrahim', 'ibrahim@gmail.com', 'azerty')
insert into Organisateur values (2, 'Salman','Noah', 'noah@gmail.com', 'qwerty')
insert into Organisateur values (3, 'Kofi', 'Mohamed', 'mohamed@gmail.com', 'abc123')
go
select * from Organisateur
go
insert into Campagne values (1, 'Support de santé public', null, getdate(), getdate()+30, 1000000, 'El bahi', 'Meriem', null, 1, 1)
insert into Campagne values (2, 'Soyons riche pour la richesse', null, getdate()-10, getdate()+30, 7000000, 'Nariss', 'Karim', null, 2, 2)
insert into Campagne values (3, 'Force de l''amour', null, getdate()-2, getdate()+10, 20000, 'El manar', 'Ronda', null, 3, 3)
go
select * from Campagne
go
insert into Participant values (1, 'El one','Onion', 'one@gmail.com', 'one')
insert into Participant values (2, 'El two','Toon', 'two@gmail.com', 'two')
insert into Participant values (3, 'El three','Thor', 'three@gmail.com', 'three')
insert into Participant values (4, 'El four','Favor', 'four@gmail.com', 'four')
insert into Participant values (5, 'El five','Fifo', 'five@gmail.com', 'five')
go
select * from Participant
go
insert into Participation values (getdate(), 1000, 1, 1)
insert into Participation values (getdate(), 3000, 3, 1)
insert into Participation values (getdate(), 1700, 4, 1)
insert into Participation values (getdate()-1, 800, 1, 2)
insert into Participation values (getdate()-3, 2700, 2, 2)
insert into Participation values (getdate()-7, 900, 3, 2)
insert into Participation values (getdate(), 75, 4, 2)
insert into Participation values (getdate()-1, 80, 5, 2)
insert into Participation values (getdate()-1, 800, 5, 3)
insert into Participation values (getdate(), 1200, 3, 3)
go
select * from Participation
go
select * from sys.tables;

--2)
select nomCamp as 'Nom de campagne', count(*) as 'Nombre de participants'
from Campagne C inner join Participation P
on c.idCamp = P.idCamp
group by nomCamp

--3)
alter proc sp_participations
	@idCamp int
as
	begin
		select montantPart as 'Montant Participation', nomP + ' ' + prenomP as 'Participant'
		from Participation Part inner join Participant P
		on Part.idP = P.idP
		where year(datePart) = year(getdate())
		and idCamp = @idCamp
	end
-- Test
exec sp_participations 1

--4)
create trigger tr_dateDernierePart
on Participation
after insert
as
	begin
		declare @idCamp int = (select idCamp from inserted)
		update Campagne
		set dateDernierePart = getdate()
		where idCamp = @idCamp
	end
-- Test
select * from Campagne
go
insert into Participation values (getdate(), 1000, 1, 2)
go
select * from Campagne

--5)
create proc sp_ajouter_participation
	@montantPart money, @idCamp int, @idP int
as
	begin
		insert into Participation values (getdate(), @montantPart, @idCamp, @idP)
		print 'Participation ajoutée avec succés.'
	end
-- Test
select * from Participation
go
exec sp_ajouter_participation 17, 2, 1
go
select * from Participation

--6)
create function montantTotalParticipations(@idCategorie int) returns money
as
 begin
	return (select sum(montantPart) 
		from Participation P 
		inner join Campagne C on P.idCamp = C.idCamp
		inner join Categorie Cat on Cat.idCategorie = C.idCategorie
		where C.idCategorie = @idCategorie)
 end
 -- Test 1
select dbo.montantTotalParticipations(1)
-- Test 2
declare @catNom varchar(max) = (select nomCategorie from Categorie where idCategorie = 2)
print 'Montant total des participations dans les campagnes de ' + @catNom
print cast(dbo.montantTotalParticipations(2) as varchar) + ' DH'

-- Autres
select nomCamp as [Nom], 
	   count(*) as [Nombre de participations],
	   datediff(day, getdate(), dateFin) as [Jours restants avant la fin]
from Campagne C inner join Participation P
on c.idCamp = P.idCamp
where idCategorie = 1
group by nomCamp, dateFin
--
select * from Campagne
select idCamp, sum(montantPart)
from Participation 
group by idCamp
--
select nomCamp as [Nom],
	   dateCreation as [Date de création],
	   montantCamp as [Montant de la compagne],
	   sum(montantPart) as [Montant total des participations],
	   count(distinct idP) as [Nombre de participants]
from Campagne C inner join Participation P
on C.idCamp = P.idCamp
where 2017 >= year(dateCreation) and 2017 <= year(dateFin)
group by nomCamp, dateCreation, montantCamp
having sum(montantPart) >= montantCamp
--
select 
	idPart as [ID], 
	[datePart] as [Date], 
	montantPart [Montant], 
	nomP+' '+prenomP as [Participant]
from Participation Part inner join Participant P
on Part.idP = P.idP
where idCamp = 1
order by montantPart desc
--
select 
	nomCategorie as [Catégorie], 
	sum(montantPart) as [Montant Total]
from Participation P 
inner join Campagne C on P.idCamp = C.idCamp
inner join Categorie Cat on Cat.idCategorie = C.idCategorie
group by nomCategorie
--
select 
	nomCategorie as [Catégorie], 
	montantPart as [Montant]
from Participation P 
inner join Campagne C on P.idCamp = C.idCamp
inner join Categorie Cat on Cat.idCategorie = C.idCategorie

select * from Participation where idPart = 5
update Participation set montantPart = 1000 where idPart = 5

--
select * from Participant
select * from Organisateur
--

select 
	C.idCamp as [ID], 
	nomCamp as [Nom], 
	sum(montantPart) as [Montant total obtenu], 
	nomBeneficiere+' '+prenBeneficiere as [Bénéficière]
from Campagne C inner join Participation P
on C.idCamp = P.idCamp
where idCategorie = 2 and dateFin > getdate()
group by C.idCamp, nomCamp, nomBeneficiere, prenBeneficiere

--
select count(distinct idP) 
from Participation
where idCamp = 1;