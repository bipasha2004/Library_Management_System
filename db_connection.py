import psycopg2


def get_connection():
    connection = psycopg2.connect(
        host="localhost",
        database="library_management_db",
        user="postgres",
        password="Bipasha@2004",
        port="5432"
    )

    return connection