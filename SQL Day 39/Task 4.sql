CREATE TABLE employees2(
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    salary INT
);

INSERT INTO employees2 (emp_name, salary) VALUES
('Kavi', 25000),
('Arun', 35000),
('Priya', 45000),
('Mani', 55000),
('Sita', 60000);
DELIMITER $$

CREATE PROCEDURE sp_salary_range2(
    IN min_salary INT,
    IN max_salary INT
)
BEGIN
    SELECT emp_id, emp_name, salary
    FROM employees2
    WHERE salary BETWEEN min_salary AND max_salary;
END $$

DELIMITER ;
call sp_salary_range2(30000,55000)