SET SERVEROUT ON;

BEGIN
    dbms_output.enable;
END;

CREATE OR REPLACE PROCEDURE addfavouriteserial (
    serial_name_param   serials.serial_name%TYPE,
    user_name_param     users.user_name%TYPE
) AS
    serial_name_var   serials.serial_name%TYPE;
    user_name_var     users.user_name%TYPE;
BEGIN
    SELECT
        serials.serial_name
    INTO serial_name_var
    FROM
        serials
    WHERE
        serials.serial_name = serial_name_param;

    SELECT
        users.user_name
    INTO user_name_var
    FROM
        users
    WHERE
        users.user_name = user_name_param;

    INSERT INTO usersserials VALUES (
        serial_name_param,
        user_name_param
    );

EXCEPTION
    WHEN no_data_found THEN
        dbms_output.put_line('Oops, user or serial was not found.');
    WHEN OTHERS THEN
        dbms_output.put_line('Something went wrong');
END;
