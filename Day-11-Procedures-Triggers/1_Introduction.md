# Day 11 - SQL Stored Procedures and Triggers (Introduction)

Welcome to Day 11! Today we are learning about automation and code reusability in SQL using Stored Procedures and Triggers.

## What is a Stored Procedure?
A Stored Procedure is a prepared SQL code that you can save, so the code can be reused over and over again. 
- Instead of writing the same long query multiple times in your application, you write it once as a procedure in the database. 
- You can also pass parameters (inputs) to a Stored Procedure, just like a function in programming languages (like Python or Java). 
- **Benefits:** Faster execution, reduces network traffic, and improves security.

## What is a Trigger?
A Trigger is a special type of stored procedure that automatically runs (fires) when a specific event occurs in the database.
- The events are usually `INSERT`, `UPDATE`, or `DELETE` operations on a table.
- **Use Case:** Suppose you have an `employees` table. Whenever an employee is deleted, you want to automatically save their data into an `employees_audit` table. A Trigger does this automatically without you writing extra code!

## Why are they important?
They bring logic closer to the data. They automate tasks and prevent manual errors.
