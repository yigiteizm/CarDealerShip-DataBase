
-- Drop the database if it already exists

DROP DATABASE IF EXISTS CarDealershipDatabase;

-- Create a new database
CREATE DATABASE CarDealershipDatabase;

-- Use the newly created database
USE CarDealershipDatabase;

-- Drop tables if they exist
DROP TABLE IF EXISTS Dealerships;
DROP TABLE IF EXISTS Vehicles;
DROP TABLE IF EXISTS Inventory;
DROP TABLE IF EXISTS Sales_contracts;

-- Create a table to store dealership information
CREATE TABLE Dealerships (
    Dealership_id INT AUTO_INCREMENT PRIMARY KEY, -- Unique, auto-incrementing ID for each dealership
    DealershipName VARCHAR(50) NOT NULL,                    
    Address VARCHAR(50) NOT NULL,                 
    Phone VARCHAR(50) NOT NULL                    
);





