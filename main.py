import cx_Oracle

username = 'yulia'
password = '180801'
databaseName = 'localhost/xe'

connection = cx_Oracle.connect(username, password, databaseName)
cursor = connection.cursor()

print("Вивести назву жанру та кількість серіалів, що до нього належить")

query_1= """
SELECT
    genre_kind,
    COUNT(serial_name)quantity
FROM
    serialsgenres
GROUP BY
    genre_kind
"""

cursor.execute(query_1)

for row in cursor.fetchall():
    print("GENRE = ",row[0],"QUANTITY = ",row[1])

print("Вивести кількість серілів, що є характерною для кожного рівня популярності. "
      "Низьку популярність мають серіали з рейтингом 0-4, cередню - 4-7, високу 7-10")

query_2="""
SELECT
    items,
    POPULARITY
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'low' POPULARITY
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
    POPULARITY
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'medium' POPULARITY
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
    POPULARITY
FROM
    (
        SELECT
            SUM(rating_value),
            SUM(COUNT(serial_name)) items,
            'high' POPULARITY
        FROM
            serialsratings
        GROUP BY
            rating_value
        HAVING
            rating_value BETWEEN 7 AND 10
    )

"""

cursor.execute(query_2)

for row in cursor.fetchall():
    print("ITEMS = ",row[0],"POPULARITY = ",row[1])

print("Вивести жанри та максимальні рейтинги, які вони отримували")

query_3="""
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
    genre_kind
"""
cursor.execute(query_3)

for row in cursor.fetchall():
    print("GENRES = ",row[0],"BEST_RESULT = ",row[1])

cursor.close()
connection.close()
