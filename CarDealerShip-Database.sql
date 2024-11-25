
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

INSERT INTO Dealerships (DealershipName, Address, Phone)
VALUES
('Luxury AutoHub', '123 Tesla Lane, San Francisco, CA, 94102', '415-555-1234'),
('Prestige Motors', '456 Mercedes Blvd, Miami, FL, 33101', '305-555-4567'),
('Elite Jaguar Center', '789 Jaguar St, Dallas, TX, 75201', '214-555-7890'),
('Maserati World', '101 Maserati Ave, Chicago, IL, 60601', '312-555-1010'),
('Corvette Kingdom', '202 Corvette Dr, Detroit, MI, 48201', '313-555-2020');

INSERT INTO Vehicles (VIN, `Year`, Make, Model, `Type`, Color, Odometer, Price, SOLD)
VALUES

('5YJ3E1EA7LF012345', 2023, 'Tesla', 'Model S', 'Electric', 'White', 5000, 79999.99, FALSE),
('WDBUF56X76A012345', 2022, 'Mercedes-Benz', 'C-Class', 'Sedan', 'Black', 12000, 39999.99, TRUE),
('SAJWA4BC4BMB01234', 2023, 'Jaguar', 'XF', 'Sedan', 'Blue', 15000, 45999.99, FALSE),
('ZAM57RTA7F1234567', 2021, 'Maserati', 'Ghibli', 'Sedan', 'Red', 20000, 74999.99, TRUE),
('1G1YY26E295012345', 2020, 'Chevrolet', 'Corvette', 'Coupe', 'Yellow', 25000, 89999.99, FALSE),
('1FAFP4041XF012345', 2023, 'Ford', 'Mustang', 'Coupe', 'Red', 10000, 55000.00, FALSE),
('4T1BG22K21U012345', 2022, 'Toyota', 'Avalon', 'Sedan', 'White', 15000, 36000.00, TRUE),
('3VWFE81HXM0123456', 2021, 'Volkswagen', 'Passat', 'Sedan', 'Black', 18000, 32000.00, FALSE),
('JN8DR09Y7XW012345', 2023, 'Nissan', 'Rogue', 'SUV', 'Blue', 12000, 33000.00, TRUE),
('1G1BE5SM7J7123456', 2020, 'Chevrolet', 'Cruze', 'Sedan', 'Gray', 20000, 25000.00, FALSE);

INSERT INTO inventory (dealership_id, VIN)
VALUES
(1, '5YJ3E1EA7LF012345'),
(2, 'WDBUF56X76A012345'),
(3, 'SAJWA4BC4BMB01234'),
(4, 'ZAM57RTA7F1234567'),
(5, '1G1YY26E295012345'),
(1, '1FAFP4041XF012345'),
(2, '4T1BG22K21U012345'),
(3, '3VWFE81HXM0123456'),
(4, 'JN8DR09Y7XW012345'),
(5, '1G1BE5SM7J7123456');

INSERT INTO Sales_contracts (VIN, SaleDate, SalePrice, BuyerName, BuyerContactInfo)
VALUES
('WDBUF56X76A012345', '2023-07-15', 39999.99, 'Michael Johnson', 'michael.johnson@example.com'),
('ZAM57RTA7F1234567', '2023-08-10', 74999.99, 'Sarah Williams', 'sarah.williams@example.com'),
('4T1BG22K21U012345', '2023-05-20', 36000.00, 'Emily Davis', 'emily.davis@example.com'),
('JN8DR09Y7XW012345', '2023-09-05', 33000.00, 'Daniel Martinez', 'daniel.martinez@example.com');


	


