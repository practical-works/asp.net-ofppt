-- Create & Use database
DROP DATABASE ASP_Ex2;
CREATE DATABASE ASP_Ex2;
USE ASP_Ex2;

-- Create tables
CREATE TABLE Client (
    NumClient INT PRIMARY KEY IDENTITY
   ,Nom VARCHAR(50) NOT NULL
   ,Adresse VARCHAR(50)
   ,Ville VARCHAR(50)
   ,Tel VARCHAR(50) NOT NULL
   ,Loginn VARCHAR(50) UNIQUE NOT NULL
   ,Pass VARCHAR(50) NOT NULL
);
CREATE TABLE Commande (
    NumCmd INT PRIMARY KEY IDENTITY
   ,NumClient INT FOREIGN KEY REFERENCES Client (NumClient)
    ON UPDATE CASCADE ON DELETE SET NULL
   ,dateCmd DATE
);
CREATE TABLE Article (
    NumArticle INT PRIMARY KEY IDENTITY
   ,Designation VARCHAR(50)
   ,Pu MONEY
   ,catégorie VARCHAR(50)
);
CREATE TABLE Contenir (
    NumCmd INT FOREIGN KEY REFERENCES Commande (NumCmd)
    ON UPDATE CASCADE ON DELETE CASCADE
   ,NumArticle INT FOREIGN KEY REFERENCES Article (NumArticle)
    ON UPDATE CASCADE ON DELETE CASCADE
   ,quantite INT
   ,PRIMARY KEY (NumCmd, NumArticle, quantite)
);
CREATE TABLE Admin (
    id INT PRIMARY KEY IDENTITY
   ,name VARCHAR(50) UNIQUE NOT NULL
   ,Pass VARCHAR(50) NOT NULL
);

-- Select all created tables
SELECT name FROM sys.tables;
