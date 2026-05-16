CREATE DATABASE sanpham_db;
USE sanpham_db;

CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category VARCHAR(50),
    price DECIMAL(12,2)
);


INSERT INTO products VALUES
(1, 'Laptop Dell', 'Laptop', 25000000),
(2, 'Laptop HP', 'Laptop', 22000000),
(3, 'iPhone 15', 'Phone', 30000000),
(4, 'Samsung S24', 'Phone', 27000000),
(5, 'Chuột Logitech', 'Accessory', 500000),
(6, 'Bàn phím Corsair', 'Accessory', 2500000);
SELECT *
FROM products
WHERE price > (
    SELECT AVG(price)
    FROM products
);
SELECT *
FROM products p
WHERE price = (
    SELECT MAX(price)
    FROM products
    WHERE category = p.category
);
SELECT *
FROM products
WHERE category IN (
    SELECT category
    FROM products
    WHERE price > 20000000
);