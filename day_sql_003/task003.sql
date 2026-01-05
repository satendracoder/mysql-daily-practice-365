use satendracodermysql;
-- Task003-1: Create products table
CREATE Table products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(100) NOT NULL,
    price INT NOT NULL
)

-- Task003-2: Insert data into products table
INSERT into
    products (
        product_id,
        product_name,
        category,
        price
    )
VALUES (
        1,
        'Laptop',
        'Electronics',
        60000
    ),
    (
        2,
        'Mobile',
        'Electronics',
        30000
    ),
    (3, 'Chair', 'Furniture', 5000),
    (4, 'Table', 'Furniture', 8000),
    (
        5,
        'Headphones',
        'Electronics',
        2000
    );

-- Task003-3: Select all products

SELECT * FROM products;

-- Task003-4: Select distinct categories
SELECT DISTINCT category FROM products;

-- Task003-5: Order products by price (high to low)
Select * from products ORDER BY price DESC LIMIT 3;