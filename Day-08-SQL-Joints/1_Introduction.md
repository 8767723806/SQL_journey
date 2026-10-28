# Day 8 - SQL JOINS (Introduction)

Welcome to Day 8! Today we are learning about SQL `JOINS`. 

## What is a JOIN?
A `JOIN` clause is used to combine rows from two or more tables, based on a related column between them. In real-world databases, data is never stored in just one table; it's divided into multiple tables to reduce redundancy. To get a complete picture, we use JOINS.

## Types of JOINS
1. **INNER JOIN:** Returns records that have matching values in both tables.
2. **LEFT JOIN (LEFT OUTER JOIN):** Returns all records from the left table, and the matched records from the right table. If there is no match, the result is NULL from the right side.
3. **RIGHT JOIN (RIGHT OUTER JOIN):** Returns all records from the right table, and the matched records from the left table.
4. **FULL JOIN (FULL OUTER JOIN):** Returns all records when there is a match in either left or right table.

## Why is it important?
Without JOINS, we would have to write complex logic in our application code to fetch data from multiple tables. JOINS allow us to do this efficiently right inside the database.
