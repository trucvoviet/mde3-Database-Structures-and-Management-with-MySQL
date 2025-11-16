DROP DATABASE IF EXISTS Mangata_Gallo;

CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo;

#Task 1: Write a SQL statement that creates the Staff table
CREATE TABLE Staffs (StaffID INT, Fullname VARCHAR(100), PhoneNumber VARCHAR(10));

#Task 2: 
ALTER TABLE Staffs MODIFY StaffID INT PRIMARY KEY, 
                MODIFY FullName VARCHAR(100) NOT NULL, 
                MODIFY PhoneNumber INT NOT NULL; 

#Task 3:
ALTER TABLE Staffs ADD COLUMN Role VARCHAR(50) NOT NULL;

#Rask 4:
ALTER TABLE Staffs DROP COLUMN PhoneNumber;