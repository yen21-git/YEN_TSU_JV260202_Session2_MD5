CREATE DATABASE nhanvien_db;
USE nhanvien_db;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    department VARCHAR(50),
    salary DECIMAL(12,2)
);

INSERT INTO employees VALUES
(1, 'Nguyen Van A', 'IT', 15000000),
(2, 'Tran Thi B', 'IT', 14000000),
(3, 'Le Van C', 'IT', 13000000),
(4, 'Pham Thi D', 'IT', 16000000),
(5, 'Hoang Van E', 'HR', 10000000),
(6, 'Do Thi F', 'HR', 11000000),
(7, 'Nguyen Van G', 'Sales', 12500000),
(8, 'Tran Van H', 'Sales', 13500000),
(9, 'Le Thi I', 'Sales', 14500000),
(10, 'Pham Van K', 'Sales', 15500000);
SELECT 
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department;
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department;
SELECT 
    department,
    COUNT(*) AS total_employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;
SELECT 
    department,
    AVG(salary) AS avg_salary
FROM employees
GROUP BY department
HAVING AVG(salary) > 12000000;
