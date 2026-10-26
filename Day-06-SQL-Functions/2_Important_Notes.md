# Day 6 - SQL Functions (Important Notes)

Here are the detailed notes for the functions we learned today.

## 1. Aggregate Functions
- `COUNT()` : Returns the number of rows.
- `SUM()`   : Returns the total sum of a numeric column.
- `AVG()`   : Returns the average value of a numeric column.
- `MIN()`   : Returns the smallest value.
- `MAX()`   : Returns the largest value.
*Note: Aggregate functions ignore NULL values (except COUNT(*)).*

## 2. String Functions
- `UPPER()`     : Converts text to uppercase.
- `LOWER()`     : Converts text to lowercase.
- `LENGTH()`    : Returns the length of a string.
- `CONCAT()`    : Joins two or more strings.
- `SUBSTRING()` : Extracts part of a string.
- `TRIM()`      : Removes leading/trailing spaces.

## 3. Numeric Functions
- `ROUND()` : Rounds a number to specified decimals.
- `ABS()`   : Returns absolute value.
- `CEIL()`  : Rounds up to nearest integer.
- `FLOOR()` : Rounds down to nearest integer.

## 4. Date Functions
- `NOW()`         : Returns current date and time.
- `CURDATE()`     : Returns current date.
- `DATEDIFF()`    : Returns difference between two dates.
- `DATE_FORMAT()` : Formats a date.

## Golden Rules
- Always use aliases (`AS`) when using functions to make columns readable.
- Functions can be combined with `GROUP BY` and `HAVING` for powerful reports.
