# Day 10 - SQL Views and Indexes (Introduction)

Welcome to Day 10! Today we are learning about two database objects that help in performance and security: Views and Indexes.

## What is a View?
A View is a virtual table based on the result-set of an SQL statement. It contains rows and columns, just like a real table, but it does not store the data itself. The data is dynamically generated when the view is accessed. 
- **Use Case:** If you have a complex query (like multiple JOINS) that you run every day, you can save it as a View. You can also use Views to hide sensitive data (like passwords) from certain users.

## What is an Index?
An Index is a data structure (like a pointer) that improves the speed of data retrieval operations on a database table. It works just like the index at the back of a book. Instead of scanning the whole book (table), the database jumps directly to the page (row) it needs.
- **Use Case:** If your table has millions of records and you frequently search by a specific column (like email or username), creating an Index on that column makes the search lightning fast.

## Why are they important?
Views simplify complex queries and provide security. Indexes drastically improve the speed of SELECT queries (though they can slow down INSERT/UPDATE).
