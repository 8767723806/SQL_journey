-- Day 3: WHERE, AND, OR, NOT Notes

-- 1. WHERE Clause
SELECT * FROM students WHERE age > 20;

-- 2. AND Operator
SELECT * FROM students WHERE age > 20 AND city = 'Pune';

-- 3. OR Operator
SELECT * FROM students WHERE city = 'Mumbai' OR city = 'Delhi';

-- 4. NOT Operator
SELECT * FROM students WHERE NOT city = 'Pune';
