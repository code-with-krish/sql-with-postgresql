SELECT * From products;

-- CREATE A NEW COLUMN IS DISCOUNT_PRIECE
ALTER TABLE products 
ADD COLUMN discount_price NUMERIC(10,2);

-- CREATE A NULL value
UPDATE products
SET discount_price =price * 0.9 --10% discount
WHERE product_name  NOT IN ('Lenovo IdeaPad Slim 3','Realme Narzo N53');

-- ----------------------------------COALESCE FUNCTION(HANDLE NULL VALUE)-------------------
-- HANDEL NULL VALUES

SELECT product_name , discount_price 
FROM products;


-- SOLUTION
SELECT product_name , discount_price,
		-- SYNTAX : COALESCE(null_value_Column, Without_null Value column)
		COALESCE(discount_price, price) AS Final_disount
FROM products;




 




 

