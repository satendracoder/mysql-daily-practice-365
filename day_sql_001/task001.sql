CREATE DATABASE satendracodermysql;

USE satendracodermysql;

-- Task001: Create employees table
CREATE TABLE students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT
);

-- Task001: Insert sample data
INSERT INTO
    students (id, name, age)
VALUES (1, 'Alice', 23),
    (2, 'Bob', 25);

-- Task001: Query all students
SELECT * FROM students;