﻿--
-- Script was generated by Devart dbForge Studio for SQL Server, Version 5.1.178.0
-- Product Home Page: http://www.devart.com/dbforge/sql/studio
-- Script date 29/05/2017 00:36:11
-- Target server version: 12.00.2000
-- Target connection string: Data Source=AMBRATOLM-PC\AMBRATOLM_SQL;Integrated Security=True
-- Please backup your target database before running this script
--



SET LANGUAGE 'French'
SET DATEFORMAT ymd
SET ARITHABORT, ANSI_PADDING, ANSI_WARNINGS, CONCAT_NULL_YIELDS_NULL, QUOTED_IDENTIFIER, ANSI_NULLS, NOCOUNT ON
SET NUMERIC_ROUNDABORT, IMPLICIT_TRANSACTIONS, XACT_ABORT OFF
GO

USE gestion_etudiants
GO
IF DB_NAME() <> N'gestion_etudiants' SET NOEXEC ON
GO

--
-- Inserting data into table dbo.Etudiant
--
SET IDENTITY_INSERT dbo.Etudiant ON
GO
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (1, N'Edmond Sperry', '1987-01-07', N'895-0644', N'Edmond_JSperry@example.com', N'2699DJ')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (2, N'Clinton Wakefield', '1993-08-03', N'725-7554', N'Kyle_Littlejohn946@example.com', N'01CG0U')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (3, N'Jeffrey Otoole', '1988-07-26', N'783-4003', N'Rosalie_Payne@example.com', N'77C719')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (4, N'Carl Snyder', '1987-02-07', N'163-9009', N'Mayer7@example.com', N'771VF5')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (5, N'Dannie Kirk', '1989-03-20', N'310-8470', N'Carolann_Pinkston@example.com', N'WZ5247')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (6, N'Hunter Littlejohn', '1988-10-12', N'365-8553', N'Sydney_Gleason@example.com', N'J429NE')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (7, N'Edmundo Koch', '1997-01-21', N'993-9657', N'Lewis263@nowhere.com', N'AJ99S0')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (8, N'Kyung Hibbard', '1989-07-01', N'107-5814', N'SachikoPruett32@example.com', N'0UDR49')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (9, N'Leeanna Shifflett', '1988-05-13', N'452-9474', N'BoCallender4@nowhere.com', N'4I0DV2')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (10, N'Herman Kohl', '1998-07-06', N'869-9600', N'RyanTorres734@nowhere.com', N'V44990')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (11, N'Patricia Salcido', '1988-06-30', N'627-0026', N'Stafford@nowhere.com', N'G5HKY6')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (12, N'Mose Rollins', '1987-02-19', N'264-5409', N'BobHauser@example.com', N'8QA3H0')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (13, N'Myrl Major', '1987-01-03', N'045-5589', N'Guzman@example.com', N'C91C7W')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (14, N'Dion Merrill', '1988-09-29', N'879-2429', N'LorenzoIngle@example.com', N'26R6O3')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (15, N'Gaston Zhang', '1993-05-28', N'630-1311', N'Velda_M_Holland@example.com', N'K1B49X')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (16, N'Patrice Streeter', '1989-05-06', N'989-0056', N'Deloris.Grogan14@example.com', N'XV159O')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (17, N'Aida Bragg', '1989-03-19', N'424-7114', N'MarilynnLouis37@example.com', N'N3NKC0')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (18, N'Daron Hartley', '1989-04-15', N'655-4577', N'Whyte@example.com', N'P0GCHC')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (19, N'Norine Crook', '1988-05-03', N'979-5459', N'StephanDiggs@example.com', N'NI66P2')
INSERT dbo.Etudiant(CodeEtudiant, Nom, Date_naiss, Tel, mail, pass) VALUES (20, N'Wen Witherspoon', '1987-12-24', N'957-4590', N'Cervantes@nowhere.com', N'S527XO')
GO
SET IDENTITY_INSERT dbo.Etudiant OFF
GO

--
-- Inserting data into table dbo.Professeur
--
SET IDENTITY_INSERT dbo.Professeur ON
GO
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (1, N'Ted Glover', N'440-4990')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (2, N'Kelli Hurtado', N'594-2665')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (3, N'Nathalie Burnside', N'970-1536')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (4, N'Delisa Wayne', N'203-9271')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (5, N'Ruthanne Garber', N'458-2226')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (6, N'Sabine Montanez', N'735-4713')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (7, N'Carmine Lamb', N'939-9769')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (8, N'Marylee Shelton', N'700-3111')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (9, N'Man Overton', N'683-2589')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (10, N'Argelia Martell', N'026-6524')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (11, N'Ethan Hogan', N'266-7252')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (12, N'Santana Leighton', N'517-2303')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (13, N'Numbers Painter', N'925-0064')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (14, N'Louie Villarreal', N'383-3995')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (15, N'Franklin Delong', N'575-2097')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (16, N'Burma Chamberlain', N'183-6360')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (17, N'Leslie Perales', N'842-6396')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (18, N'Robert Hanlon', N'811-9683')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (19, N'Carlene Bartlett', N'726-3398')
INSERT dbo.Professeur(MatriculeProfesseur, Nom, Tel) VALUES (20, N'Rey Dion', N'093-3314')
GO
SET IDENTITY_INSERT dbo.Professeur OFF
GO

--
-- Inserting data into table dbo.Cours
--
SET IDENTITY_INSERT dbo.Cours ON
GO
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (1, N'Salle-000', 19, N'Project Coordinator', 7)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (2, N'Salle-001', 14, N'Area Administrator', 2)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (3, N'Salle-002', 6, N'Collection Manager', 10)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (4, N'Salle-003', 12, N'Secretary', 5)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (5, N'Salle-004', 13, N'Specialist', 4)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (6, N'Salle-005', 19, N'Service Engineer', 7)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (7, N'Salle-006', 1, N'Research Assistant', 5)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (8, N'Salle-007', 10, N'Network Engineer', 4)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (9, N'Salle-008', 6, N'Vice President', 7)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (10, N'Salle-009', 16, N'Assistant Vice President', 3)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (11, N'Salle-010', 13, N'Programmer', 3)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (12, N'Salle-011', 10, N'Chief Financial Officer', 5)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (13, N'Salle-012', 19, N'Assistant', 5)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (14, N'Salle-013', 4, N'Technical Writer', 5)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (15, N'Salle-014', 4, N'Vice President', 4)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (16, N'Salle-015', 5, N'Senior Consultant', 8)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (17, N'Salle-016', 10, N'Application Development Supervisor', 4)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (18, N'Salle-017', 16, N'Advisor', 7)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (19, N'Salle-018', 6, N'Design Engineer', 8)
INSERT dbo.Cours(NumCours, Salle, MatriculeProfesseur, Titre, Coef) VALUES (20, N'Salle-019', 16, N'Building Manager', 2)
GO
SET IDENTITY_INSERT dbo.Cours OFF
GO

--
-- Inserting data into table dbo.Examen
--
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (12, 16, '2017-02-17', 17.04)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (1, 4, '2016-12-10', 20)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (17, 6, '2017-03-28', 17.05)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (12, 3, '2016-11-07', 20)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (9, 8, '2016-06-11', 18.02)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (20, 5, '2016-06-30', 18.02)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (16, 3, '2016-11-01', 20)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (18, 5, '2016-09-20', 19.03)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (7, 16, '2016-01-01', 17)
INSERT dbo.Examen(CodeEtudiant, NumCours, Date, Note) VALUES (16, 2, '2016-03-02', 17.06)
GO

--
-- Set NOEXEC to off
--

SET NOEXEC OFF
GO