
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

-- GET ALL THE CATEGORIES IN UPPER CASE
SELECT UPPER(category) AS Upper_Category
FROM products;

-- - GET ALL THE CATEGORIES IN LOWER CASE
SELECT LOWER(category) AS Lower_Category
FROM products;

-- JOIN PRODUCT NAME AND CATEGORY TEXT WITH HYPEN-
SELECT CONCAT(product_name,'-',category) AS product_details FROM products;


-- EXTRACT THE FIRST 5 CHARECTORS FROM PRODUCT NAME 
SELECT SUBSTRING(product_name, 1 , 5) AS short_name FROM products;
-- SUBSTRING(product_name, 1 , 5) :-> SUBSTRING(column name, starting point which you want , ending point which you want)

-- COUNT LENGTH
SELECT product_name, LENGTH(product_name) AS length_Product_name FROM products;

-- REMOVE LEADING AND TRAILING SPACES FROM STRING
SELECT TRIM('           MACHINE                   ') AS Trimmed_text;

SELECT LENGTH(TRIM('        MACHINE                   ')) AS Trimmed_text;  --WITH TRIM LENGTH IS 7

SELECT LENGTH('    MACHINE                   ') AS Trimmed_text; -- WITHOUT TRIM LENGTH IS 30



-- REPLACE THE WORD 'Realme Narzo N53' replace with " Smart_Phone"
-- syntax of REPLACE(column name, old name, new name)

SELECT REPLACE(product_name, 'Realme Narzo N53','Smart_Phone') AS UPDATE_NAME FROM products;



-- GET THE FIRST 3 ALPHABET CHARECTORS FORM CATEGORY
SELECT LEFT(category,3) AS Categry_left FROM products;


-- GET THE LAST 3 ALPHABET CHARECTORS FORM CATEGORY
SELECT RIGHT(category,3) AS Categry_right FROM products;



