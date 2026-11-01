# Day 10 - SQL Views and Indexes (Important Notes)

Here are the key concepts and rules to remember.

## 1. Views: Important Points
- **Syntax:** `CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;`
- Views do not store data physically; they always fetch fresh data from the base tables.
- You can update data through a View, but only if the View is based on a single table and does not contain aggregate functions, DISTINCT, or GROUP BY.
- **Drop a View:** `DROP VIEW view_name;`

## 2. Indexes: Important Points
- **Syntax:** `CREATE INDEX index_name ON table_name (column_name);`
- Indexes are created on columns that are frequently used in `WHERE`, `JOIN`, or `ORDER BY` clauses.
- **Primary Key & Unique Constraint:** When you set a Primary Key or Unique constraint, SQL automatically creates an Index for you.
- **Disadvantage:** While Indexes make `SELECT` (reading) faster, they make `INSERT`, `UPDATE`, and `DELETE` (writing) slightly slower because the index must be updated every time data changes.
- **Composite Index:** An index created on multiple columns.

