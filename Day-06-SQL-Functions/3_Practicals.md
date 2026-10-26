# Day 6 - SQL Functions (Practicals)

Here are the SQL queries I practiced today on the `employees` table.

## Aggregate Functions Practice
```sql
-- Count total employees
SELECT COUNT(*) AS Total_Employees FROM employees;

-- Average salary
SELECT AVG(salary) AS Average_Salary FROM employees;

-- Total salary by department
SELECT department, SUM(salary) AS Total_Salary
FROM employees
GROUP BY department;
