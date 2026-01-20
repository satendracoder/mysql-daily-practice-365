use satendracodermysql;

-- Task16-1: Create employees table
CREATE TABLE employees (
    emp_id  INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Task16-2: Insert data into employees table
INSERT INTO employees (emp_id, emp_name, department, salary)
VALUES
(101, 'Aman', 'IT', 60000),
(102, 'Neha', 'HR', 45000),
(103, 'Ravi', 'IT', 70000),
(104, 'Pooja', 'Finance', 50000),
(105, 'Karan', 'Sales', 55000);

-- Task16-3: Order employees by salary (ascending)
SELECT * FROM employees
ORDER BY salary;


-- Task16-4: Order employees by salary (descending)
SELECT * FROM employees
ORDER BY salary DESC;

-- Task16-5: Fetch top 3 highest paid employees
SELECT * FROM employees
ORDER BY salary DESC
LIMIT 3;

-- Task16-6: Fetch lowest paid employee
SELECT * FROM employees
ORDER BY salary
LIMIT 1;