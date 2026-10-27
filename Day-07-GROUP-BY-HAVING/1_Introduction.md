# Day 7 - SQL GROUP BY and HAVING (Introduction)

Today we are learning two very powerful SQL clauses: `GROUP BY` and `HAVING`. These are essential for summarizing data and creating reports.

## What is GROUP BY?
The `GROUP BY` statement groups rows that have the same values into summary rows. It is almost always used with Aggregate Functions (like COUNT, MAX, MIN, SUM, AVG) to group the result-set by one or more columns.

## What is HAVING?
The `HAVING` clause was added to SQL because the `WHERE` keyword could not be used with aggregate functions. `HAVING` is used to filter the results *after* the grouping has been done.

## Difference between WHERE and HAVING
- **WHERE:** Filters individual rows *before* grouping.
- **HAVING:** Filters groups *after* grouping.
