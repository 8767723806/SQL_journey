# Day 14 - SQL Interview Questions (Practicals)

Here are the top 10 interview questions I practiced today.

## Q1. Find the second highest salary from an Employee table.
```sql
SELECT MAX(salary) 
FROM employees 
WHERE salary < (SELECT MAX(salary) FROM employees);

##Q2. Find duplicate records in a table.
SELECT email, COUNT(*) 
FROM users 
GROUP BY email 
HAVING COUNT(*) > 1;

##Q3. Delete duplicate records but keep the lowest ID.
DELETE FROM users 
WHERE id NOT IN (
    SELECT MIN(id) FROM users GROUP BY email
);

##Q4. Find employees who earn more than their department's average salary.
SELECT name, salary, department 
FROM employees e1
WHERE salary > (
    SELECT AVG(salary) FROM employees e2 
    WHERE e1.department = e2.department
);

##Q5. Get the top 3 highest-paid employees per department.
SELECT * FROM (
    SELECT name, department, salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as rnk
    FROM employees
) AS temp_table
WHERE rnk <= 3;

##Q6. What is the difference between DELETE, TRUNCATE, and DROP?
DELETE: Removes specific rows (uses WHERE clause), can be rolled back, triggers fire.

TRUNCATE: Removes all rows quickly, cannot use WHERE, cannot be rolled back.

DROP: Deletes the entire table structure and data permanently.

##Q7. What is the difference between UNION and UNION ALL?
UNION: Combines results and removes duplicates (slower).

UNION ALL: Combines results and keeps duplicates (faster).

##Q8. Find employees who have no manager (Self Join concept).
sql
SELECT e.name 
FROM employees e
LEFT JOIN employees m ON e.manager_id = m.id
WHERE m.id IS NULL;
##Q9. What are the ACID properties in Transactions?
Atomicity, Consistency, Isolation, Durability.

##Q10. What is the difference between a View and a Table?
A Table stores actual data physically. A View is a virtual table that just saves the query (no physical data).
