import csv
from re import split as re_split
import cx_Oracle

username = 'yulia'
password = '180801'
databaseName = 'localhost/xe'

connection = cx_Oracle.connect(username, password, databaseName)
cursor = connection.cursor()

cursor.execute("DELETE FROM serialsgenres")
cursor.execute("DELETE FROM serialsratings")
cursor.execute("DELETE FROM serials")
cursor.execute("DELETE FROM genres")
cursor.execute("DELETE FROM ratings")

connection.commit()

filename='serialsinfo.csv'

file = open(filename, errors='ignore')
rows = csv.reader(file, delimiter=',')

genre = []
rating = []

for data in rows:
    serial_name = data[12].strip()
    genre_kind = data[5].strip()
    rating_value = data[17].strip()

    genre_kind = re_split(r',', data[5])

    cursor.execute('INSERT INTO serials(serial_name) VALUES (:serial_name)', serial_name=serial_name)
    connection.commit()

    for genr in genre_kind:
        if genr not in genre:
            genre.append(genr)
            cursor.execute('INSERT INTO genres(genre_kind) VALUES (:genre_kind)', genre_kind=genr)
            connection.commit()

    cursor.execute('INSERT INTO serialsgenres(serial_name,genre_kind) VALUES (:serial_name, :genre_kind)', serial_name=serial_name, genre_kind=genr)
    connection.commit()

    for rate in rating_value:
        if rate not in rating:
            rating.append(rate)
            cursor.execute('INSERT INTO ratings(rating_value) VALUES (:rating_value)', rating_value=rate)

    cursor.execute('INSERT INTO serialsratings(serial_name,rating_value) VALUES (:serial_name, :rating_value)',
                   serial_name=serial_name, rating_value=rate)
    connection.commit()

cursor.close()
connection.close()
file.close()



