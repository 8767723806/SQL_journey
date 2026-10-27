# Day 7 - SQL Practice Questions

## Topic: GROUP BY and HAVING

### Question 1: Count Employees in Each Department

**Task:** Write a query to count the number of employees in each department.

```sql
SELECT department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY department;
```

### Question 2: Calculate Average Salary in Each Department

**Task:** Write a query to calculate the average salary for each department.

```sql
SELECT department, AVG(salary) AS Average_Salary
FROM employees
GROUP BY department;
```

### Question 3: Find Departments with More Than 3 Employees

**Task:** Write a query to display departments that have more than three employees.

```sql
SELECT department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 3;
```

## Learning Outcomes

- Practiced `GROUP BY`.
- Used `COUNT()`, `SUM()`, `AVG()`, and `MAX()`.
- Practiced filtering groups using `HAVING`.
- Understood the difference between `WHERE` and `HAVING`.
