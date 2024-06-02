USE UniversityDB;
GO
ALTER TABLE Chercheur
ADD date_naissance DATE;

2_2_DateFin.sql

USE UniversityDB;
GO
-- drop dateFIn column
ALTER TABLE Projet
DROP COLUMN DateFin;
GO

