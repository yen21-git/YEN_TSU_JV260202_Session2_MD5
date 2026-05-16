CREATE DATABASE hocsinh_db;
USE hocsinh_db;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    full_name VARCHAR(100),
    birth_year INT,
    gender VARCHAR(10),
    score DECIMAL(4,2)
);


INSERT INTO students VALUES
(1, 'nguyen van an', 2004, 'Nam', 8.25),
(2, 'tran thi mai', 2003, 'Nu', 7.80),
(3, 'le quoc bao', 2005, 'Nam', 9.10),
(4, 'pham thu ha', 2004, 'Nu', 6.95),
(5, 'do minh tam', 2002, 'Nam', 5.60);
SELECT 
    student_id,
    UPPER(full_name) AS full_name
FROM students;
SELECT 
    full_name,
    YEAR(CURDATE()) - birth_year AS age
FROM students;
SELECT 
    full_name,
    ROUND(score, 1) AS avg_score
FROM students;
SELECT 
    COUNT(*) AS total_students,
    MAX(score) AS highest_score,
    MIN(score) AS lowest_score
FROM students;