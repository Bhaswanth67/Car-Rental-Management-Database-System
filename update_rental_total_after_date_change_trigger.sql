-- Trigger to auto-update rental total when rental start or end date is changed

USE vehicle_rental_system;

DELIMITER //
CREATE TRIGGER UpdateRentalTotalAfterDateChange
AFTER UPDATE ON Rentals
FOR EACH ROW
BEGIN
    -- Check if the start or end date has changed
    IF OLD.start_date <> NEW.start_date OR OLD.end_date <> NEW.end_date THEN
        -- Recalculate the total rental amount by calling the procedure
        CALL CalculateTotalRentalAmount(NEW.rental_id);
    END IF;
END //
DELIMITER ;
