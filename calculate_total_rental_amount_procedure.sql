-- Procedure to calculate total rental amount for a given rental

USE vehicle_rental_system;

DELIMITER //
CREATE PROCEDURE CalculateTotalRentalAmount(IN rentalID INT)
BEGIN
    DECLARE carPrice DECIMAL(10, 2);
    DECLARE daysRented INT;
    DECLARE totalAmount DECIMAL(10, 2);

    -- Fetch the car price per day from the Cars table
    SELECT price_per_day INTO carPrice
    FROM Cars
    WHERE car_id = (SELECT car_id FROM Rentals WHERE rental_id = rentalID);

    -- Calculate the number of days rented
    SELECT DATEDIFF(end_date, start_date) INTO daysRented
    FROM Rentals
    WHERE rental_id = rentalID;

    -- Check if valid daysRented and carPrice have been fetched
    IF daysRented IS NOT NULL AND carPrice IS NOT NULL THEN
        -- Calculate the total rental amount
        SET totalAmount = carPrice * daysRented;

        -- Update the total_amount field in the Rentals table
        UPDATE Rentals
        SET total_amount = totalAmount
        WHERE rental_id = rentalID;
    ELSE
        -- Handle error if values are not found
        SIGNAL SQLSTATE '45000' SET MESSAGE_TEXT = 'Invalid rental ID or car details.';
    END IF;
END //
DELIMITER ;

