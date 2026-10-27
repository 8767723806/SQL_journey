# Day 7 - SQL Important Notes

## Topic: GROUP BY and HAVING

### 1. GROUP BY
- Groups rows that have the same values in a column.
- Commonly used with aggregate functions.
- Example:
```sql
SELECT department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY department;
```

### 2. HAVING
- Filters groups based on a condition.
- Commonly used with aggregate functions.
- Example:
```sql
SELECT department, COUNT(*) AS Total_Employees
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;
```

### 3. Aggregate Functions

| Function | Purpose |
|---|---|
| `COUNT()` | Counts rows |
| `SUM()` | Calculates the total |
| `AVG()` | Calculates the average |
| `MAX()` | Returns the highest value |
| `MIN()` | Returns the lowest value |

### 4. Difference Between WHERE and HAVING

| WHERE | HAVING |
|---|---|
| Filters individual rows. | Filters groups. |
| Used before `GROUP BY`. | Used after `GROUP BY`. |
| Generally used for row-level conditions. | Commonly used with aggregate conditions. |

### 5. Important Rules
1. `GROUP BY` groups rows with matching values.
2. Use `COUNT(*)` to count rows in each group.
3. Use `SUM(salary)` to calculate total salary.
4. Use `AVG(salary)` to calculate average salary.
5. Use `MAX(salary)` to find the highest salary.
6. Use `MIN(salary)` to find the lowest salary.
7. Use `HAVING` to filter grouped results.
8. `WHERE` filters rows before grouping.
9. `HAVING` can use aggregate functions such as `COUNT()` and `SUM()`.
10. In a grouped query, selected columns should generally appear in `GROUP BY` or be used inside an aggregate function.

### 6. SQL Query Execution Order

The logical processing order for these clauses is:

1. `FROM`
2. `WHERE`
3. `GROUP BY`
4. `HAVING`
5. `SELECT`
6. `ORDER BY`

### Conclusion
`GROUP BY` helps summarize data into groups, while `HAVING` helps filter those groups. Both are useful for SQL reporting and data analysis.
