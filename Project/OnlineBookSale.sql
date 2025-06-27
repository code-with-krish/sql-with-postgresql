-- Create DataBase
CREATE DATABASE OnlineBookStore;

-- Switch to database
\c OnlineBookStore;

-- Create Table
DROP TABLE IF EXISTS Books;
CREATE TABLE Books(
	Book_Id SERIAL PRIMARY KEY,
	Title VARCHAR(100),
	Author VARCHAR(100),
	Genre VARCHAR(50),
	Published_Year INT,
	Price NUMERIC(10,2),
	Stock INT
);

DROP TABLE IF EXISTS Customers;
CREATE TABLE Customers(

	Customer_Id SERIAL PRIMARY KEY,
	Name VARCHAR(100),
	email VARCHAR(100),
	Phone VARCHAR(15),
	City VARCHAR(100),
	Country VARCHAR(100)
	
);

DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders(
	Order_id SERIAL PRIMARY KEY,
	Customer_id INT REFERENCES Customers(Customer_Id),
	Book_id INT REFERENCES Books(Book_Id),
	Order_Date DATE,
	Quantity INT,
	Total_Amount NUMERIC(10,2)

);


SELECT * FROM Books;

SELECT * FROM Customers;

SELECT * FROM Orders;


-- Import data into book table
COPY Books(Book_Id,Title,Auther,Genre,Published_Year, Price, Stock)
FROM 'F:\SQL\Project\Books.csv'
CSV HEADER;


-- Import data into customer table
COPY Customers(Customer_Id, Name, email,Phone, City , Country)
FROM 'F:\SQL\Project\Customers.csv'
CSV HEADER;

-- Import data into Orders table
COPY Orders(Order_id,Customer_id, Book_id ,Order_Date, Quantity,Total_Amount )
FROM 'F:\SQL\Project\Orders.csv'
CSV HEADER;


-- ------------------------------------BASIC------QUESTIONS---------------------------------------

-- 1.Retrive all Books in the 'Fiction' genre;

SELECT * FROM Books
WHERE genre = 'Fiction';

-- 2. Find Book Published After the year 1950;
SELECT * FROM Books
WHERE Published_year>'1950';

-- 3. List all the customers from the canada;
SELECT * FROM Customers
WHERE country = 'Canada';

-- 4. Show Orders place in November 2023;
SELECT * FroM Orders
WHERE order_date BETWEEN '2023-11-01' AND '2023-11-30' ;

-- 5. Retrieve the total stock of books available;

SELECT SUM(stock) AS Total_stock FROM Books;

-- 6. Find the details of the most expensive book

SELECT * FROM Books;


SELECT * FROM Books ORDER BY price  DESC LIMIT 1;

-- 7. Show all the customers who order more than 1 quantity of a book
SELECT * FROM ORDERS;

SELECT * FROM ORDERS WHERE quantity >1 ;

-- 8. Retrieve all the orders where the total amount exceeds $20
SELECT * FROM ORDERS WHERE total_amount >20 ;

-- 9. List all the genre available in the books table
SELECT  DISTINCT genre FROM Books;

-- 10. Find the book with the lowest stock;
SELECT * FROM Books ORDER BY stock LIMIT 5 ;

-- 11. calculate the total revenue generated from all orders;
SELECT SUM(total_amount) AS Total_revenue FROM ORDERS;



-----------------------------------ADVANCED QUESTIONS------------------------------------
-- 1/ Retrieve the total number of books sold for each genre ;
SELECT * FROM ORDERS;


SELECT b.genre , SUM(o.quantity)AS Total_books_sold
FROM Orders o 
JOIN Books b
ON o.book_id = b.book_id
GROUP BY b.genre;

-- 2/ Find the average price of books in the 'Fantasy' genre;

SELECT AVG(price) AS Average_price FROM BOOKS 
 
WHERE genre = 'Fantasy';

-- 3/ List customers who have placed at least 2 orders

SELECT * FROM CUSTOMERS;
SELECT * FROM ORDERS;


SELECT c.name , COUNT(o.order_id) AS Order_count
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.name
HAVING COUNT(o.order_id) >= 2;

-- 4/ Find the most frequently order book;
SELECT o.book_id , b.Title, count(o.order_id) AS Order_count
FROM Orders o 
JOIN Books b
ON o.book_id = b.book_id
GROUP BY o.Book_id, b.Title
ORDER BY Order_count DESC LIMIT 1;


-- 5/ Show the top  most expensive books of 'Fantasy' genre;
SELECT  * FROM Books
WHERE genre = 'Fantasy'
ORDER BY price DESC LIMIT 3;

-- 6/ Retrieve the total quantity of books sold each auther;
SELECT b.auther , SUM(o.quantity) AS Total_quantity
FROM orders o
JOIN books b
ON o.book_id = b.book_id
GROUP BY b.auther ;


-- 7/ List the cities where customers who  spent over $30 are located
SELECT  * FROM Customers
SELECT  * FROM oRDERS
SELECT  * FROM Books

SELECT DISTINCT c.city , total_amount
FROM Customers c
JOIN orders o
ON o.customer_id = c.customer_id
WHERE o.total_amount>30;

-- 8/ Find the customers who spend the most on order


SELECT c.name , c.customer_id , SUM(o.total_amount) AS TOTAL_SPEND
FROM orders o 
JOIN Customers c
ON o.customer_id = c.customer_id

GROUP BY c.name ,c.customer_id 
ORDER BY TOTAL_SPEND DESC;


-- 8/ CALCULATE THE STOCK REMAINING AFTER FULFILLING ALL ORDER:

SELECT b.bool_id, b.title, b.stock, o.quantity
FROM books b 
JOIN orders o














































































