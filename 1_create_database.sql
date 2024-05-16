-- Create a new database 'UniversityDB'
CREATE DATABASE UniversityDB;
-- Use the UniversityDB Database
GO
USE UniversityDB

CREATE TABLE Laboratoire (
    CodeLab VARCHAR(4) PRIMARY KEY,
    NomLab VARCHAR(100),
    cheflab INT NOT NULL,
    Datcreation DATE,
    Siteweb NVARCHAR(255)
);

CREATE TABLE Chercheur (
    NumCh INT PRIMARY KEY,
    NomCh VARCHAR(30),
    CodeLab VARCHAR(4),
    CodeUniversite VARCHAR(10)
);
CREATE TABLE Projet (
    CodePrj VARCHAR(4) PRIMARY KEY,
    DateDebut DATE,
    DateFin DATE,
    Responsable VARCHAR(30),
    Budget INT,
    TypePrj VARCHAR(10)
);

CREATE TABLE TypeProjet (
    TypePrj VARCHAR(10) PRIMARY KEY,
    Libelle VARCHAR(60)
);

CREATE TABLE Participe (
    NumCh INT,
    CodePrj VARCHAR(4),
    Charge_Horaire INT,
    PRIMARY KEY (NumCh, CodePrj)
);
CREATE TABLE Universite (
    CodeUniversite VARCHAR(10) PRIMARY KEY,
    NomUniversite VARCHAR(60)
);