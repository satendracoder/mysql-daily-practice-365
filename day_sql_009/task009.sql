-- Task009-1: Create customers table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(30)
);

-- Task009-2: Create orders table
CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);

-- Task009-3: Insert data into customers table
INSERT INTO customers (customer_id, customer_name, city)
VALUES
(1, 'Rahul', 'Delhi'),
(2, 'Neha', 'Mumbai'),
(3, 'Amit', 'Pune'),
(4, 'Sonia', 'Chennai'); -- no order

-- Task009-4: Insert data into orders table
INSERT INTO orders (order_id, customer_id, product, amount)
VALUES
(101, 1, 'Laptop', 60000),
(102, 2, 'Mobile', 30000),
(103, 5, 'Tablet', 20000); -- no matching customer

-- Task009-5: FULL JOIN using UNION
SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.product,
    o.amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id

UNION

SELECT
    c.customer_id,
    c.customer_name,
    c.city,
    o.product,
    o.amount
FROM customers c
RIGHT JOIN orders o
ON c.customer_id = o.customer_id;

-- Task009-6: NULL handling using IFNULL
SELECT
    IFNULL(c.customer_name, 'No Customer') AS customer_name,
    IFNULL(o.product, 'No Product') AS product,
    IFNULL(o.amount, 0) AS amount
FROM customers c
LEFT JOIN orders o
ON c.customer_id = o.customer_id;
