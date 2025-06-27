SELECT * From products;


/* CASE FUNCTION : Categorizing Based On conditions
 we will categorize products into price rnages:

 EXPENCIVE if the price greater than or equall to 10000.00 
 MODERATE if the price is between 4000.00 and 9999.00
 AFFORDABLE if the priceis less than 4000.00 */

 SELECT product_name, price,
  		CASE
		    WHEN price >= 10000.00 THEN 'EXPENCIVE'
			WHEN price >= 4000.00 AND  price<=9999.00 THEN 'MODERATE'
			ELSE 'AFFORDABLE'
		END AS Price_category

FROM products;




-- --------------------------------------------ASSIGNMENTS-----------------------------------------------------

/*CASE with AND & OR operators - Stock Status
we will classify products based on quantity available:


In Stock if Quantity is 100 or more
Limited Stock if quantity is between 50-99
Out of Stock if quantityis less than 50 */


SELECT product_name, category, quantity,

		CASE 
			WHEN quantity >100 THEN 'In Stock'
			WHEN quantity BETWEEN 50 AND 99 THEN 'Limited Stock'
 			ELSE 'Out of Stock'
		END AS Stock_quantity	 

FROM products;


/*CASE with LIKE operator = Category Clasification
check if the category name contains 'Electronics' and 'Computer' Using LIKE */

SELECT product_name, category, quantity,

		CASE 
			WHEN category LIKE 'Electronics' THEN 'Electronics_ITEM'
			WHEN category LIKE 'Computer' THEN 'Computer_ITEM'
 			ELSE 'Accessories'
		END AS Category_type	 

FROM products;

