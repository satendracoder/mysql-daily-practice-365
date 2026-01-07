--Task005-1: Create orders table
create table orders (
    order_id INT PRIMARY KEY,
   customer_name VARCHAR(50),
   category VARCHAR(50),
   amount INT
);