CREATE OR REPLACE PACKAGE genre_package IS
    TYPE genre_row_type IS RECORD (
        genre_type    genres.genre_kind%TYPE,
        best_rating   ratings.rating_value%TYPE
    );
    TYPE gen_table_type IS
        TABLE OF genre_row_type;
    PROCEDURE addfavouriteserial (
        serial_name_param   serials.serial_name%TYPE,
        user_name_param     users.user_name%TYPE
    );

    FUNCTION best_genre_result (
        genre_param    genres.genre_kind%TYPE,
        rating_param   ratings.rating_value%TYPE
    ) RETURN gen_table_type
        PIPELINED;

END genre_package;

CREATE OR REPLACE PACKAGE BODY genre_package IS

    PROCEDURE addfavouriteserial (
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

    FUNCTION best_genre_result (
        genre_param    genres.genre_kind%TYPE,
        rating_param   ratings.rating_value%TYPE
    ) RETURN gen_table_type
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

END genre_package;
