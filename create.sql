-- CREATE TABLE genres
-- Define Primary Keys


CREATE TABLE genres (
    genre_kind VARCHAR2(30) NOT NULL
);

ALTER TABLE genres ADD CONSTRAINT genres_pk PRIMARY KEY ( genre_kind );


-- CREATE TABLE ratings
-- Define Primary Keys


CREATE TABLE ratings (
    rating_value DECIMAL(3,1) NOT NULL
);

ALTER TABLE ratings ADD CONSTRAINT ratings_pk PRIMARY KEY ( rating_value );


-- CREATE TABLE serials
-- Define Primary Keys


CREATE TABLE serials (
    serial_name VARCHAR2(50) NOT NULL
);

ALTER TABLE serials ADD CONSTRAINT serials_pk PRIMARY KEY ( serial_name );


-- CREATE TABLE serialsgenres
-- Define Primary Keys


CREATE TABLE serialsgenres (
    genre_kind    VARCHAR2(30) NOT NULL,
    serial_name   VARCHAR2(50) NOT NULL
);

ALTER TABLE serialsgenres ADD CONSTRAINT serialsgenres_pk PRIMARY KEY ( genre_kind,
                                                                        serial_name );



-- CREATE TABLE serialsratings
-- Define Primary Keys


CREATE TABLE serialsratings (
    serial_name    VARCHAR2(50) NOT NULL,
    rating_value   DECIMAL(3,1) NOT NULL
);

ALTER TABLE serialsratings ADD CONSTRAINT serialsratings_pk PRIMARY KEY ( rating_value,
                                                                          serial_name );
 
 -- Define Foreign Keys
                                                                          
                                                                         
ALTER TABLE serialsgenres
    ADD CONSTRAINT serialsgenres_genres_fk FOREIGN KEY ( genre_kind )
        REFERENCES genres ( genre_kind );

ALTER TABLE serialsgenres
    ADD CONSTRAINT serialsgenres_serials_fk FOREIGN KEY ( serial_name )
        REFERENCES serials ( serial_name );

ALTER TABLE serialsratings
    ADD CONSTRAINT serialsratings_ratings_fk FOREIGN KEY ( rating_value )
        REFERENCES ratings ( rating_value );

ALTER TABLE serialsratings
    ADD CONSTRAINT serialsratings_serials_fk FOREIGN KEY ( serial_name )
        REFERENCES serials ( serial_name );
