CREATE DATABASE satendracodermysql;

USE satendracodermysql;

-- Task001: Create employees table
CREATE TABLE employees (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    hire_date DATE NOT NULL
);

-- Task001: Insert sample data
INSERT INTO
    employees (
        first_name,
        last_name,
        email,
        hire_date
    )
VALUES (
        'John',
        'Doe',
        'john.doe@example.com',
        '2023-01-15'
    ),
    (
        'Jane',
        'Smith',
        'jane.smith@example.com',
        '2023-02-20'
    );

-- Task001: Query all employees
SELECT * FROM employees;