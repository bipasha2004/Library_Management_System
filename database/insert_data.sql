--Authors--
INSERT INTO authors
(author_name, country, birth_year)
VALUES
('William Shakespeare', 'England', 1564),
('J.K. Rowling', 'United Kingdom', 1965),
('George Orwell', 'United Kingdom', 1903),
('Jane Austen', 'England', 1775),
('Mark Twain', 'United States', 1835),
('Charles Dickens', 'England', 1812),
('Leo Tolstoy', 'Russia', 1828),
('Ernest Hemingway', 'United States', 1899),
('Agatha Christie', 'United Kingdom', 1890),
('Paulo Coelho', 'Brazil', 1947);


--Books--
INSERT INTO books 
(title, isbn, published_year, available_copies)
VALUES
('Harry Potter and the Philosopher''s Stone', '9780747532699', 1997, 5),
('1984', '9780451524935', 1949, 4),
('Pride and Prejudice', '9780141439518', 1813, 3),
('Hamlet', '9780743477123', 1603, 2),
('Adventures of Tom sawyer', '9780486400778', 1876, 4),
('A Tale of two cities', '9780141439600', 1859, 3),
('War and Peace', '9780199232765', 1869, 2),
('The Old Man and the sea', '9780684801223', 1952, 5),
('Murder on the Orient Express', '9780062693662', 1934, 4),
('The Alchemist', '9780061122415', 1988, 6);


-- Members--
INSERT INTO members
(member_name, email, phone)
VALUES
('Rahul Das', 'rahul@gmail.com', '9876543210'),
('Priya Roy', 'priya@gmail.com', '9876543211'),
('Amit Kumar', 'amit@gmail.com', '9876543212'),
('Sneha Paul', 'sneha@gmail.com', '9876543213'),
('Arjun Sen', 'arjun@gmail.com', '9876543214'),
('Ananya Das', 'ananya@gmail.com', '9876543215'),
('Riya Sharma', 'riya@gmail.com', '9876543216'),
('Sourav Roy', 'sourav@gmail.com', '9876543217'),
('Neha Gupta', 'neha@gmail.com', '9876543218'),
('Vikram Singh', 'vikram@gmail.com', '9876543219');


--Book_Author--
INSERT INTO  book_authors (book_id, author_id)
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 1),
(5, 5),
(6, 6),
(7, 7),
(8, 8),
(9, 9),
(10, 10);


--Borrowing Information--
INSERT INTO borrowing
(member_id, book_id, borrow_date, due_date, return_date)
VALUES
(1, 1, '2026-10-01', '2026-10-15', '2026-10-10'),
(2, 2, '2026-10-05', '2026-10-20', NULL),
(3, 3, '2026-09-01', '2026-09-15', NULL),
(4, 4, '2026-10-10', '2026-10-25', '2026-10-20'),
(5, 5, '2026-10-15', '2026-10-30', NULL),
(6, 6, '2026-10-20', '2026-11-05', NULL),
(7, 7, '2026-10-25', '2026-11-10', NULL),
(8, 8, '2026-10-01', '2026-10-15', '2026-10-12'),
(9, 9, '2026-10-28', '2026-11-12', NULL),
(10, 10, '2026-11-01', '2026-11-15', NULL),