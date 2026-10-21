-- Day 2: SQL Data Types

-- Numeric Data Types
CREATE TABLE numeric_examples (
    id INT,
    age INT,
    salary DECIMAL(10,2)
);

-- Character Data Types
CREATE TABLE text_examples (
    name VARCHAR(100),
    gender CHAR(1),
    description TEXT
);

-- Date and Time Data Types
CREATE TABLE date_examples (
    birth_date DATE,
    login_time TIME,
    created_at TIMESTAMP
);

-- Display table structure
-- MySQL syntax:
DESCRIBE numeric_examples;
DESCRIBE text_examples;
DESCRIBE date_examples;
