# Day 4 – SQL WHERE Clause

## 1. What is the WHERE Clause?

The WHERE clause is used to filter records based on a specific condition.

## 2. Syntax

```sql
SELECT column_name
FROM table_name
WHERE condition;
```

## 3. Example Table: Students

| StudentID | Name | Age | Marks | City |
|---|---|---|---|---|
| 1 | Rohini | 21 | 90 | Muktainagar |
| 2 | Priya | 22 | 75 | Shirpur |
| 3 | Sneha | 20 | 85 | Bhusawal |
| 4 | Amit | 21 | 60 | Shirpur |
| 5 | Rahul | 23 | 95 | Jalgaon |

## 4. Using WHERE

Find students who scored more than 80 marks.

```sql
SELECT *
FROM Students
WHERE Marks > 80;
```

## 5. Comparison Operators

- `=` Equal to
- `>` Greater than
- `<` Less than
- `>=` Greater than or equal to
- `<=` Less than or equal to
- `<>` Not equal to

Example:

```sql
SELECT *
FROM Students
WHERE Age >= 21;
```

## 6. Using AND

Both conditions must be true.

```sql
SELECT *
FROM Students
WHERE Marks > 80 AND Age >= 21;
```

## 7. Using OR

At least one condition must be true.

```sql
SELECT *
FROM Students
WHERE City = 'Shirpur' OR Marks > 90;
```

## 8. Using NOT

NOT reverses a condition.

```sql
SELECT *
FROM Students
WHERE NOT City = 'Shirpur';

```

IN matches any value from a specified list.

```sql
FROM Students

## 11. Using LIKE


SELECT *
WHERE Name LIKE 'R%';
```
This query finds names starting with R.

## 12. Key Takeaways

- WHERE filters records based on conditions.
- AND requires all conditions to be true.
- OR requires at least one condition to be true.
- NOT reverses a condition.
- BETWEEN checks a range.
- IN matches values from a list.
- LIKE searches for patterns.

**Day 4 Goal:** Learn to filter data using the WHERE clause and its operators.
FROM Students
```sql
LIKE searches for a specified pattern.
```
WHERE City IN ('Shirpur', 'Jalgaon');
SELECT *
## 10. Using IN

WHERE Marks BETWEEN 70 AND 90;
```sql
FROM Students
SELECT *

BETWEEN selects values within a range, including both boundaries.

## 9. Using BETWEEN

