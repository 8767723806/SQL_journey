# Day 11 - SQL Stored Procedures and Triggers (Important Notes)

Here are the key concepts, syntax, and rules to remember.

## 1. Stored Procedures: Important Points
- **Syntax (MySQL):**
```sql
DELIMITER //
CREATE PROCEDURE GetEmployeesByDept(IN dept_name VARCHAR(50))
BEGIN
    SELECT * FROM employees WHERE department = dept_name;
END //
DELIMITER ;


CREATE TRIGGER before_employee_delete
BEFORE DELETE ON employees
FOR EACH ROW
BEGIN
    INSERT INTO employees_audit (id, name, action)
    VALUES (OLD.id, OLD.name, 'Deleted');
END;
