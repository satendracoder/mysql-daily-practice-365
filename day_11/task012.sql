-- Task011-1: Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50)
);

-- Task011-2: Create employees table
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    dept_id INT,
    salary INT
);

-- Task011-3: Insert data into departments table
INSERT INTO departments (dept_id, dept_name)
VALUES
(1, 'IT'),
(2, 'HR'),
(3, 'Finance');

-- Task011-4: Insert data into employees table
INSERT INTO employees (emp_id, emp_name, dept_id, salary)
VALUES
(101, 'Aman', 1, 50000),
(102, 'Neha', 2, 40000),
(103, 'Ravi', 1, 60000),
(104, 'Pooja', 3, 45000),
(105, 'Karan', 1, 70000);

-- Task011-5: Subquery using IN
-- Get employees who work in IT department
SELECT emp_name, salary
FROM employees
WHERE dept_id IN (
    SELECT dept_id
    FROM departments
    WHERE dept_name = 'IT'
);

-- Task011-6: Subquery using EXISTS
-- Get employees only if department exists
SELECT emp_name, salary
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.dept_id = e.dept_id
);

-- Task011-7: Subquery with aggregate
-- Get employees earning more than average salary
SELECT emp_name, salary
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
