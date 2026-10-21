-- Day 2: Table Creation

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(100) NOT NULL,
    age INT,
    email VARCHAR(100) UNIQUE,
    admission_date DATE
);

-- Insert sample records
INSERT INTO students
(student_id, student_name, age, email, admission_date)
VALUES
(1, 'Amit', 21, 'amit@example.com', '2026-06-10'),
(2, 'Priya', 22, 'priya@example.com', '2026-06-11'),
(3, 'Rahul', 20, 'rahul@example.com', '2026-06-12');

-- View records
SELECT * FROM students;
