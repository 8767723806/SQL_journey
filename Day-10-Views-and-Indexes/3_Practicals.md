# Day 10 - SQL Views and Indexes (Practicals)

Here are the SQL queries I practiced today.

## View Practice
```sql
-- 1. Create a simple View to see high-earning employees
CREATE VIEW HighEarners AS
SELECT name, department, salary 
FROM employees
WHERE salary > 50000;

-- 2. Use the View just like a normal table
SELECT * FROM HighEarners;

-- 3. Create a View using JOIN (to simplify complex queries)
CREATE VIEW EmployeeDepartments AS
SELECT e.name AS Employee_Name, d.department_name 
FROM employees e
INNER JOIN departments d ON e.department_id = d.id;

-- 4. Delete the View
DROP VIEW HighEarners;

-- 5. Create an index on the 'email' column of users table
-- (Assuming we search users by email very frequently)
CREATE INDEX idx_user_email ON users(email);

-- 6. Create an index on multiple columns (Composite Index)
-- Useful if we always search by both last_name and first_name
CREATE INDEX idx_name ON employees(last_name, first_name);

-- 7. View indexes on a table (MySQL specific command)
SHOW INDEX FROM users;

-- 8. Delete an Index
DROP INDEX idx_user_email ON users;
