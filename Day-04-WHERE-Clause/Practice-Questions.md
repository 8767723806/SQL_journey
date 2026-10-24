# Day 4 – SQL Practice Questions

## Question 1: Basic Filtering

Display all students who scored more than 80 marks.

```sql
SELECT *
FROM Students
WHERE Marks > 80;
```

## Question 2: AND Operator

Display students whose age is at least 21 and whose marks are greater than 75.

```sql
SELECT *
FROM Students
WHERE Age >= 21 AND Marks > 75;
```

## Question 3: BETWEEN Operator

Display students whose marks are between 70 and 90.

```sql
SELECT *
FROM Students
WHERE Marks BETWEEN 70 AND 90;
```

## Additional Practice

1. Display students who live in Shirpur.
2. Display students whose names start with R.
3. Display students who live in Muktainagar or Jalgaon.
4. Display students whose marks are not equal to 60.
5. Display students whose age is between 20 and 22.

## Learning Outcome

I learned how to filter records using WHERE, comparison operators, AND, OR, NOT, BETWEEN, IN, and LIKE.
