# Day 1: SQL Queries Learned

These examples use MySQL syntax.

## 1. CREATE DATABASE
Creates a new database.

CREATE DATABASE sql_journey;

## 2. USE
Selects a database.

USE sql_journey;

## 3. CREATE TABLE
Creates a table with columns and data types.

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(50) NOT NULL,
    age INT,
    city VARCHAR(50),
    marks DECIMAL(5,2)
);

## 4. INSERT INTO
Adds a record to a table.

INSERT INTO students
(student_id, student_name, age, city, marks)
VALUES (1, 'Aarav', 20, 'Pune', 85.50);

## 5. SELECT *
Retrieves all columns and records.

SELECT * FROM students;

## 6. SELECT Specific Columns
Retrieves selected columns.

SELECT student_name, marks
FROM students;

## 7. WHERE
Filters records according to a condition.

SELECT *
FROM students
WHERE marks > 80;

## 8. ORDER BY
Sorts records by marks from highest to lowest.

SELECT *
FROM students
ORDER BY marks DESC;

## 9. LIMIT
Returns a limited number of records.

SELECT *
FROM students
LIMIT 3;

## 10. UPDATE
Changes an existing record.

UPDATE students
SET marks = 90.00
WHERE student_id = 1;

## 11. DELETE
Deletes a record matching a condition.

DELETE FROM students
WHERE student_id = 1;

## Day 1 Summary
Topics documented:
- Database and table creation
- Inserting records
- Retrieving data
- Filtering and sorting
- Updating and deleting records

Note: Practise UPDATE and DELETE carefully.
Always verify the WHERE condition before running them.
