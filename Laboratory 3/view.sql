CREATE VIEW ratingsgenres AS
    SELECT
        serialsratings.rating_value,
        serialsgenres.genre_kind
    FROM
        serialsratings
        INNER JOIN serialsgenres ON serialsgenres.serial_name = serialsratings.serial_name;
