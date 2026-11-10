from db_connection import get_connection


def search_books_by_author(author_name):
    connection = get_connection()
    cursor = connection.cursor()

    query = """
    SELECT a.author_name, b.title
    FROM authors a
    JOIN book_authors ba
        ON a.author_id = ba.author_id
    JOIN books b
        ON ba.book_id = b.book_id
    WHERE a.author_name = %s;
    """

    cursor.execute(query, (author_name,))

    results = cursor.fetchall()

    if results:
        print("\nBooks found:")
        print("-" * 30)

        for row in results:
            print("Author:", row[0])
            print("Book:", row[1])
            print("-" * 30)

    else:
        print("No books found for this author.")

    cursor.close()
    connection.close()


author_name = input("Enter author name: ")

search_books_by_author(author_name)