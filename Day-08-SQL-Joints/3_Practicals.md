# Day 8 - SQL JOINS (Practicals)

Today, I practiced SQL JOINS using two tables: `employees` and `departments`.

## 1. INNER JOIN Practice

**Objective:** Get employee names and their department names.

```sql
SELECT
    e.name AS Employee_Name,
    d.department_name AS Department
FROM employees e
INNER JOIN departments d
    ON e.department_id = d.id;
```

**Result:** Returns employees whose department IDs match records in the departments table.

## 2. LEFT JOIN Practice

