INSERT INTO serials ( serial_name ) VALUES ( 'Breaking Bad' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Walking Dead' );

INSERT INTO serials ( serial_name ) VALUES ( 'True Detective' );

INSERT INTO ratings ( rating_value ) VALUES ( 7.5 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.2 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.0 );

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Breaking Bad',
    7.5
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Walking Dead',
    6.2
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'True Detective',
    6.0
);

INSERT INTO genres ( genre_kind ) VALUES ( 'Crime' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Drama' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Thriller' );

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Breaking Bad',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Walking Dead',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'True Detective',
    'Crime'
);

INSERT INTO users ( user_name ) VALUES ( 'Bob' );

INSERT INTO users ( user_name ) VALUES ( 'Yulia' );

INSERT INTO users ( user_name ) VALUES ( 'Tom' );

INSERT INTO usersserials (
    user_name,
    serial_name
) VALUES (
    'Bob',
    'Breaking Bad'
);

INSERT INTO usersserials (
    user_name,
    serial_name
) VALUES (
    'Yulia',
    'The Walking Dead'
);

INSERT INTO usersserials (
    user_name,
    serial_name
) VALUES (
    'Tom',
    'True Detective'
);
