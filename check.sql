-- Insert a sample car
INSERT INTO Cars (vendor_id, make, model, year, price_per_day) 
VALUES (1, 'Toyota', 'Camry', 2022, 50.00);

-- Insert a sample rental (user_id 1, car_id 1)
INSERT INTO Rentals (user_id, car_id, start_date, end_date, rental_status, pickup_location, dropoff_location) 
VALUES (1, 1, '2024-09-25', '2024-09-28', 'Pending', 1, 2);

CALL CalculateTotalRentalAmount(1);  -- Use the rental_id of the inserted rental

SELECT * FROM Rentals WHERE rental_id = 1;

CALL CalculateTotalRentalAmount(999); -- Assuming rental ID 999 doesn't exist

-- Check availability before rental
SELECT * FROM Cars WHERE car_id = 1;

-- Insert a new rentalrental_statusavailability_statuspickup_location
INSERT INTO Rentals (user_id, car_id, start_date, end_date, rental_status, total_amount, initial_payment, final_payment, pickup_location, dropoff_location)
VALUES (1, 1, '2024-09-30', '2024-10-05', 'Pending', 250.00, 125.00, 125.00, 1, 2);

-- Insert a rental record
INSERT INTO Rentals 
(user_id, car_id, start_date, end_date, rental_status, total_amount, initial_payment, final_payment, pickup_location, dropoff_location)
VALUES 
(1, 1, '2024-09-30', '2024-10-05', 'Pending', 250.00, 125.00, 125.00, 1, 2);

-- Check the Cars table to see if the car availability status has changed
SELECT car_id, availability_status FROM Cars WHERE car_id = 1;

-- Update the rental status to 'Completed' to see if the car becomes available again
UPDATE Rentals 
SET rental_status = 'Completed' 
WHERE rental_id = 1;

-- Check the Cars table again to see if the car is available
SELECT car_id, availability_status FROM Cars WHERE car_id = 1;

-- Update the start and end dates of the rental
UPDATE Rentals 
SET start_date = '2024-10-01', end_date = '2024-10-06' 
WHERE rental_id = 1;

-- Check the Rentals table to verify the updated total amount
SELECT * FROM Rentals WHERE rental_id = 1;

-- Call the procedure to calculate total rental amount for the specific rental
CALL CalculateTotalRentalAmount(1); -- Assuming the rental_id is 1

-- Check the Rentals table to confirm the total amount has been calculated correctly
SELECT * FROM Rentals WHERE rental_id = 1;
SELECT * FROM Rentals;

SELECT * FROM Cars;

