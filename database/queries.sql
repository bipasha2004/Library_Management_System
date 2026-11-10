-- # Query 1 :- Books by a given author
SELECT a.author_name, b.title
FROM authors a 
JOIN book_authors ba ON a.author_id = ba.author_id
JOIN books b ON ba.book_id = b.book_id
WHERE a.author_name = 'J.K. Rowling';

--# Query 2 :- Members with overdue books
SELECT
    m.member_name,
    b.title,
    br.due_date
FROM borrowing br
JOIN members m ON br.member_id = m.member_id
JOIN books b ON br.book_id = b.book_id
WHERE br.return_date IS NULL
AND br.due_date < CURRENT_DATE;

--# Query 3 :- TOP 3 most-borrowed books
SELECT
    b.title,
    COUNT(br.borrowing_id) AS total_borrowed
FROM books b 
JOIN borrowing br ON b.book_id = br.book_id
GROUP BY b.book_id, b.title
ORDER BY total_borrowed DESC
LIMIT 3;

--# Query 4 :- Members who have never borrowed anything
SELECT
    m.member_name,
    m.email
FROM members m 
LEFT JOIN borrowing Br
ON m.member_id = br.member_id
WHERE br.borrowing_id IS NULL;

--# Transaction: Book Borrow
BEGIN;

INSERT INTO borrowing
(member_id, book_id, borrow_date, due_date)
VALUES
(1, 1, CURRENT_DATE, CURRENT_DATE + INTERVAL '14 days');

UPDATE books
SET available_copies = available_copies - 1
WHERE book_id = 1 
AND available_copies > 0;

COMMIT;