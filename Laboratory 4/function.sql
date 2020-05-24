CREATE TYPE genre_row AS OBJECT (
    genre_type    VARCHAR(30),
    best_rating   DECIMAL(3, 1)
)
/

CREATE TYPE genre_table_type IS
    TABLE OF genre_row
/

CREATE OR REPLACE FUNCTION best_genre_result (
    genre_param    genres.genre_kind%TYPE,
    rating_param   ratings.rating_value%TYPE
) RETURN genre_table_type
    PIPELINED
IS
BEGIN
    FOR genre_row IN (
        SELECT
            genre_kind AS genre_type,
            MAX(rating_value) AS best_rating
        FROM
            ratingsgenres
        GROUP BY
            genre_kind
    ) LOOP
        PIPE ROW ( genre_row );
    END LOOP;
END;
