# TP 2 : Database Management

In this exercise, you will write SQL queries that create a database, tables, and answer some business queries.

## Exercise 1 : Create the Database

Write the following SQL queries into [_1_create_database.sql_](1_create_database.sql)
1. Create a Database named **UniversityDB**
2. Create Table named **Laboratoire** with the following attribute
    * CodeLab varchar(4) (Primary Key)
    * NomLab varchar (100)
    * cheflab* Type Integer
    * Datcreation Date
    * Siteweb NVARCHAR (255)
3. Create Table named **Chercheur** with the following attribute
    * NumCh Type Integer (Primary Key)
    * NomCh varchar(30)
    * CodeLab* varchar(4)
    * CodeUniversite varchar(10)
4. Create Table named **Projet** with the following attribute
    * CodePrj varchar(4) (Primary Key)
    * DateDebut Date
    * DateFin Date
    * Responsable varchar(30)
    * Budget INT
    * TypePrj* varchar(10)
5. Create Table named **TypeProjet** with the following attribute
    * TypePrj varchar(10) (Primary Key)
    * Libelle varchar(60)
6. Create Table named **Participe** with the following attribute
    * NumCh* INT (Primary Key)
    * CodePrj* varchar(4) (Primary Key)
    * Charge_Horaire INT
7. Create Table named **Universite** with the following attribute
    * CodeUniversite varchar(10) (Primary Key)
    * NomUniversite varchar(60)
  

## Exercise 2 : Database adjustements (2 pts)

Write the following SQL queries to adjust the database:
1. Add new column **date_naissance** to the table **chercheur**. Put your query into [_2_1_DateNaissance.sql_](2_1_DateNaissance.sql)
2. Delete the column **DateFin** from the table **Projet**. Put your query into [_2_2_DateFin.sql_](2_2_DateFin.sql)
3. Add the constraint "Each **laboratoire** must have a _chef_" . Put your query into [_2_3_chef.sql_](2_3_chef.sql)
4. Add the constraint "The _budget_ of each **projet** must not exceed 5000000". Put your query into [_2_4_budget.sql_](2_4_budget.sql)
   
 ## Exercise 3 : Database Queries (2 pts)

 1. Display average of **Charge_Horaire** of each **project**, output columns : *CodePrj, AVG(Charge_Horaire)*. Put your query into [_3_1_average.sql_](3_1_average.sql)
 2. Display (_NomCh, NomUniversite_) of the **chercheurs** related to '**LSI**' **laboratoire**, output columns : *Chercheur.NomCh, Universite.NomUniversite*. Put your query into [_3_2_nomCh.sql_](3_2_nomCh.sql)
 3. Sort the **laboratoire** in descending order based on the overall **Charge_Horaire** provided by its **chercheurs**, output columns : *Laboratoire.CodeLab, SUM(Participe.Charge_Horaire)*. Display the codelab and the sum of Charge_Horaire. Put your query into [_3_3_sort.sql_](3_3_sort.sql)

 
  Check the Actions tab to see if you have completed the exercise successfully.
