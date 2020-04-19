-- Запит 1 - Вивести жанри та кількість серіалів, що до них належать.

SELECT
    genre_kind,
    COUNT(serial_name)quantity
FROM
    serialsgenres
GROUP BY
    genre_kind;
    
-- Запит 2 - Вивести кількість серілів, що є характерною для кожного рівня популярності. Низьку популярність мають серіали з рейтингом 0-4, cередню - 4-7, високу 7-10

 SELECT
    items,
    popularity
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'low' popularity
        FROM
            serialsratings
        GROUP BY
            rating_value
        HAVING
            rating_value BETWEEN 0 AND 4
    )
UNION
SELECT
    items,
    popularity
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'medium' popularity
        FROM
            serialsratings
        GROUP BY
            rating_value
        HAVING
            rating_value BETWEEN 4 AND 7
    )
UNION
SELECT
    items,
    popularity
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'high' popularity
        FROM
            serialsratings
        GROUP BY
            rating_value
        HAVING
            rating_value BETWEEN 7 AND 10
    );

    
-- Запит 3 - Вивести жанри та максимальні рейтинги, які вони отримували.

SELECT
    genre_kind,
    MAX(rating_value) best_result
FROM
    (
        SELECT
            serialsratings.rating_value,
            serialsgenres.genre_kind
        FROM
            serialsratings
            INNER JOIN serialsgenres ON serialsgenres.serial_name = serialsratings.serial_name
    )
GROUP BY
    genre_kind;

