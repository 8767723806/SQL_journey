# Day 6 - SQL Functions

SQL Functions are built-in methods used to perform calculations, manipulate data, and return results. They help us avoid writing repetitive logic and make queries more powerful and readable.

## Topics Covered

### 1. Aggregate Functions
- COUNT()  – Returns the number of rows
- SUM()    – Returns the total sum of a numeric column
- AVG()    – Returns the average value of a numeric column
- MIN()    – Returns the smallest value
- MAX()    – Returns the largest value

### 2. String Functions
- UPPER()      – Converts text to uppercase
- LOWER()      – Converts text to lowercase
- LENGTH()     – Returns the length of a string
- CONCAT()     – Joins two or more strings
- SUBSTRING()  – Extracts part of a string
- TRIM()       – Removes leading/trailing spaces

### 3. Numeric Functions
- ROUND()   – Rounds a number to specified decimals
- ABS()     – Returns absolute value
- CEIL()    – Rounds up to nearest integer
- FLOOR()   – Rounds down to nearest integer

### 4. Date Functions
- NOW()          – Returns current date and time
- CURDATE()      – Returns current date
- DATEDIFF()     – Returns difference between two dates
- DATE_FORMAT()  – Formats a date

### 5. Example Queries

```sql
-- Count total employees
SELECT COUNT(*) FROM employees;

-- Average salary
SELECT AVG(salary) FROM employees;

-- Uppercase names
SELECT UPPER(name) FROM employees;

-- Total salary by department
SELECT department, SUM(salary)
FROM employees
GROUP BY department;

-- Employees joined in last 30 days
SELECT * FROM employees
WHERE joining_date >= CURDATE() - INTERVAL 30 DAY;
