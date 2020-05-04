import csv
import cx_Oracle

username = 'yulia'
password = '180801'
databaseName = 'localhost/xe'

connection = cx_Oracle.connect(username, password, databaseName)
cursor = connection.cursor()

serials_tables = ['serialsgenres','serialsratings','serials','genres','ratings']

for table in serials_tables:
    with open (table + '.csv', 'w', newline="") as file:
        cursor.execute("SELECT * FROM " +table)
        database = cursor.fetchall()

        csv_writer=csv.writer(file, delimiter=',')

        for row in database:
            csv_writer.writerow(row)

cursor.close()
connection.close()

