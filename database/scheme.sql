--AUTHORS TABLE--
CREATE TABLE authors(
    author_id SERIAL PRIMARY KEY,
    author_name VARCHAR(100) NOT NULL,
    country VARCHAR(100),
    birth_year INT
);


--BOOKS TABLE--
CREATE TABLE books (
    book_id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    isbn VARCHAR(20) UNIQUE,
    published_year INT,
    available_copies INT NOT NULL DEFAULT 1
);


--MEMBERS TABLE--
CREATE TABLE members (
    member_id SERIAL PRIMARY KEY,
    member_name VARCHAR(100) NOT NULL,
    email VARCHAR (100) UNIQUE,
    Phone VARCHAR (20),
    join_date DATE DEFAULT CURRENT_DATE
);


--BOOK_AUTHORS TABLE--
-- This table creates the many-to-many relationship
CREATE TABLE book_authors(
    book_id INT REFERENCES books(book_id) ON DELETE CASCADE,
    author_id INT REFERENCES authors(author_id) ON DELETE CASCADE,

    PRIMARY KEY (book_id, author_id)
);


--BORROWINGS TABLE--
CREATE TABLE borrowings (
    borrowing_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES members(member_id),
    book_id INT REFERENCES books(book_id),
    borrow_date DATE NOT NULL DEFAULT CURRENT_DATE,
    due_date DATE NOT NULL,
    return_date DATE
);
