-- Dossier 1
-- 1)
if exists (select * from sys.databases where name = 'EFF_2016_V2')
	drop database EFF_2016_V2
go
create database EFF_2016_V2
go
use EFF_2016_V2
go
create table Type_app (
	num_type int primary key,
	nom_type varchar(50),
	nb_appareils int default 0,
	motdepasse varchar(50)
)
create table Appareil (
	num_appareil int primary key,
	nom_appareil varchar(50),
	date_achat date,
	prix_achat money,
	nb_contrats int default 0,
	num_type int foreign key references Type_app (num_type)
)
create table Société (
	num_société int primary key,
	num_registrecommerce int,
	nom_société varchar(50),
	adresse varchar(50),
	téléphone_société int
)
create table Client (
	num_client int primary key,
	nom varchar(50),
	prénom varchar(50),
	email varchar(50),
	adresse varchar(50),
	téléphone varchar(50),
	nb_contrats int default 0,
	num_société int foreign key references Société (num_société)
)
create table Contrat (
	num_police int primary key,
	date_contrat date,
	date_fin_contrat date,
	montant_contrat money,
	num_client int foreign key references Client (num_client),
	num_appareil int foreign key references Appareil (num_appareil),
	nb_rubriques int default 0
)
create table Rubrique (
	num_rubrique int primary key,
	nom_rubrique varchar(50),
	prix_rubrique money,
	num_contrat int foreign key references Contrat (num_police)
)
go
insert into Type_app values 
(1, 'Ordinateur', default, 'abc123'),
(2, 'Imprimente', default, 'abc123'),
(3, 'Vidéo projecteur', default, 'abc123')
select * from Type_app
go
insert into Appareil values 
(1, 'HP1000', '11/02/2016', 8000, default, 1),
(2, 'Atalon-X2000', '11/02/2016', 10000, default, 1),
(3, 'DataShow-VREX9', '11/02/2016', 2800, default, 3)
select * from Appareil
go
insert into Société values 
(1, 458412, 'TheShow', 'DD 9 AYXS Ganan Dox', 120),
(2, 894211, 'DevExpress', 'Katix AM 10-20 Rox', 891),
(3, 112001, 'ConCatX', 'Piano Area 11 Elevanto 7', 257)
select * from Société
go
insert into Client values 
(1, 'El boukal', 'Mounaîm', 'amix@gmail.com', 'La place 784 ADF89', '0678451289', default, 3),
(2, 'Malasia', 'Karim', 'xcd@gmail.com', 'MA 7547-41 sakan nahda', '0687220014', default, 1),
(3, 'Rockman', 'Dounia', 'sddsf@gmail.com', 'the place 7 k.b.d', '0699245799', default, 2)
select * from Client
go
insert into Contrat values 
(1, '14/11/2015', '25/01/2016', 1000, 1, 1, default),
(2, getdate(), null, 1900, 3, 2, default),
(3, '01/01/2010', '20/07/2010', 5000, 2, 3, default)
select * from Contrat
go
insert into Rubrique values 
(1, 'Conférences', 100, 2),
(2, 'Tests', 100, 2),
(3, 'Projet', 80, 1)
select * from Rubrique
go

-- 2)
alter table Type_app
add constraint c_nom_type
check (nom_type in ('informatique', 'réseau', 'équipement', 'autre'))

-- 3)
select * from Contrat C
inner join Client Cli on C.num_client = Cli.num_client
inner join Société S on S.num_société = Cli.num_société
where nom = 'Rockman' and nom_société = 'DevExpress' and nb_rubriques >= 2

-- 4)
create proc sp_nb_clients_contrats
	@num_type varchar(max),
	@nb_clients int out, @nb_contrats int out
as
	begin
		set @nb_clients = (select count(distinct Cli.num_client) from Client Cli
			inner join Contrat C on C.num_client = Cli.num_client
			inner join Appareil A on A.num_appareil = C.num_appareil
			where num_type = @num_type)
		set @nb_contrats = (select count(Cli.num_client) from Client Cli
			inner join Contrat C on C.num_client = Cli.num_client
			inner join Appareil A on A.num_appareil = C.num_appareil
			where num_type = @num_type)
	end
-- Test
declare @nb_cli int, @nb_cont int
exec sp_nb_clients_contrats 1, @nb_cli out, @nb_cont out
select @nb_cli as 'Nombre de clients', @nb_cont as 'Nombre de contrats'

-- 5)
create function montantTotalContrat(@num_contrat int) returns money
as
	begin
		return (select sum(prix_rubrique) from Rubrique R
			inner join Contrat C on C.num_police = R.num_contrat
			where num_contrat = @num_contrat)	
	end
-- Test
select dbo.montantTotalContrat(2) as 'Montant Rubrique'

-- 6) 
alter trigger tr_nb_rubriques
	on Rubrique
	after update
as
	begin
		declare @num_contrat int = (select num_contrat from inserted)
		declare @nb_rubriques int = (select count(num_contrat) from Rubrique where num_contrat = @num_contrat)
		update Contrat set nb_rubriques = @nb_rubriques where num_police = @num_contrat

		declare @num_contrat_old int = (select num_contrat from deleted)
		declare @nb_rubriques_old int = (select count(num_contrat) from Rubrique where num_contrat = @num_contrat_old)
		update Contrat set nb_rubriques = @nb_rubriques_old where num_police = @num_contrat_old
	end

--
select * from Rubrique where num_contrat in (select num_police from Contrat where num_appareil = 1)

select * from Rubrique R 
inner join Contrat C on C.num_police = R.num_contrat
where num_police = 2

select num_appareil, nom_appareil, date_achat, prix_achat, nb_contrats, nom_type from Appareil A
inner join Type_app T on A.num_type = T.num_type
where num_appareil = 1

select count(*) from Contrat where num_appareil = 2

select nom+' '+prénom, num_appareil, num_police from Client Cli
inner join Contrat C on C.num_client = Cli.num_client
where num_appareil = 1

select count(distinct C.num_client) from Client Cli
inner join Contrat C on C.num_client = Cli.num_client
where num_appareil = 1

--
select sum(dbo.montantTotalContrat(num_police)) from Appareil A
inner join Contrat C on c.num_appareil = A.num_appareil
where A.num_appareil = 1
