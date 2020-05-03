DECLARE
    genre_type    serialsgenres.genre_kind%TYPE;
    serial_info   serialsgenres.serial_name%TYPE;
BEGIN
    genre_type := 'Genre';
    serial_info := 'Serial';
    FOR i IN 1..10 LOOP INSERT INTO serialsgenres (
        genre_kind,
        serial_name
    ) VALUES (
        TRIM(genre_type)
        || i,
        TRIM(serial_info)
        || i
    );

    END LOOP;

END;
