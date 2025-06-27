SELECT * FROM employees10;
-- ----------------------------ARITHMETIC OPERATORS(+,-,*,/,%)----------------------------------------
-- Q1. Retrieve the first_name , salary and calculate a 10% bonus on the salary
SELECT first_name , salary ,(salary * 0.10) AS Bonus
FROM employees10;
-- Q2. Calculate the Anual Salary and salary Incerment by 5% . show the monthly new salary as well
SELECT first_name, last_name, salary ,
	   (salary*12) AS Anual_salary,
	   (salary*0.05) AS Incremtnt_salary,
	   (salary+ salary*0.05) AS new_monthly_salary --  or another process :(salary *1.05) AS new_monthly_salary
FROM employees10;
	 


-- -----------------------------COMPARISION OPERATORS(=,!=,>,<,>=,<=) ------------------------------------------

-- Q1.  showing thoes employees who's age is equal to  30

SELECT * FROM employees10
WHERE  age =30;

-- Q2.   showing thoes employees who's age is  not equal to  30

SELECT * FROM employees10
WHERE age != 30;

-- Q3. Salary Greater than 50k
SELECT first_name , last_name , salary FROM employees10
WHERE salary >50000.00;

-- ------------------------------LOGICAL OPERATORS(AND, OR, NOT)------------------------------------------------
SELECT * FROM employees10;

-- Q1 USING AND : shwaing all the employees first name , whoes age is above 40  and salary is above 50k
SELECT first_name , salary, age FROM employees10
WHERE salary > 50000 AND age > 40;

-- Q2. USING OR : shwaing all the employees first name , whoes age is above 40  and salary is above 50k
SELECT first_name , salary, age FROM employees10
WHERE salary > 50000 OR age > 40;


-- Q3. USING NOT : shwaing all the employees first name , whoes age is above 40  and salary is above 50k
SELECT first_name , salary, department FROM employees10
WHERE  NOT (department ='IT');



-- ---------------------------------BETWEEN, LIKE and IN OPERATORES----------------------------------------------

SELECT * FROM employees10;

-- Q1.USING BETWEEN :  Retrieve employees whoes salary is between 40k and 60k 
SELECT first_name , salary FROM employees10
WHERE salary BETWEEN 40000.00 AND 60000.00;

-- Q2. USING LIKE : find employees whoes department end with 'ing'

SELECT first_name , department FROM employees10
WHERE department LIKE  '%ing' AND first_name LIKE 'J%' AND last_name LIKE '%a%';



-- Q3 . USING IN (This is the better than AND Operator): Retrieve employees who belong to either the :Finance or 'Marketing' departments
SELECT first_name , department FROM employees10
WHERE  department IN ('Finance','Marketing');

-- ----------------------------IS NULL/ ORDER BY/ LIMIT / DISTINCT OPERATORS----------------------------------------

SELECT * FROM employees10;

-- Q1.USING IS NULL : Find employees where the department is NULL ( if applicable)

SELECT first_name, last_name, Department  FROM employees10
WHERE department IS NULL;

-- Q2. USING ORDER BY : List employees sorted salary in DESCENDING order

SELECT first_name, last_name, Department , salary  FROM employees10
ORDER BY  salary  DESC; -- BY DEFAULT IT TAKES 'ASC' ASSENDING ORDER

-- Q3. USING LIMIT : retrieve the top 5 high paying employees

SELECT first_name, last_name, Department  FROM employees10
ORDER BY salary DESC
LIMIT 5 ;

-- Q4. USING DISTINCT :retrieve a list of unique departments

SELECT DISTINCT department  FROM employees10

-- -------------------------------SET OPERATORS()-----------------------------------------------
-- CREATE TABLE student_2023
CREATE TABLE student_2023(
		student_id INT PRIMARY KEY,
		student_name VARCHAR(50),
		course VARCHAR(50)
		
)

INSERT INTO student_2023(student_id, student_name, course)
	VALUES (1,'Krishna Kanta Maiti','Data Science'),
			(2,'Amrita Dinda','English Honorse'),
			(3,'Amon Mittal','Biology Science'),
			(4,'Kabir Patel','Civil Engineering'),
			(5,'Rahul Gupta','Computer science ');

SELECT * FROM student_2023;



-- CREATE TABLE student_2025
CREATE TABLE student_2025(
		student_id INT PRIMARY KEY,
		student_name VARCHAR(50),
		course VARCHAR(50)
		
)

INSERT INTO student_2025(student_id, student_name, course)
	VALUES (1,'Krishna Kanta Maiti','Data Science'), -- sameas student_2023
			(2,'Amrita Dinda','English Honorse'),  -- same as student_2023
			(10,'Amon Gupta','Data Science'),
			(8,'Kabir Sing','MachanicalEngineering'),
			(9,'Rajesh kau','Computer science ');

SELECT * FROM student_2025;

-- UNION OPERATOR : Combines results, removes duplicates
SELECT student_name, course 
FROM student_2023
UNION 
SELECT student_name, course
FROM student_2025



-- UNIONALL OPERATORS : Combines results, keeps duplicates
SELECT student_name, course 
FROM student_2023
UNION ALL
SELECT student_name, course
FROM student_2025

-- INTERSECT OPERATORS : Returns common results
SELECT student_name, course 
FROM student_2023
INTERSECT
SELECT student_name, course
FROM student_2025


-- EXCEPT OPERATORS : Returns results in first, not second
SELECT student_name, course 
FROM student_2023
EXCEPT
SELECT student_name, course
FROM student_2025



