create database ASP_TP9;
use ASP_TP9;
create table Dossier (
	num_dossier int primary key identity, 
	date_depot date,
	montant_remboursement money, 
	date_traitement date, 
	lien_malade varchar(50),
	matricule varchar(50) foreign key references Assuré (matricule),
	num_maladie int foreign key references Maladie (num_maladie),
	total_dossier money
);
create table Assuré (
	matricule varchar(50) primary key,
	nom_ass varchar(50),
	prenom_ass varchar(50),
	date_naissance date,
	nb_enfants int,
	situation_familiale varchar(50),
	num_entreprise int foreign key references Entreprise (num_entreprise), 
	total_remb money, 
	date_deces date, 
	mot_passe varchar(50)
);
create table Maladie (
	num_maladie int primary key identity,
	designation_maladie varchar(50)
);
create table Entreprise (
	num_entreprise int primary key identity,
	nom_entreprise varchar(50), 
	adresse varchar(100), 
	telephone varchar(50),
	email varchar(50),
	nombre_employes int 
);
create table Utilisateur(
	[id] int primary key identity,
	[user] varchar(50),
	[pass] varchar(50),
	[role] varchar(50)
)
