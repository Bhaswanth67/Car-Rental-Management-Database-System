CalculateTotalRentalAmount-- Trigger to reset car availability when rental is completed or cancelled

USE vehicle_rental_system;

DELIMITER //
CREATE TRIGGER ResetCarAvailabilityAfterRentalUpdate
AFTER UPDATE ON Rentals
FOR EACH ROW
BEGIN
    -- Check if the rental status is completed or cancelled
    IF NEW.rental_status = 'Completed' OR NEW.rental_status = 'Cancelled' THEN
        -- Set the availability status of the car back to true (available)
        UPDATE Cars
        SET availability_status = TRUE
        WHERE car_id = NEW.car_id;
    END IF;
END //
DELIMITER ;
