-- Drop table if it exists (correct syntax)
DROP TABLE IF EXISTS Employees15;

-- Create the table

-- TABLE 1
CREATE TABLE Employees15 (
    employee_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    department_id INT
);

-- Insert data (don't insert into SERIAL column manually unless necessary)
INSERT INTO Employees15(first_name, last_name, department_id)
VALUES 
    ('Rahul', 'Sharma', 101),
    ('Priya', 'Mehta', 102),
    ('Ankit', 'Verma', 103),
    ('Simran', 'Kumar', NULL),
    ('Aman', 'Singh', 101);

-- View the data
SELECT * FROM Employees15;


-- TABLE 2
-- CREATE TABLE
CREATE TABLE Department(

	department_id INT,
	department_name VARCHAR(50)
)


INSERT INTO Department(department_id,department_name)
VALUES (101,'Sales'),
		(102,'Marketing'),
		(103,'IT'),
		(104,'HR');


SELECT * FroM Department;


-- -------------------------------------------------- INNER JOIN FUNCTION--------------------------------------------------------

SELECT e.employee_id, e.first_name, e.last_name, 
d.department_id, d.department_name

-- Assign tables
FROM Employees15 e
INNER JOIN
Department d
ON e.department_id = d.department_id  -- Common column joining
ORDER BY e.employee_id 


-- ------------------------LEFT JOIN-----------------------------

SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name
FROM Employees15 e
LEFT JOIN
Department d
ON e.department_id = d.department_id
ORDER BY e.employee_id


-- --------------------RIGHT JOIN--------------------

SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name
FROM Employees15 e
RIGHT JOIN
Department d
ON e.department_id = d.department_id
ORDER BY e.employee_id


-- ----------------------------FULL OUTER JOIN------------------------------

SELECT e.employee_id, e.first_name, e.last_name,
d.department_id, d.department_name
FROM Employees15 e
FULL OUTER JOIN
Department d
ON e.department_id = d.department_id
ORDER BY e.employee_id


-- -----------------------------CROSS JOIN----------------------------------------
SELECT  e.first_name, e.last_name,
 d.department_name
FROM Employees15 e
CROSS JOIN
Department d
ORDER BY e.employee_id

-- ----------------------SELFT JOIN----------------------


SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2

FROM employees15 e1 JOIN employees15 e2
ON e1.department_id = e2.department_id -- here employee_id of Rahul or Aman are same.. that's why this type of o/p is come

--  OTHER --


SELECT e1.first_name AS Employee_name1,
	   e2.first_name AS Employee_name2,
	   d.department_name

FROM employees15 e1 JOIN employees15 e2
ON e1.department_id = e2.department_id AND e1.employee_id != e2.employee_id
JOIN
department d
on e1.department_id = d.department_id;


