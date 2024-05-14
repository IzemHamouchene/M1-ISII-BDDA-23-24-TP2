-- Create UniversityDB Database
CREATE DATABASE UniversityDB;
GO

-- Use UniversityDB Database
USE UniversityDB;
GO

-- Create Universite Table
CREATE TABLE universite (
    codeuniversite VARCHAR(10) PRIMARY KEY,
    nomuniversite VARCHAR(60)
);

GO
-- Create typeprojet Table
CREATE TABLE typeprojet (
    typeprj VARCHAR(10) PRIMARY KEY,
    libelle VARCHAR(60)
);
GO 
-- Create Projet Table
CREATE TABLE projet (
    codeprj VARCHAR(4) PRIMARY KEY,
    datedebut DATE,
    datefin DATE,
    responsable VARCHAR(30),
    budget INT,
    typeprj VARCHAR(10)
);
GO    

-- Create Chercheur Table
CREATE TABLE chercheur (
    numch INT PRIMARY KEY IDENTITY(1,1),
    nomch VARCHAR(30),
    codelab VARCHAR(4),
    codeuniversite VARCHAR(10),
    -- FOREIGN KEY (codelab) REFERENCES laboratoire(codelab)
   
);
GO
   
-- Create Laboratoire Table
CREATE TABLE laboratoire (
    codelab VARCHAR(4) PRIMARY KEY,
    nomlab VARCHAR(100),
    numch INT,
    datcreation DATE,
    siteweb NVARCHAR(255)
);


GO


-- Create Participe Table
CREATE TABLE participe (
    numch INT,
    codeprj varchar(4),
    Charge_Horaire INT,
    PRIMARY KEY (numch, codeprj)
);
GO
