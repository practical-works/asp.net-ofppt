CREATE DATABASE ASP_EFM_2017;
USE ASP_EFM_2017;

CREATE TABLE Hotel (
    numhotel INT PRIMARY KEY
   ,nom VARCHAR(50)
   ,ville VARCHAR(50)
   ,etoiles INT
);
CREATE TABLE Chambre (
    numchambre INT PRIMARY KEY
   ,numhotel INT FOREIGN KEY REFERENCES Hotel (numhotel)
   ,etage INT
   ,[type] VARCHAR(50)
   ,prixnuitht MONEY
);
CREATE TABLE Client (
    numclient INT PRIMARY KEY IDENTITY
   ,cin VARCHAR(50)
   ,nom VARCHAR(50)
   ,prenom VARCHAR(50)
   ,tel VARCHAR(50)
   ,[login] VARCHAR(50)
   ,pass VARCHAR(50)
);
CREATE TABLE Reservation (
    numresa INT PRIMARY KEY
   ,numclient INT FOREIGN KEY REFERENCES Client (numclient)
   ,numchambre INT FOREIGN KEY REFERENCES Chambre (numchambre)
   ,numhotel INT FOREIGN KEY REFERENCES Hotel (numhotel)
   ,datearrivee DATE
   ,datedepart DATE
);