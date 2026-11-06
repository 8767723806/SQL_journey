# Day 12 - Database Normalization (Important Notes)

Here are the key Normal Forms (NF) and their rules you must know for interviews.

## 1. First Normal Form (1NF)
- **Rule:** Each table cell should contain a single (atomic) value, and each record needs to be unique.
- **Meaning:** No arrays, lists, or multiple values in a single column. (e.g., A 'Phone Numbers' column should not have "12345, 67890". Create a separate table for phone numbers).

## 2. Second Normal Form (2NF)
- **Rule:** The table must be in 1NF. And all non-key columns must fully depend on the entire Primary Key.
- **Meaning:** This applies to tables with Composite Primary Keys (Primary key made of 2 or more columns). If a column depends only on a part of the primary key, it violates 2NF. (Remove Partial Dependency).

## 3. Third Normal Form (3NF)
- **Rule:** The table must be in 2NF. And there should be no transitive dependencies.
- **Meaning:** A non-key column should NOT depend on another non-key column. 
- **Example:** If a table has `Employee_ID`, `Department_ID`, and `Department_Name`. Here, `Department_Name` depends on `Department_ID`, not directly on `Employee_ID`. So, move `Department_Name` to a separate `Departments` table. (Remove Transitive Dependency).

## Key Takeaways
- **1NF:** Fixes Data Structure (Atomicity).
- **2NF:** Fixes Partial Dependency (Composite Key).
- **3NF:** Fixes Transitive Dependency (Non-key depending on Non-key).
