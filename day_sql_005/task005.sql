use satendracodermysql;
--Task005-1: Create orders table
create table orders (
    order_id INT PRIMARY KEY,
   customer_name VARCHAR(50),
   category VARCHAR(50),
   amount INT
);

--Task005-2: Insert sample data into orders table
INSERT into orders (order_id, customer_name, category, amount) values
(1, 'Alice Johnson', 'Electronics', 250),
(2, 'Bob Smith', 'Books', 40),
(3, 'Charlie Brown', 'Clothing', 100),
(4, 'Diana Prince', 'Electronics', 300),
(5, 'Ethan Hunt', 'Sports', 150);

-- Task005-3: Count total number of orders
select count(*) as totals_orders from orders;

-- Task005-4: Calculate total order amount
select sum(amount) as total_order_amount from orders;

-- Task005-5: Calculate average order amount
select avg(amount) as average_order_amount from orders;

-- Task005-6: Find minimum and maximum order amount
SELECT max(amount) as maximum_order_amount, min(amount) as minimum_order_amount from orders;

-- Task005-7: Category-wise total sales
SELECT category, sum(amount) as category_total FROM orders GROUP BY category;