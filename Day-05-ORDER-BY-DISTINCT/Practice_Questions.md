# Day 5 – SQL Practice Questions

## Question 1: Ascending Order

Display all students sorted by marks from lowest to highest.

```sql
SELECT *
FROM Students
ORDER BY Marks ASC;
```

## Question 2: Descending Order

Display all students sorted by marks from highest to lowest.

```sql
SELECT *
FROM Students
ORDER BY Marks DESC;
```

## Question 3: DISTINCT

Display all unique cities from the Students table.

```sql
SELECT DISTINCT City
FROM Students;
```

## Additional Practice Questions

1. Display students in alphabetical order by name.
2. Display students sorted by age in descending order.
3. Display unique student ages.
4. Display unique cities in alphabetical order.
5. Sort students by city in ascending order and marks in descending order.
6. Display unique combinations of city and age.

## Learning Outcome

I practiced sorting records using ORDER BY and finding unique values using DISTINCT.
