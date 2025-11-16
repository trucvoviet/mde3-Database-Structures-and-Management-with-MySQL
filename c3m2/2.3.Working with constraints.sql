DROP DATABASE IF EXISTS Mangata_Gallo;

CREATE DATABASE Mangata_Gallo;

USE Mangata_Gallo;

#Task 1: Create the Clients table 
CREATE TABLE Clients (ClientID INT NOT NULL PRIMARY KEY,
                    FullName VARCHAR(100) NOT NULL,
                    PhoneNumber INT NOT NULL UNIQUE);

SHOW COLUMNS FROM Clients;

#Task 2: Create the Items table 

CREATE TABLE Items (ItemID INT NOT NULL PRIMARY KEY,
                    ItemName VARCHAR(100) NOT NULL,
                    Price DECIMAL(5,2) NOT NULL);


SHOW COLUMNS FROM Items;

#Task 3: Create the Orders table 
CREATE TABLE Orders (OrderID INT NOT NULL PRIMARY KEY,
                    ClientID INT NOT NULL,
                    ItemID INT NOT NULL,
                    Quantity INT NOT NULL CHECK (Quantity < 4),
                    Cost DECIMAL(6,2) NOT NULL,
                    FOREIGN KEY (ClientID) REFERENCES Clients(ClientID),
                    FOREIGN KEY (ItemID) REFERENCES Items(ItemID)
                    ); 
