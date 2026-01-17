-- Task012-1: Create users table
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50),
    email VARCHAR(100),
    city VARCHAR(30)
);

-- Task012-2: Insert sample data
INSERT INTO users (user_id, username, email, city)
VALUES
(1, 'rahul01', 'rahul@gmail.com', 'Delhi'),
(2, 'neha02', 'neha@gmail.com', 'Mumbai'),
(3, 'amit03', 'amit@gmail.com', 'Pune'),
(4, 'pooja04', 'pooja@gmail.com', 'Delhi'),
(5, 'ravi05', 'ravi@gmail.com', 'Bangalore');

-- Task012-3: Create INDEX on username
CREATE INDEX idx_username
ON users(username);

-- Task012-4: Create INDEX on city
CREATE INDEX idx_city
ON users(city);

-- Task012-5: Query using indexed column
SELECT * FROM users
WHERE username = 'rahul01';

-- Task012-6: Drop INDEX
DROP INDEX idx_city ON users;
