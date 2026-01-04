use satendracodermysql;

DROP TABLE IF EXISTS employees;

-- Task002: Create employees table with additional columns
CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(50),
    department VARCHAR(50),
    salary INT
);

-- Task002-2: Insert data into employees table
INSERT INTO
    employees (
        emp_id,
        emp_name,
        department,
        salary
    )
VALUES (
        1,
        'Alice Johnson',
        'HR',
        60000
    ),
    (2, 'Bob Smith', 'IT', 75000),
    (
        3,
        'Charlie Brown',
        'Finance',
        80000
    ),
    (
        4,
        'Diana Prince',
        'Marketing',
        70000
    );

-- Task002-3: Select all data from employees table
SELECT * FROM employees;

-- Task002-5: Select employees with salary greater than 40000
SELECT * FROM employees WHERE salary > 70000;