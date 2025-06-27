SELECT * FROM products;

-- Assign a unique row number to each products within the same category


--ROW_NUMBER()
SELECT product_name , category , price,

	ROW_NUMBER() OVER(PARTITION BY category ORDER BY price DESC ) AS row_num

FROM products;



-- DENSE_RANK
SELECT product_name , category , price,

	DENSE_RANK() OVER(PARTITION BY category ORDER BY price DESC ) AS Ranking

FROM products;


-- SUM

SELECT product_name , category , price,

	SUM(price) OVER(ORDER BY price DESC ) AS Running_Total

FROM products;





