# Day 12 - Database Normalization (Practicals)

Here are the step-by-step examples of how to normalize a messy table.

## The Bad Design (Unnormalized Table)
```text
Table: Employee_Sales
------------------------------------------------------------------
Emp_ID | Emp_Name | Skills         | Sales_Items          | Manager
------------------------------------------------------------------
101    | Rahul    | SQL, Java      | Laptop, Mouse        | Mr. Patil
102    | Priya    | Python, SQL    | Keyboard             | Mr. Patil

Applying 1NF (Make columns atomic)
Table: Employee_Sales_1NF
Emp_ID | Emp_Name | Skills | Sales_Items | Manager
---------------------------------------------------
101    | Rahul    | SQL    | Laptop      | Mr. Patil
101    | Rahul    | Java   | Laptop      | Mr. Patil
101    | Rahul    | SQL    | Mouse       | Mr. Patil
102    | Priya    | Python | Keyboard    | Mr. Patil
102    | Priya    | SQL    | Keyboard    | Mr. Patil

Applying 2NF (Remove Partial Dependency)
Here, Emp_Name depends only on Emp_ID, not on Skills or Sales_Items. Let's break it down:

sql
-- Table 1: Employees
Emp_ID | Emp_Name | Manager
---------------------------
101    | Rahul    | Mr. Patil
102    | Priya    | Mr. Patil

-- Table 2: Employee_Skills
Emp_ID | Skills
---------------
101    | SQL
101    | Java
102    | Python
102    | SQL

-- Table 3: Employee_Sales
Emp_ID | Sales_Items
-----------------
101    | Laptop
101    | Mouse
102    | Keyboard

Applying 3NF (Remove Transitive Dependency)
In Table 1, Manager depends on Emp_ID, but ideally, a Manager belongs to a separate Department/Management table. But a simpler example:
If we had a table: Emp_ID, Emp_Name, Zip_Code, City.
City depends on Zip_Code, not Emp_ID. To fix this:

sql
-- Main Table
Emp_ID | Emp_Name | Zip_Code

-- Zip Table
Zip_Code | City
