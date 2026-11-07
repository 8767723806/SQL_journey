# Day 13 - SQL Window Functions and Transactions (Important Notes)

Here are the key concepts, syntax, and rules to remember.

## 1. Window Functions: Important Points
- **Syntax:** `Function_Name() OVER (PARTITION BY column ORDER BY column)`
- **PARTITION BY:** It divides the result set into partitions (groups) where the function is applied. (Similar to GROUP BY, but it doesn't collapse rows).
- **ORDER BY:** Used inside the OVER() clause to order rows within each partition.
- **Common Window Functions:**
  - `ROW_NUMBER()`: Gives a unique sequential number.
  - `RANK()`: Gives rank with gaps for ties (1, 2, 2, 4).
  - `DENSE_RANK()`: Gives rank without gaps (1, 2, 2, 3).
  - `LEAD()` / `LAG()`: Accesses data from next/previous rows.

## 2. Transactions: Important Points
- **Commands used in Transactions:**
  - `COMMIT`: Saves all the changes made in the transaction permanently.
  - `ROLLBACK`: Undoes all changes made in the current transaction.
  - `SAVEPOINT`: Sets a point within a transaction to which you can later roll back.
- **ACID Properties:**
  - **A**tomicity: All or nothing.
  - **C**onsistency: Data remains valid according to rules.
  - **I**solation: Transactions don't interfere with each other.
  - **D**urability: Once committed, data is saved permanently.
