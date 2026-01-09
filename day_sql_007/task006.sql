use satendracodermysql;

-- Task007-1: Create customers table
CREATE table customers(
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    city VARCHAR(50)
)

-- Task007-2: Create orders table
CREATE Table orders(
    order_id INT PRIMARY KEY,
    customer_id INT,
    product VARCHAR(50),
    amount INT
);

-- Task007-3: Insert data into customers table
INSERT INTO customers (customer_id, customer_name, city) VALUES
(1, 'Alice', 'New York'),
(2, 'Bob', 'Los Angeles'),
(3, 'Charlie', 'Chicago');

INSERT INTO orders (order_id, customer_id, product, amount) VALUES
(101, 1, 'Laptop', 1200),
(102, 2, 'Smartphone', 800),
(103, 1, 'Tablet', 300),
(104, 3, 'Headphones', 150);

-- Task007-5: INNER JOIN customers and orders
SELECT 
    c.customer_name,
    c.city,
    o.product,
    o.amount
FROM customers c
INNER JOIN orders o
ON c.customer_id = o.customer_id;