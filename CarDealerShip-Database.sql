
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
    Phone VARCHAR(12) NOT NULL                    
);
-- Create a table to store vehicle information with columns matching the Java program variables
CREATE TABLE Vehicles (
    VIN VARCHAR(17) PRIMARY KEY,              -- Vehicle Identification Number (integer, primary key)
    `Year` YEAR NOT NULL,                
    Make VARCHAR(50) NOT NULL,        
    Model VARCHAR(50) NOT NULL,       
    `Type` VARCHAR(50) NOT NULL, 
    Color VARCHAR(50) NOT NULL,       
    Odometer INT NOT NULL,            
    Price DOUBLE NOT NULL,
    SOLD BOOLEAN DEFAULT 0  
);

-- Create a table to track which dealership has which vehicles

CREATE TABLE inventory (
    dealership_id INT,
    VIN VARCHAR(17),
    FOREIGN KEY (dealership_id) REFERENCES Dealerships(dealership_id),
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);


-- Create a table to store sales contract information
CREATE TABLE Sales_contracts (
    contract_id INT AUTO_INCREMENT PRIMARY KEY,
    VIN VARCHAR(17),
    sale_date DATE NOT NULL,
    sale_price DOUBLE NOT NULL,
    buyer_name VARCHAR(100) NOT NULL,
    buyer_contact VARCHAR(50) NOT NULL,
    FOREIGN KEY (VIN) REFERENCES Vehicles(VIN)
);



	


