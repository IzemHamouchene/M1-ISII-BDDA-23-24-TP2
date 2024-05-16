
USE UniversityDB;
GO

ALTER TABLE Laboratoire
ALTER COLUMN cheflab INT NOT NULL;

ALTER TABLE Laboratoire
ADD CONSTRAINT FK_Laboratoire_Chef FOREIGN KEY (cheflab) REFERENCES Chercheur(cheflab);