CREATE TABLE employee8(

	employee_id INT PRIMARY KEY,
	name VARCHAR(30)  NOT NULL,
	position VARCHAR(30) NOT NULL,
	department VARCHAR(30) NOT NULL,
	experience INT NOT NULL,
	salary NUMERIC(10,2) NOT NULL,
	location VARCHAR(30) 
	
);

SELECT *FROM employee8;



INSERT INTO employee8(employee_id, name, position, department, experience, salary, location)

VALUES(56,'Krishna Kanta Maiti','Senior Data Scientist','Data Science',10,10000000.00,'UAE'),
(57,'Ananya Roy','Data Analyst','Business Intelligence',4,450000.00,'India'),
(58,'Rahul Sen','Machine Learning Engineer','AI/ML',6,750000.00,'Germany'),
(59,'Nikita Sharma','Data Scientist','Healthcare Analytics',5,680000.00,'USA'),
(60,'Arjun Das','Business Analyst','Finance',3,520000.00,'India'),
(61,'Saira Khan','AI Researcher','R&D',7,980000.00,'Canada'),
(62,'Devansh Mehra','Statistician','Research',4,460000.00,'UK'),
(63,'Priya Menon','Junior Data Scientist','Retail Analytics',2,350000.00,'India'),
(64,'Mohammed Aamir','ETL Developer','Data Engineering',5,600000.00,'Qatar'),
(65,'Sunita Rao','Big Data Engineer','Cloud Analytics',6,800000.00,'Singapore')




-- UPDATE THE DATA IN A TABLE
UPDATE employee8 SET experience = 5 WHERE name = 'Krishna Kanta Maiti';

-- update in another process in logic
UPDATE employee8 SET salary = 800000.00 WHERE experience > 5;

-- update multiple in one line
UPDATE employee8 SET experience=6 , location = 'India' WHERE name = 'Nikita Sharma';

-- Advanced type 
UPDATE employee8 SET experience = experience+2 WHERE location LIKE '%dia';


-- CREATE ORDERED BY TABLE.. because , 
-- before , when i update the data from the table in 1st row and employee_id 56 , . is is going on last row
-- that's why we used this
SELECT * FROM employee8 ORDER BY employee_id ASC; --ASC means Ascending order


--                        ALTER THE COLUMNS IN A TABLE
--To  rename  name column to user_name
ALTER TABLE employee8 RENAME COLUMN  name TO user_name;

-- TO change the experience column's data typefrom INT to SMALLINT

ALTER TABLE employee8 ALTER COLUMN experience TYPE SMALLINT;




-- To add a NOT NULL CONSTRAINT to location column
ALTER TABLE employee8 ALTER COLUMN location SET NOT NULL;


-- Adding CHECK constraint to experience column

-- 
-- ALTER TABLE employee8 DROP CONSTRAINT experience;


ALTER TABLE employee8 ADD CONSTRAINT experience CHECK(experience>=5);


-- ALTER TABLE
ALER TABLE employee8 RENAME TO employee9;









