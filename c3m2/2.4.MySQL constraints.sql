DROP DATABASE IF EXISTS Mangata_Gallo;

CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo;

# Task 1:  Create the Staff table 
CREATE TABLE Staff (StaffID INT not null NOT NULL PRIMARY KEY,
                    PhoneNumber INT NOT NULL UNIQUE,
                    FullName VARCHAR(100) NOT NULL);

# Task 2: Create the 'ContractInfo' table 
CREATE TABLE ContactInfo (ContractID INT NOT NULL PRIMARY KEY,
                        Salary DECIMAL(7,2) NOT NULL,
                        Location VARCHAR(50) NOT NULL DEFAULT = "Texas",
                        StaffType VARCHAR(20) NOT NULL CHECK IN(StaffType = "Junior" OR StaffType = "Senior" ));

# Task 3: Create a foreign key that links the Staff table with the ContractInfo table
ALTER TABLE ContractInfo 
ADD CONSTRAINT FK_StaffID_ContractInfo
FOREIGN KEY (StaffID) REFERENCES Staff(StaffID);