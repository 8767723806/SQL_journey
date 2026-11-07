# Day 13 - SQL Window Functions and Transactions (Practicals)

Here are the SQL queries I practiced today.

## Window Functions Practice
```sql
-- 1. Rank employees by salary within each department
SELECT 
    name, 
    department, 
    salary,
    RANK() OVER (PARTITION BY department ORDER BY salary DESC) as Salary_Rank
FROM employees;

-- 2. Running Total (Cumulative Sum) of salary ordered by hire date
SELECT 
    name, 
    hire_date, 
    salary,
    SUM(salary) OVER (ORDER BY hire_date) as Running_Total
FROM employees;

-- 3. Get the difference between an employee's salary and the department average
SELECT 
    name, 
    department, 
    salary,
    AVG(salary) OVER (PARTITION BY department) as Dept_Avg_Salary,
    (salary - AVG(salary) OVER (PARTITION BY department)) as Diff_From_Avg
FROM employees;

-- 4. Basic Transaction: Transfer money between two accounts
START TRANSACTION;

-- Step 1: Deduct from sender
UPDATE accounts SET balance = balance - 1000 WHERE account_id = 101;

-- Step 2: Add to receiver
UPDATE accounts SET balance = balance + 1000 WHERE account_id = 102;

-- If both queries run successfully, save the changes:
COMMIT;

-- (If an error occurs in Step 2, you would run ROLLBACK; to undo Step 1)

-- 5. Using SAVEPOINT
START TRANSACTION;

INSERT INTO orders (order_id, product) VALUES (1, 'Laptop');
SAVEPOINT sp1;

INSERT INTO orders (order_id, product) VALUES (2, 'Mouse');
-- Oops, we don't want the mouse right now. Let's rollback to savepoint.
ROLLBACK TO sp1;

-- The Laptop is still inserted, but Mouse is removed.
COMMIT;
