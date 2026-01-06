use satendracodermysql;

--Task004-1: Create customers table
create table customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    city VARCHAR(50),
    age INT
)

--Task004-2: Insert sample data into customers table
insert into customers (customer_id, customer_name, city, age) values
(1, 'Alice Johnson', 'New York', 30),
(2, 'Bob Smith', 'Los Angeles', 25),
(3, 'Charlie Brown', 'Chicago', 35),
(4, 'Diana Prince', 'Miami', 28),
(5, 'Ethan Hunt', 'San Francisco', 40);

--Task004-3: Update age for customers from New York to 31
update customers set city = 'New York' where customer_id = 1;

-- Task004-5: Delete a customer record
update customers set age = age +1
WHERE city = 'New York';

-- Task004-5: Delete a customer record
delete from customers where customer_id = 5;

-- Task004-6: Alter table - add new column
DELETE from customers where customer_id = 2;

-- Task004-6: Alter table - add new column
ALTER Table customers
add email VARCHAR(100);

-- Task004-7: Select all customers
SELECT * FROM customers;