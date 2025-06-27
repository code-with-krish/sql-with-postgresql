-- How to create Table .. 
CREATE TABLE employee1(
      --  Create Table take first Column 1.name, 2.Data Type  then 3.Constraint
		employee_id SERIAL PRIMARY KEY,
		-- VARCHAR() is a charector type data type .
		-- it  allow the How much charectore user write . if VARCHAR(10).. That means 
		-- You don't take max of 10
		-- NOT NULL is a constraint , it means u can't abel to blank space
		name VARCHAR(30) NOT NULL,
		position VARCHAR(20) NOT NULL,
		department VARCHAR(30) NOT NULL,
		hire_date  DATE,
		salary NUMERIC(10,2)

);


SELECT * FROM employee1;


-- Insert Data in a Table 

INSERT INTO employee1(name,position,department,hire_date,salary)

	VALUES ('Krishna Kanta Maiti','Data Scientist','Data Science','2027-06-15',10000000.00),
	('Ankita Roy', 'ML Engineer', 'AI Division', '2026-03-01', 8500000.00),
    ('Rakesh Ghosh', 'Software Engineer', 'Development', '2025-01-10', 7500000.00),
    ('Puja Dey', 'Data Analyst', 'Analytics', '2024-11-21', 6700000.00),
    ('Arjun Sen', 'DevOps Engineer', 'Cloud', '2023-07-30', 8200000.00),
    ('Sweta Das', 'HR Manager', 'Human Resource', '2025-04-17', 6000000.00),
    ('Sourav Pal', 'Backend Developer', 'Engineering', '2022-09-05', 7300000.00),
    ('Rituparna Nandi', 'UI/UX Designer', 'Design', '2023-06-11', 5800000.00),
    ('Debojyoti Paul', 'Full Stack Developer', 'Tech', '2024-12-01', 7900000.00),
    ('Shruti Saha', 'Business Analyst', 'Business Intelligence', '2025-10-25', 6950000.00);





-- How to delete a hole table
-- ue used 'TRUNCATE TABLE employee RESTART IDENTITY;'




























