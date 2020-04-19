--Populate Serials
INSERT INTO serials ( serial_name ) VALUES ( 'Mr. Robot' );

INSERT INTO serials ( serial_name ) VALUES ( 'Peaky Blinders' );

INSERT INTO serials ( serial_name ) VALUES ( 'Dark' );

INSERT INTO serials ( serial_name ) VALUES ( 'Breaking Bad' );

INSERT INTO serials ( serial_name ) VALUES ( 'Game of Thrones' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Walking Dead' );

INSERT INTO serials ( serial_name ) VALUES ( 'True Detective' );

INSERT INTO serials ( serial_name ) VALUES ( 'See' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Simpsons' );

INSERT INTO serials ( serial_name ) VALUES ( 'Better Call Saul' );

INSERT INTO serials ( serial_name ) VALUES ( 'Westworld' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Good Doctor' );

INSERT INTO serials ( serial_name ) VALUES ( 'Vikings' );

INSERT INTO serials ( serial_name ) VALUES ( 'You' );

INSERT INTO serials ( serial_name ) VALUES ( 'His Dark Materials' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Purge' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Witcher' );

INSERT INTO serials ( serial_name ) VALUES ( 'Big Little Lies' );

INSERT INTO serials ( serial_name ) VALUES ( 'The Wire' );

INSERT INTO serials ( serial_name ) VALUES ( 'Six Feet Under' );

INSERT INTO serials ( serial_name ) VALUES ( 'Big Love' );

--Populate Ratings

INSERT INTO ratings ( rating_value ) VALUES ( 8.5 );

INSERT INTO ratings ( rating_value ) VALUES ( 8.8 );

INSERT INTO ratings ( rating_value ) VALUES ( 5.7 );

INSERT INTO ratings ( rating_value ) VALUES ( 7.5 );

INSERT INTO ratings ( rating_value ) VALUES ( 9.5 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.2 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.0 );

INSERT INTO ratings ( rating_value ) VALUES ( 3.6 );

INSERT INTO ratings ( rating_value ) VALUES ( 7.7 );

INSERT INTO ratings ( rating_value ) VALUES ( 5.7 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.7 );

INSERT INTO ratings ( rating_value ) VALUES ( 5.2 );

INSERT INTO ratings ( rating_value ) VALUES ( 8.6 );

INSERT INTO ratings ( rating_value ) VALUES ( 7.8 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.0 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.4 );

INSERT INTO ratings ( rating_value ) VALUES ( 9.3 );

INSERT INTO ratings ( rating_value ) VALUES ( 8.5 );

INSERT INTO ratings ( rating_value ) VALUES ( 6.3 );

INSERT INTO ratings ( rating_value ) VALUES ( 7.7 );

INSERT INTO ratings ( rating_value ) VALUES ( 3.5 );

--Populate SERIALSRATINGS

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Mr. Robot',
    8.5
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Peaky Blinders',
    8.8
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Dark',
    5.7
);

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
    'Game of Thrones',
    9.5
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

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'See',
    3.6
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Simpsons',
    7.7
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Better Call Saul',
    5.7
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Westworld',
    6.7
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Good Doctor',
    5.2
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Vikings',
    8.6
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'You',
    7.8
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'His Dark Materials',
    6.0
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Purge',
    6.4
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Witcher',
    9.3
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Big Little Lies',
    8.5
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'The Wire',
    6.3
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Six Feet Under',
    7.7
);

INSERT INTO serialsratings (
    serial_name,
    rating_value
) VALUES (
    'Big Love',
    3.5
);

-- POPULATE GENRES

INSERT INTO genres ( genre_kind ) VALUES ( 'Crime' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Drama' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Thriller' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Mystery' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Sci-Fi' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Action' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Adventure' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Fantasy' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Romance' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Horror' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Animation' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Comedy' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Western' );

INSERT INTO genres ( genre_kind ) VALUES ( 'History' );

INSERT INTO genres ( genre_kind ) VALUES ( 'War' );

INSERT INTO genres ( genre_kind ) VALUES ( 'Family' );

-- POPULATE SERIALSGENRES

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Mr. Robot',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Mr. Robot',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Mr. Robot',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Peaky Blinders',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Peaky Blinders',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Dark',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Dark',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Dark',
    'Mystery'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Dark',
    'Sci-Fi'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Dark',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Breaking Bad',
    'Crime'
);

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
    'Breaking Bad',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Game of Thrones',
    'Action'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Game of Thrones',
    'Adventure'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Game of Thrones',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Game of Thrones',
    'Fantasy'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Game of Thrones',
    'Romance'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Walking Dead',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Walking Dead',
    'Horror'
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

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'True Detective',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'True Detective',
    'Mystery'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'True Detective',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'See',
    'Action'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'See',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'See',
    'Sci-Fi'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Simpsons',
    'Animation'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Simpsons',
    'Comedy'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Better Call Saul',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Better Call Saul',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Westworld',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Westworld',
    'Mystery'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Westworld',
    'Sci-Fi'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Westworld',
    'Western'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Good Doctor',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'Action'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'Adventure'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'History'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'Romance'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Vikings',
    'War'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'You',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'You',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'You',
    'Romance'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'You',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'His Dark Materials',
    'Adventure'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'His Dark Materials',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'His Dark Materials',
    'Family'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'His Dark Materials',
    'Fantasy'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Purge',
    'Action'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Purge',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Purge',
    'Horror'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Purge',
    'Sci-Fi'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Purge',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Action'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Adventure'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Fantasy'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Horror'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Witcher',
    'Mystery'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Big Little Lies',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Big Little Lies',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Big Little Lies',
    'Mystery'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Wire',
    'Crime'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Wire',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'The Wire',
    'Thriller'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Six Feet Under',
    'Comedy'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Six Feet Under',
    'Drama'
);

INSERT INTO serialsgenres (
    serial_name,
    genre_kind
) VALUES (
    'Big Love',
    'Drama'
);