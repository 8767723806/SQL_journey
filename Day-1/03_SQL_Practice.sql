-- =========================================
-- SQL JOURNEY - DAY 1
-- Topic: SQL Introduction and Basic Queries
-- Database: MySQL
-- =========================================

-- 1. Create a database
CREATE DATABASE IF NOT EXISTS sql_journey;

-- 2. Select the database
USE sql_journey;

-- 3. Create a students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(50),
    marks DECIMAL(5,2)
);

-- 4. Insert sample student records
INSERT INTO students
(student_id, student_name, age, city, marks)
VALUES
(1, 'Aarav', 20, 'Pune', 85.50),
(2, 'Priya', 21, 'Mumbai', 92.00),
(3, 'Rahul', 20, 'Nashik', 76.50),
(4, 'Sneha', 22, 'Dhule', 88.00),
(5, 'Amit', 21, 'Jalgaon', 67.00);

-- 5. Display all student records
SELECT * FROM students;

-- 6. Display selected columns
SELECT student_name, marks
FROM students;

-- 7. Find students scoring more than 80
SELECT *
FROM students
WHERE marks > 80;

-- 8. Sort marks from highest to lowest
SELECT *
FROM students
ORDER BY marks DESC;

-- 9. Display the first three records
SELECT *
FROM students
LIMIT 3;

-- 10. Update a student's marks
UPDATE students
SET marks = 90.00
WHERE student_id = 1;

-- 11. Verify the updated record
SELECT *
FROM students
WHERE student_id = 1;

-- 12. Delete practice record
-- Uncomment the next line only when needed.
-- DELETE FROM students WHERE student_id = 5;

-- 13. Display final records
SELECT * FROM students;

-- =========================================
-- END OF DAY 1 PRACTICAL
-- =========================================
