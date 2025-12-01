CREATE TABLE employees (
    emp_id INT AUTO_INCREMENT PRIMARY KEY,
    emp_name VARCHAR(100),
    department_id INT,
    salary DECIMAL(10,2)
);
INSERT INTO employees (emp_name, department_id, salary) VALUES
('Arun', 1, 45000),
('Priya', 2, 55000),
('Kavi', 1, 48000),
('Meena', 3, 60000),
('Ravi', 2, 52000);
delimiter $$
create procedure pd_emp(in p_id int)
begin
 select
 emp_name,department_id,salary
 from employees where emp_id=p_id;
end $$
delimiter ;
call pd_emp(2)