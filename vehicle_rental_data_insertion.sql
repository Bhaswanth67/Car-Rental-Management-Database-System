admins
-- Data Insertion script for Vehicle Rental System

USE vehicle_rental_system;

-- Inserting data into the Users table
INSERT INTO Users (first_name, last_name, email, password, phone_number, address) VALUES
('John', 'Doe', 'john.doe@example.com', 'password123', '555-1234', '123 Elm Street, Cityville'),
('Jane', 'Smith', 'jane.smith@example.com', 'password123', '555-5678', '456 Oak Avenue, Townsville'),
('Alice', 'Johnson', 'alice.johnson@example.com', 'password123', '555-8765', '789 Maple Drive, Villagetown'),
('Bob', 'Brown', 'bob.brown@example.com', 'password123', '555-4321', '321 Pine Road, Hamletville'),
('Charlie', 'Davis', 'charlie.davis@example.com', 'password123', '555-9876', '654 Cedar Lane, Boroughville'),
('Eve', 'Miller', 'eve.miller@example.com', 'password123', '555-6543', '987 Birch Street, Metropolis'),
('Frank', 'Wilson', 'frank.wilson@example.com', 'password123', '555-7890', '246 Spruce Avenue, Capitolcity'),
('Grace', 'Taylor', 'grace.taylor@example.com', 'password123', '555-3214', '135 Sycamore Lane, Megatown'),
('Hank', 'Anderson', 'hank.anderson@example.com', 'password123', '555-6549', '753 Redwood Street, Gigatown'),
('Ivy', 'White', 'ivy.white@example.com', 'password123', '555-1239', '159 Fir Court, Citycenter');

-- Inserting data into the Admins table
INSERT INTO Admins (username, password) VALUES
('admin1', 'adminpassword1'),
('admin2', 'adminpassword2');

-- Inserting data into the Vendors table
INSERT INTO Vendors (company_name, contact_person, email, phone_number, address) VALUES
('Speedy Rentals', 'Sam Speed', 'sam@speedyrentals.com', '555-1000', '1 Fast Lane, Cityville'),
('Budget Wheels', 'Betty Budget', 'betty@budgetwheels.com', '555-2000', '2 Savings Road, Townsville'),
('Luxury Rides', 'Liam Luxury', 'liam@luxuryrides.com', '555-3000', '3 Highlife Street, Villagetown'),
('Eco Car Rentals', 'Ella Eco', 'ella@ecorentals.com', '555-4000', '4 Green Avenue, Hamletville'),
('Family Vans', 'Frank Family', 'frank@familyvans.com', '555-5000', '5 Spacious Drive, Boroughville'),
('City Cars', 'Carlos City', 'carlos@citycars.com', '555-6000', '6 Urban Way, Metropolis'),
('Driveaway Rentals', 'Dina Drive', 'dina@driveawayrentals.com', '555-7000', '7 Highway Blvd, Capitolcity'),
('Flex Rent', 'Felix Flex', 'felix@flexrent.com', '555-8000', '8 Mobility Circle, Megatown'),
('Prime Cars', 'Paula Prime', 'paula@primecars.com', '555-9000', '9 Elite Street, Gigatown'),
('Quick Rentals', 'Quincy Quick', 'quincy@quickrentals.com', '555-1001', '10 Fast Track, Citycenter');

-- Inserting data into the Cars table
INSERT INTO Cars (vendor_id, make, model, year, price_per_day, availability_status) VALUES
(1, 'Toyota', 'Corolla', 2021, 50.00, TRUE),
(2, 'Honda', 'Civic', 2020, 45.00, TRUE),
(3, 'Ford', 'Focus', 2019, 40.00, TRUE),
(4, 'Chevrolet', 'Malibu', 2022, 60.00, TRUE),
(5, 'Nissan', 'Altima', 2021, 55.00, TRUE),
(6, 'Hyundai', 'Elantra', 2019, 42.00, TRUE),
(7, 'Volkswagen', 'Jetta', 2022, 58.00, TRUE),
(8, 'Kia', 'Optima', 2021, 50.00, TRUE),
(9, 'BMW', '3 Series', 2023, 100.00, TRUE),
(10, 'Audi', 'A4', 2023, 110.00, TRUE);

-- Inserting data into the Rentals table
INSERT INTO Rentals (user_id, car_id, start_date, end_date, rental_status, total_amount, initial_payment, final_payment) VALUES
(1, 1, '2024-01-01', '2024-01-07', 'Confirmed', 350.00, 175.00, 175.00),
(2, 2, '2024-01-05', '2024-01-10', 'Confirmed', 225.00, 112.50, 112.50),
(3, 3, '2024-02-01', '2024-02-07', 'Cancelled', 240.00, 120.00, 0.00),
(4, 4, '2024-02-10', '2024-02-15', 'Completed', 300.00, 150.00, 150.00),
(5, 5,  '2024-03-01', '2024-03-08', 'Confirmed', 385.00, 192.50, 192.50),
(6, 6, '2024-03-15', '2024-03-20', 'Completed', 210.00, 105.00, 105.00),
(7, 7, '2024-04-01', '2024-04-05', 'Confirmed', 232.00, 116.00, 116.00),
(8, 8, '2024-04-10', '2024-04-17', 'Completed', 350.00, 175.00, 175.00),
(9, 9, '2024-05-01', '2024-05-07', 'Confirmed', 700.00, 350.00, 350.00),
(10, 10, '2024-05-15', '2024-05-22', 'Confirmed', 770.00, 385.00, 385.00);

INSERT INTO Payments (rental_id, amount_paid, payment_status)
VALUES
(1, 175.00, 'Partial'),
(2, 100.00, 'Pending');

INSERT INTO Locations (city, state, country)
VALUES
('New York', 'NY', 'USA'),
('Los Angeles', 'CA', 'USA');
