CREATE TABLE employees1 (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary DECIMAL(10,2)
);
INSERT INTO employees1 (emp_name, salary) VALUES
('Arun', 45000),
('Priya', 55000),
('Kavi', 60000),
('Meena', 52000);
DELIMITER $$

CREATE PROCEDURE sp_get_highest_salary(OUT p_highest_salary DECIMAL(10,2))
BEGIN
    SELECT MAX(salary) INTO p_highest_salary
    FROM employees1;
END $$

DELIMITER ;
CALL sp_get_highest_salary(@max_sal);