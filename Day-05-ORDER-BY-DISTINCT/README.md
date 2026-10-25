# Day 5 – SQL ORDER BY and DISTINCT

## 1. What is ORDER BY?

The ORDER BY clause is used to sort records in ascending or descending order.

### Syntax

```sql
SELECT column_name
FROM table_name
ORDER BY column_name ASC;
```

## 2. Ascending Order (ASC)

ASC sorts data from smallest to largest or A to Z. It is the default sorting order.

Example:

```sql
SELECT *
FROM Students
ORDER BY Marks ASC;
```

This query displays students according to their marks, from lowest to highest.

## 3. Descending Order (DESC)

DESC sorts data from largest to smallest or Z to A.

Example:

```sql
SELECT *
FROM Students
ORDER BY Marks DESC;
```

This query displays students with the highest marks first.

## 4. Sorting by Name

```sql
SELECT *
FROM Students
ORDER BY Name ASC;
```

This query sorts student names alphabetically.

## 5. Sorting by Multiple Columns

We can sort records using more than one column.

```sql
SELECT *
FROM Students
ORDER BY City ASC, Marks DESC;
```

This query sorts students by city alphabetically and then sorts marks from highest to lowest within each city.

## 6. What is DISTINCT?

The DISTINCT keyword is used to return unique values and remove duplicates from the query result.

### Syntax

```sql
SELECT DISTINCT column_name
FROM table_name;
```

## 7. Example of DISTINCT

```sql
SELECT DISTINCT City
FROM Students;
```

This query displays each city only once.

## 8. DISTINCT with Multiple Columns

```sql
SELECT DISTINCT City, Age
FROM Students;
```


## 9. ORDER BY with DISTINCT

SELECT DISTINCT City
```



Today, I learned how to sort SQL records using ORDER BY and retrieve unique values using DISTINCT.- DISTINCT with multiple columns returns unique combinations.
## Learning Outcome

- Multiple columns can be used for sorting.
- DESC sorts in descending order.
- DISTINCT returns unique values.
- ASC sorts in ascending order.
- ORDER BY sorts records.
## 10. Key Takeaways
This query displays unique city names in alphabetical order.

ORDER BY City ASC;
FROM Students
```sql

