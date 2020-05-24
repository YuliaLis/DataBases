CREATE TABLE genres (
    genre_kind VARCHAR2(30) NOT NULL
);

ALTER TABLE genres ADD CONSTRAINT genres_pk PRIMARY KEY ( genre_kind );

CREATE TABLE ratings (
    rating_value NUMBER(3, 1) NOT NULL
);

ALTER TABLE ratings ADD CONSTRAINT ratings_pk PRIMARY KEY ( rating_value );

CREATE TABLE serials (
    serial_name VARCHAR2(50) NOT NULL
);

ALTER TABLE serials ADD CONSTRAINT serials_pk PRIMARY KEY ( serial_name );

CREATE TABLE serialsgenres (
    serial_name   VARCHAR2(50) NOT NULL,
    genre_kind    VARCHAR2(30) NOT NULL
);

ALTER TABLE serialsgenres ADD CONSTRAINT serialsgenres_pk PRIMARY KEY ( genre_kind,
                                                                        serial_name );

CREATE TABLE serialsratings (
    serial_name    VARCHAR2(50) NOT NULL,
    rating_value   NUMBER(3, 1) NOT NULL
);

ALTER TABLE serialsratings ADD CONSTRAINT serialsratings_pk PRIMARY KEY ( serial_name,
                                                                          rating_value );

CREATE TABLE users (
    user_name VARCHAR2(50) NOT NULL
);

ALTER TABLE users ADD CONSTRAINT users_pk PRIMARY KEY ( user_name );

CREATE TABLE usersserials (
    serial_name   VARCHAR2(50) NOT NULL,
    user_name     VARCHAR2(50) NOT NULL
);

ALTER TABLE usersserials ADD CONSTRAINT usersserials_pk PRIMARY KEY ( serial_name,
                                                                      user_name );

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

ALTER TABLE usersserials
    ADD CONSTRAINT usersserials_serials_fk FOREIGN KEY ( serial_name )
        REFERENCES serials ( serial_name );

ALTER TABLE usersserials
    ADD CONSTRAINT usersserials_users_fk FOREIGN KEY ( user_name )
        REFERENCES users ( user_name );


-- Oracle SQL Developer Data Modeler Summary Report: 
-- 
-- CREATE TABLE                             7
-- CREATE INDEX                             0
-- ALTER TABLE                             13
-- CREATE VIEW                              0
-- ALTER VIEW                               0
-- CREATE PACKAGE                           0
-- CREATE PACKAGE BODY                      0
-- CREATE PROCEDURE                         0
-- CREATE FUNCTION                          0
-- CREATE TRIGGER                           0
-- ALTER TRIGGER                            0
-- CREATE COLLECTION TYPE                   0
-- CREATE STRUCTURED TYPE                   0
-- CREATE STRUCTURED TYPE BODY              0
-- CREATE CLUSTER                           0
-- CREATE CONTEXT                           0
-- CREATE DATABASE                          0
-- CREATE DIMENSION                         0
-- CREATE DIRECTORY                         0
-- CREATE DISK GROUP                        0
-- CREATE ROLE                              0
-- CREATE ROLLBACK SEGMENT                  0
-- CREATE SEQUENCE                          0
-- CREATE MATERIALIZED VIEW                 0
-- CREATE MATERIALIZED VIEW LOG             0
-- CREATE SYNONYM                           0
-- CREATE TABLESPACE                        0
-- CREATE USER                              0
-- 
-- DROP TABLESPACE                          0
-- DROP DATABASE                            0
-- 
-- REDACTION POLICY                         0
-- 
-- ORDS DROP SCHEMA                         0
-- ORDS ENABLE SCHEMA                       0
-- ORDS ENABLE OBJECT                       0
-- 
-- ERRORS                                   0
-- WARNINGS                                 0
