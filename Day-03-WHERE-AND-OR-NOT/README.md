# Day 3 - WHERE, AND, OR, NOT

Aaj maine SQL mein filtering conditions seekhi.

## Topics Covered
- WHERE clause (rows ko filter karne ke liye)
- AND operator (dono conditions sach honi chahiye)
- OR operator (koi ek condition sach honi chahiye)
- NOT operator (condition ko ulta karne ke liye)

## Example
```sql
SELECT * FROM students WHERE age > 18 AND city = 'Pune';
SELECT * FROM students WHERE city = 'Mumbai' OR city = 'Delhi';
SELECT * FROM students WHERE NOT city = 'Pune';

