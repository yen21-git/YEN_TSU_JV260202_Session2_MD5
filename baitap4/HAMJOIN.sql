CREATE DATABASE hamjoin_db;
USE hamjoin_db;

CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);


CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    order_date DATE,
    customer_id INT,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);



INSERT INTO Customers VALUES
(1, 'Nguyen Van A'),
(2, 'Tran Thi B');

INSERT INTO Orders VALUES
(101, '2026-05-10', 1),
(102, '2026-05-11', 2);

INSERT INTO Order_items VALUES
(101, 1, 'Laptop Dell', 1, 15000000),
(101, 1, 'Chuột Logitech', 2, 500000),
(102, 2, 'iPhone 15', 1, 25000000);
SELECT 
    o.order_id,
    o.order_date,
    c.customer_name
FROM Orders o
JOIN Customers c
ON o.customer_id = c.customer_id;
SELECT 
    o.order_id,
    oi.product_name,
    oi.quantity,
    oi.price
FROM Orders o
JOIN Order_items oi
ON o.order_id = oi.order_id;
SELECT 
    order_id,
    SUM(quantity * price) AS total_amount
FROM Order_items
GROUP BY order_id;
SELECT 
    order_id,
    SUM(quantity * price) AS total_amount
FROM Order_items
GROUP BY order_id
HAVING SUM(quantity * price) > 10000000;