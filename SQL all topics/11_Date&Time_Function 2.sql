-- CREATE TABLE products(

-- 	product_id SERIAL PRIMARY KEY,
-- 	product_name VARCHAR(100),
-- 	category VARCHAR(50),
-- 	price NUMERIC(10,2),
-- 	quantity INT,
-- 	added_date DATE,
-- 	discount_rate NUMERIC(5,2)
-- );


-- INSERT INTO products(product_id,product_name,category,price,quantity,added_date,discount_rate)
-- 	VALUES 
-- 	(106, 'Realme Narzo N53', 'Electronics', 8999.00, 60, '2025-06-16', 8.0),
-- 	(107, 'boAt Airdopes 141', 'Accessories', 1299.00, 120, '2025-06-17', 10.0),
-- 	(108, 'Havells Room Heater', 'Home Appliances', 2499.00, 40, '2025-06-11', 6.5),
-- 	(109, 'Lenovo IdeaPad Slim 3', 'Computers', 42990.00, 15, '2025-06-13', 9.0),
-- 	(110, 'Nike Running Shoes', 'Footwear', 4599.00, 80, '2025-06-19', 11.0);


SELECT * FROM products;

--1. GET CURRENT DATE AND TIME 
SELECT NOW()AS Current_date_time;

-- 2. CURRENT_DATE() -GET CURRENT DATE
SELECT CURRENT_DATE AS today_date;

SELECT added_date ,current_date, (CURRENT_DATE - added_date) AS  DIFFERNCE_DAys FROM products;

-- 3. EXTRACT() - Extract parts of a Date 
-- Extract the year, month, and day from the added_date column.
SELECT product_name,
	EXTRACT(YEAR FROM added_date) AS year_added,
	EXTRACT(month FROM added_date) AS month_added,
	EXTRACT(DAY FROM added_date) AS day_added
FROM products;

-- 4. AGE() Calculate age b/w two dates.
-- Calculate the time difference between added_date and today's date.
SELECT product_name,
	AGE(CURRENT_DATE , added_date)  AS age_since_added
FROM products;

-- 5. TO_CHAR() -Formate dates as Strings
-- Formate Added_date in a custom formate (DD-MM-YY),
SELECT product_name,
	TO_CHAR(added_date,'(DD-MONTH-YYYY)')  AS age_since_added
FROM products;

-- 6. DATE_PART()- Get specific Date part
-- Extract the day of the week from added_=date

SELECT  product_name , added_date,
		DATE_PART('month',ADDED_DATE) AS Day_of_week
		FROM products;

-- 7. DATE_TRUNC() --Truncate DAte To precision
-- Truncate added_date to the start of the month
	SELECT PRODUCT_NAME, ADDED_DATE,
		DATE_TRUNC('MONTH',ADDED_DATE) AS MONTH_START
		FROM PRODUCTS;

-- 8. INTERVAL() ---Add or Subtract time interval
-- add 6 months to the added_date
SELECT  product_name, added_date,
		added_date + INTERVAL '6 days' AS new_date
		FROM products;

-- 9. CURRENT_TIME()---Getcurrent Time
-- retrieve only the current time
SELECT  CURRENT_TIME AS Curr_times;


-- 10. TO_DATE  --CONVERT STRING TO DATE
-- convert a string to a date formate
SELECT TO_DATE('23-11-2029','DD-MM-YYYY') AS Convert_dATE;













