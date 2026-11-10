--# Create an index an author name
CREATE INDEX idx_authors_name
ON authors(author_name);

--# Check query performance
EXPLAIN ANALYZE
SELECT *
FROM authors 
WHERE author_name = 'j.k. Rowling';

--# create index on borrowing member id
CREATE INDEX idx_borrowings_member_id
ON borrowing(member_id);

--# chcek query performance
EXPLAIN ANALYZE
SELECT *
FROM borrowings
WHERE member_id = 1;
