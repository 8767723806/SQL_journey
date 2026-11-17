# Day 14 - SQL Cheat Sheet (Important Notes)

Here is the ultimate SQL Cheat Sheet for quick revision.

## 1. SQL Query Execution Order
Even though we write queries in a different order, SQL executes them in this order:
`FROM` -> `JOIN` -> `WHERE` -> `GROUP BY` -> `HAVING` -> `SELECT` -> `DISTINCT` -> `ORDER BY` -> `LIMIT`

## 2. Most Important Clauses
- `WHERE`: Filters rows before grouping.
- `GROUP BY`: Groups rows into summary rows.
- `HAVING`: Filters groups after aggregation.
- `ORDER BY`: Sorts the final result (ASC / DESC).
- `DISTINCT`: Removes duplicate rows from the result.

## 3. Types of JOINS
- `INNER JOIN`: Only matching rows from both tables.
- `LEFT JOIN`: All rows from the left table + matching from right.
- `RIGHT JOIN`: All rows from the right table + matching from left.
- `FULL JOIN`: All rows when there is a match in either table.

## 4. Key Function Categories
- **Aggregate:** `COUNT()`, `SUM()`, `AVG()`, `MIN()`, `MAX()`
- **String:** `CONCAT()`, `UPPER()`, `LOWER()`, `SUBSTRING()`, `TRIM()`
- **Date:** `NOW()`, `CURDATE()`, `DATEDIFF()`, `DATE_FORMAT()`
- **Window:** `ROW_NUMBER()`, `RANK()`, `DENSE_RANK()`, `LEAD()`, `LAG()`

## 5. Transaction Commands
- `START TRANSACTION` / `BEGIN`: Starts a transaction.
- `COMMIT`: Saves changes permanently.
- `ROLLBACK`: Undoes changes.
- `SAVEPOINT`: Sets a point to rollback to.
