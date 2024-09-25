-- Database creation script for Vehicle Rental System

-- Dropping the database if it exists
DROP DATABASE IF EXISTS vehicle_rental_system;

-- Creating the new database
CREATE DATABASE vehicle_rental_system;

-- Selecting the created database
USE vehicle_rental_system;

-- Creating the Users table
CREATE TABLE Users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    phone_number VARCHAR(15),
    address VARCHAR(255),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating the Admins table
CREATE TABLE Admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) UNIQUE,
    password VARCHAR(100)
);

-- Creating the Vendors table
CREATE TABLE Vendors (
    vendor_id INT AUTO_INCREMENT PRIMARY KEY,
    company_name VARCHAR(100),
    contact_person VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    phone_number VARCHAR(15),
    address VARCHAR(255),
    registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Creating the Cars table
CREATE TABLE Cars (
    car_id INT AUTO_INCREMENT PRIMARY KEY,
    vendor_id INT,
    make VARCHAR(50),
    model VARCHAR(50),
    year YEAR,
    price_per_day DECIMAL(10, 2),
    availability_status BOOLEAN DEFAULT TRUE,
    FOREIGN KEY (vendor_id) REFERENCES Vendors(vendor_id)
);

-- Creating the Locations table (source and destination for rentals)
CREATE TABLE Locations (
    location_id INT AUTO_INCREMENT PRIMARY KEY,
    city VARCHAR(50),
    state VARCHAR(50),
    country VARCHAR(50)
);

-- Creating the Rentals table
CREATE TABLE Rentals (
    rental_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    car_id INT,
    start_date DATE,
    end_date DATE,
    rental_status VARCHAR(50),
    total_amount DECIMAL(10, 2),
    initial_payment DECIMAL(10, 2),
    final_payment DECIMAL(10, 2),
    rental_request_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    pickup_location INT,
    dropoff_location INT,
    FOREIGN KEY (user_id) REFERENCES Users(user_id),
    FOREIGN KEY (car_id) REFERENCES Cars(car_id),
    FOREIGN KEY (pickup_location) REFERENCES Locations(location_id),
    FOREIGN KEY (dropoff_location) REFERENCES Locations(location_id)
);

-- Creating the Payments table
CREATE TABLE Payments (
    payment_id INT AUTO_INCREMENT PRIMARY KEY,
    rental_id INT,
    amount_paid DECIMAL(10, 2),adminsadminsadmin_id
    payment_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    payment_status VARCHAR(50) DEFAULT 'Pending',
    FOREIGN KEY (rental_id) REFERENCES Rentals(rental_id)
);

-- Sample Indexes for performance optimization
CREATE INDEX idx_user_email ON Users (email);
CREATE INDEX idx_car_availability ON Cars (availability_status);
CREATE INDEX idx_rental_status ON Rentals (rental_status);
