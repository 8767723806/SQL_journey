# Day 11 - SQL Stored Procedures and Triggers (Practicals)

Here are the SQL queries I practiced today.

## Stored Procedure Practice
```sql
-- 1. Create a procedure to get all employees
DELIMITER //
CREATE PROCEDURE GetAllEmployees()
BEGIN
    SELECT * FROM employees;
END //
DELIMITER ;

-- Call it
CALL GetAllEmployees();

-- 2. Create a procedure with an input parameter
DELIMITER //
CREATE PROCEDURE GetEmployeesBySalary(IN min_salary INT)
BEGIN
    SELECT name, salary FROM employees WHERE salary >= min_salary;
END //
DELIMITER ;

-- Call it
CALL GetEmployeesBySalary(50000);



-- 3. First, create an audit table to store deleted records
CREATE TABLE employees_audit (
    id INT AUTO_INCREMENT PRIMARY KEY,
    employee_id INT,
    action_taken VARCHAR(50),
    action_time DATETIME
);

-- 4. Create a Trigger to automatically log when an employee is deleted
DELIMITER //
CREATE TRIGGER after_employee_delete
AFTER DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_audit(employee_id, action_taken, action_time)
    VALUES (OLD.id, 'Employee Deleted', NOW());
END //
DELIMITER ;

-- 5. Test the trigger (Delete an employee)
DELETE FROM employees WHERE id = 5;

-- 6. Check if the trigger logged the deletion in the audit table
SELECT * FROM employees_audit;
