import chart_studio
chart_studio.tools.set_credentials_file(username='yulialis', api_key='zsbA86Qf50QsLkaA5uV1')
import plotly.graph_objects as go
import chart_studio.plotly as py
import cx_Oracle
import re
import chart_studio.dashboard_objs as dash


def fileId_from_url(url):
    """Return fileId from a url."""
    raw_fileId = re.findall("~[A-z.]+/[0-9]+", url)[0][1:]
    return raw_fileId.replace('/', ':')


username = 'yulia'
password = '180801'
databaseName = 'localhost/xe'

connection = cx_Oracle.connect(username, password, databaseName)
cursor = connection.cursor()

""""Query 1"""

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

genres = []
quantity = []

for data in cursor.fetchall():
    genres.append(data[0])
    quantity.append(data[1])

bar = go.Bar(x=genres, y=quantity)
genres_quantity = py.plot([bar], auto_open=True, filename='oracle-bar')

"""Query 2"""

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

POPULARITY = []
items = []

for row in cursor.fetchall():
    POPULARITY.append(row[1])
    items.append(row[0])


pie = go.Pie(labels=POPULARITY, values=items)
items_POPULARITY = py.plot([pie], auto_open=True)

"""Query 3"""
query_3="""
SELECT
    genre_kind,
    MAX(rating_value) best_result
FROM
     ratingsgenres
GROUP BY
    genre_kind
"""
cursor.execute(query_3)

genre_kind = []
best_result = []

for data in cursor.fetchall():
    genre_kind.append(data[0])
    best_result.append(data[1])

scatter = go.Scatter(
    x=genre_kind,
    y=best_result
)

genres_best_result=py.plot([scatter], auto_open=True)

"""Create Dashboard"""

my_dboard = dash.Dashboard()

genres_quantity_id = fileId_from_url(genres_quantity)
items_POPULARITY_id = fileId_from_url(items_POPULARITY)
genres_best_result_id = fileId_from_url(genres_best_result)


box_1 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': genres_quantity_id,
    'title': 'Genres and Quantity'
}

box_2 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': items_POPULARITY_id,
    'title': 'Items and Popularity'
}

box_3 = {
    'type': 'box',
    'boxType': 'plot',
    'fileId': genres_best_result_id,
    'title': 'Genres and Best_result'
}

my_dboard.insert(box_1)
my_dboard.insert(box_2, 'below', 1)
my_dboard.insert(box_3, 'left', 2)

py.dashboard_ops.upload(my_dboard, 'SerialsInfo')

cursor.close()
connection.close()

