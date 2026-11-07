# Day 13 - SQL Window Functions and Transactions (Introduction)

Welcome to Day 13! Today we are learning two powerful advanced features of SQL: Window Functions and Transactions.

## What are Window Functions?
A Window Function performs a calculation across a set of table rows that are somehow related to the current row. Unlike aggregate functions (like SUM or AVG) which collapse rows into a single output, Window Functions **retain the individual rows** in the result. 
- **Use Case:** If you want to rank employees by salary within each department, you use a Window Function (`RANK()`). The department is the "window" over which the calculation happens.

## What are Transactions?
A Transaction is a single unit of work that consists of one or more SQL statements. The main rule of a transaction is **ACID** (All or Nothing). 
- **Use Case:** Transferring money from Account A to Account B. This involves two steps: Subtract from A and Add to B. If the system crashes after step 1, Account A loses money and Account B never gets it. A Transaction ensures that either BOTH steps happen, or NEITHER happens.

## Why are they important?
Window Functions allow complex reporting and analytics without writing messy subqueries. Transactions protect the integrity of your data from errors or crashes.
