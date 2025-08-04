CREATE TABLE books(
	book_id SERIAL PRIMARY KEY,
	title VARCHAR(100),
	author VARCHAR(100),
	year_published INT,
	isAvailable BOOLEAN,
	price INT,
	publication VARCHAR(100)
);

INSERT INTO books (title, author, year_published, isAvailable, price, publication) VALUES
('The Great Gatsby', 'F. Scott Fitzgerald', 1925, TRUE, 499.99, 'Scribner'),
('1984', 'George Orwell', 1949, TRUE, 599.50, 'Secker & Warburg'),
('To Kill a Mockingbird', 'Harper Lee', 1960, FALSE, 450.00, 'J.B. Lippincott & Co.'),
('Pride and Prejudice', 'Jane Austen', 1813, TRUE, 300.00, 'T. Egerton'),
('The Catcher in the Rye', 'J.D. Salinger', 1951, FALSE, 380.00, 'Little, Brown and Company'),
('The Road', 'Cormac McCarthy', 2006, TRUE, 620.00, 'XYZ'),
('The Kite Runner', 'Khaled Hosseini', 2003, TRUE, 530.00, 'Riverhead Books'),
('A Thousand Splendid Suns', 'Khaled Hosseini', 2007, TRUE, 540.00, 'XYZ'),
('The Fault in Our Stars', 'John Green', 2012, FALSE, 470.00, 'Dutton Books'),
('Becoming', 'Michelle Obama', 2018, TRUE, 850.00, 'Crown Publishing Group'),
('The Algorithmic Mind', 'John Data', 2021, TRUE, 750.00, 'XYZ'),
('Modern Python', 'Emily Codewell', 2020, TRUE, 680.00, 'XYZ'),
('The Alchemist', 'Paulo Coelho', 1988, TRUE, 450.00, 'HarperCollins'),
('Harry Potter and the Sorcerer''s Stone', 'J.K. Rowling', 1997, TRUE, 700.00, 'Bloomsbury'),
('The Lord of the Rings', 'J.R.R. Tolkien', 1954, FALSE, 999.00, 'George Allen & Unwin');

SELECT * FROM books;

SELECT * FROM books
WHERE year_published > 2000;


SELECT * FROM books
WHERE price < 599
ORDER BY price DESC;


SELECT * FROM books
ORDER BY price DESC
LIMIT 3;


SELECT * FROM books
ORDER BY year_published DESC
OFFSET 2
LIMIT 2;


SELECT * FROM books
WHERE publication= 'XYZ'
ORDER BY title ASC;