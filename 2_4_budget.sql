
USE UniversityDB;
ALTER TABLE Projet ADD CONSTRAINT CHK_Budget CHECK (Budget <= 5000000);