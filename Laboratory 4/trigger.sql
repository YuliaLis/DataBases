CREATE OR REPLACE TRIGGER addnewserial AFTER
    INSERT ON serials
    FOR EACH ROW
DECLARE
    new_serial serials.serial_name%TYPE;
BEGIN
    new_serial := :new.serial_name;
    INSERT INTO serialsratings (
        serial_name,
        rating_value
    ) VALUES (
        new_serial,
        '0,0'
    );

END;
