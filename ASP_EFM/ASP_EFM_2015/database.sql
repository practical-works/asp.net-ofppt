create database gestion_etudiants;
use gestion_etudiants;

create table Cours (
	NumCours int primary key identity, 
	Salle varchar(50), 
	MatriculeProfesseur int foreign key references Professeur (MatriculeProfesseur),
	Titre varchar(50), 
	Coef int
);
create table Etudiant (
	CodeEtudiant int primary key identity, 
	Nom varchar(50), 
	Date_naiss date, 
	Tel varchar(50), 
	mail varchar(50), 
	pass varchar(50)
);
create table Professeur (
	MatriculeProfesseur int primary key identity, 
	Nom varchar(50), 
	Tel varchar(50)
);
create table Examen (
	CodeEtudiant int foreign key references Etudiant (CodeEtudiant), 
	NumCours int foreign key references Cours (NumCours), 
	[Date] date, 
	Note float
);