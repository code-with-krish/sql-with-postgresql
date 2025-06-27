-- Drop the table if it already exists
DROP TABLE IF EXISTS employees;
-- create the employees table
CREATE TABLE employees(

	employee_id SERIAL PRIMARY KEY,
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL,
	department VARCHAR(50) NOT NULL,
	salary DECIMAL(10,2) CHECK (salary>0),
	joining_date DATE NOT NULL,
	age INT CHECK (age>=18)
);

SELECT * FROM employees;


-- Insert some sample data into the "employees" table

INSERT INTO employees(first_name,last_name,department,salary,joining_date,age)

	VALUES('Amit','Sharma','IT',60000.00,'2022-05-01',29),
		  ('Neha','Patel','HR',55000.00,'2021-08-15',32),
		  ('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
		  ('Anjali','Verma','IT',65000.00,'2019-11-22',28),
		  ('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);



--------------------------------------------------PRACTICE QUESTIONS---------------------------------------------------

-- Q1. Retrieve all employee's first_names and their departments.
SELECT first_name , department FROM employees;

-- Q2. Update the salary of all employees in the "IT" department by increasing 10%
UPDATE  employees  SET salary = salary * (1.10) WHERE department ='IT';

SELECT * FROM employees;

-- Q3.  Delete all employees who are older than 34
DELETE FROM employees WHERE age>34;
SELECT * FROM employees ORDER BY employee_id ASC;

-- Q4. Add a new column 'email' to the 'employees' table.
ALTER TABLE employees ADD email VARCHAR(50);

UPDATE employees 
SET email ='amitsharma123@gmail.com' WHERE first_name = 'Amit';

UPDATE employees 
SET email ='nehapatel728@gmail.com' WHERE first_name = 'Neha';

UPDATE employees 
SET email ='anjalivarma8982@gmail.com' WHERE first_name = 'Anjali';

UPDATE employees 
SET email ='sureshreddy820@gmail.com' WHERE first_name = 'Suresh';


SELECT * FROM employees ORDER BY employee_id ASC;


-- Q5. Rename the 'department' column to 'dept_name'

ALTER TABLE employees RENAME COLUMN department TO dept_name;
SELECT * FROM employees ORDER BY employee_id ASC;


-- Q6. Retrieve the name of employees who joined after January 1, 2021.
SELECT first_name , last_name FROM employees WHERE joining_date > '2021-01-01';


-- Q7. Change the Data Type of the 'salary' column to 'INTEGER'
ALTER TABLE employees ALTER COLUMN salary TYPE INT;

SELECT * FROM employees ORDER BY employee_id ASC;


-- Q8. List all employees with their age and salary in descending  ORDER of salary.
SELECT employee_id , age , salary  FROM employees ORDER BY salary DESC;

-- Q9. Insert a new employee with the following details: 'Raj','Singh','Marketing',60000,'2023-09-15'30 .
INSERT INTO employees (first_name, last_name, dept_name, salary, joining_date, age)
VALUES ('Raj', 'Singh', 'Marketing', 60000, '2023-09-15', 30);

SELECT * FROM employees;

-- Q10. Update age of employee +1 to every employee.
UPDATE employees SET age= age+1 ;
SELECT * FROM employees;

	

