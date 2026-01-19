use satendracodermysql;

-- Task14-1: Create departments table
CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100) NOT NULL,
    location VARCHAR(100)
);

-- Task14-2: Insert data into departments table
INSERT INTO departments (dept_id, dept_name, location) VALUES
(1, 'Human Resources', 'New York'),
(2, 'Engineering', 'San Francisco'),
(3, 'Marketing', 'Chicago');

-- Task14-3: Fetch all departments
SELECT * FROM departments;

-- Task14-4: Fetch department names only
SELECT dept_name FROM departments;

-- Task14-5: Update location of HR department
UPDATE departments SET location = 'Hyderabad' WHERE dept_name = 'HR';

-- Task14-6: Delete Marketing department
DELETE FROM departments WHERE dept_name = 'Marketing';