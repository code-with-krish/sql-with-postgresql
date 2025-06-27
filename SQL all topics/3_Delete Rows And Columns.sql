CREATE DATABASE company;

-- Table 1
CREATE TABLE employee3(

		employee_id INT PRIMARY KEY,
		name VARCHAR(30) NOT NULL,
		position VARCHAR(30) NOT NULL,
		department VARCHAR(30) NOT NULL,
		hire_date DATE ,
		salary NUMERIC(12,2)
		
);

SELECT * FROM employee3;


INSERT INTO employee3(employee_id,name,position,department,hire_date,salary)

	VALUES(101,'Krishna Kanta Maiti','Data Scientist','Data Science','2027-06-15',10000000.00),
	(134,'Ankita Roy', 'ML Engineer', 'AI Division', '2026-03-01', 8500000.00),
    (536,'Rakesh Ghosh', 'Software Engineer', 'Development', '2025-01-10', 7500000.00),
    (246,'Puja Dey', 'Data Analyst', 'Analytics', '2024-11-21', 6700000.00),
    (775,'Arjun Sen', 'DevOps Engineer', 'Cloud', '2023-07-30', 8200000.00),
    (405,'Sweta Das', 'HR Manager', 'Human Resource', '2025-04-17', 6000000.00),
    (356,'Sourav Pal', 'Backend Developer', 'Engineering', '2022-09-05', 7300000.00),
    (785,'Rituparna Nandi', 'UI/UX Designer', 'Design', '2023-06-11', 5800000.00),
    (363,'Debojyoti Paul', 'Full Stack Developer', 'Tech', '2024-12-01', 7900000.00),
    (257,'Shruti Saha', 'Business Analyst', 'Business Intelligence', '2025-10-25', 6950000.00);




-- Delete a perticular row 

DELETE FROM employee3 WHERE department='Design' AND employee_id = 785;

-- Delete a perticular Columns

ALTER TABLE employee3 DROP COLUMN hire_date;


-- Delete Table permanently if it is exist
DROP TABLE IF EXISTS employee100;






