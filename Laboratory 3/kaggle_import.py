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

genres = []

next(rows)
for data in rows:
    serial_name = data[12].strip()
    genre_kind = data[5].strip()

    genre_kind = re_split(r',', data[5])

    cursor.execute('INSERT INTO serials(serial_name) VALUES (:serial_name)', serial_name=serial_name)
    connection.commit()

    for genre in genre_kind:
        if genre not in genres:
            genres.append(genre)
            cursor.execute('INSERT INTO genres(genre_kind) VALUES (:genre_kind)', genre_kind=genre)
            connection.commit()

    for genre in genre_kind:
        cursor.execute('INSERT INTO serialsgenres(serial_name,genre_kind) VALUES (:serial_name, :genre_kind)', serial_name=serial_name, genre_kind=genre)
        connection.commit()
 
cursor.close()
connection.close()
file.close()
