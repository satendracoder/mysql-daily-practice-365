use satendracodermysql;

--task013-1: Create employees table
CREATE Table emplyees(
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50) NOT NULL,
    department VARCHAR(50),
    salary INT NOT NULL
)

-- Task013-2: Insert data into employees table
Insert into emplyees(emp_id,emp_name,department,salary) values
(1,'John','IT',50000),
(2,'Alice','HR',45000),
(3,'Bob','Finance',55000),
(4,'Emily','IT',60000),
(5,'Michael','Marketing',48000);

--Task013-3: Create a VIEW
CREATE VIEW it_employees AS
SELECT emp_id, emp_name, salary
FROM employees
WHERE department = 'IT';

-- Task013-4: Select data from VIEW
SELECT * FROM it_employees;

-- Task013-5: Update data through VIEW
UPDATE it_employees SET salary = salary + 5000 WHERE emp_name = 'Emily';

-- Task013-6: Drop the VIEW
DROP VIEW it_employees;