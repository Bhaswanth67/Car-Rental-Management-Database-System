-- Trigger to update car availability status when a rental is created

USE vehicle_rental_system;

DELIMITER //
CREATE TRIGGER UpdateCarAvailabilityAfterRental
AFTER INSERT ON Rentals
FOR EACH ROW
BEGIN
    -- Set the availability status of the car to false (not available) after rental is created
    UPDATE Cars
    SET availability_status = FALSE
    WHERE car_id = NEW.car_id;
END //
DELIMITER ;
