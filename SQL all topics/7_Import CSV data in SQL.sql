-- Drop the table if it already exists
DROP TABLE IF EXISTS employees10;
-- create the employees table
CREATE TABLE employees10(

	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50) NOT NULL,
	salary NUMERIC(10,2),
	joining_date DATE NOT NULL,
	age INT 
);

SELECT * FROM employees10;

----------------------------------HOW TO IMPORT DATA FROM CSV FILE-----------------------------------------
COPY employees10(employee_id, first_name,last_name, department, salary, joining_date, age)
FROM 'F:\SQL\BASIC\employees_corrected.csv'
DELIMITER',' 
CSV HEADER;























