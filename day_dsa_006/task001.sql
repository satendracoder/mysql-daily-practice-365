use satendracodermysql;

-- Task006-1: Create sales table
create table sales (
    sale_id int primary key,
    product_name varchar(255),
    category VARCHAR(100),
    quantity INT,
    price  INT
)

-- Task006-2: Insert data into sales table
INSERT into sales (sale_id, product_name, category, quantity, price) VALUES
(1, 'Laptop', 'Electronics', 2, 800),
(2, 'Smartphone', 'Electronics', 5, 600),
(3, 'Desk Chair', 'Furniture', 3, 150),
(4, 'Notebook', 'Stationery', 10, 5),
(5, 'Pen', 'Stationery', 20, 2);

-- Task006-3: Category-wise total quantity
select category, sum(quantity) as total_quantity
FROM sales
GROUP BY category;

-- Task006-4: HAVING clause
-- Get categories where total quantity is greater than 5
select category, sum(quantity) as total_quantity
FROM sales
GROUP BY category
HAVING total_quantity > 5;

-- Task006-5: WHERE vs HAVING
-- WHERE filters rows before grouping
SELECT category, SUM(quantity) AS total_quantity
FROM sales
WHERE price > 5000
GROUP BY category;

-- HAVING filters groups after aggregation
SELECT category, SUM(quantity) AS total_quantity
FROM sales
GROUP BY category
HAVING SUM(quantity) > 5;
