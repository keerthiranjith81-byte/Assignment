create database agre;
use agre;
CREATE TABLE emp1 (
    id INT PRIMARY KEY auto_increment,
    first_name VARCHAR(50),
    last_name VARCHAR(50),
    dep_id INT,
    salary decimal(10,2),
    hire_date DATE,
    active boolean
);
INSERT INTO emp1 (first_name, last_name, dep_id, salary, hire_date, active) VALUES
('virat','kolhi',3,100000,'2016-09-18',1),
('Arun', 'Kumar', 1, 45000, '2020-01-15', 1),
('Bala', 'Prasad', 2, 52000, '2021-03-10', 1),
('Chitra', 'Devi', 3, 48000, '2019-07-22', 1),
('Dinesh', 'Ravi', 1, 55000, '2022-02-05', 1),
('Elango', 'Sundar', 4, 60000, '2018-11-12', 0),
('Fathima', 'Begum', 2, 47000, '2021-06-18', 1),
('Gokul', 'Raj', 3, 51000, '2019-09-25', 1),
('Harish', 'Kannan', 4, 62000, '2022-01-22', 1),
('Indhu', 'Priya', 5, 43000, '2020-08-14', 1),
('Jagan', 'Murthy', 5, 57000, '2017-12-01', 0),

('Kavi', 'Balan', 1, 54000, '2021-05-19', 1),
('Lakshmi', 'Shree', 2, 45000, '2020-04-04', 1),
('Manoj', 'Das', 3, 49000, '2018-06-23', 0),
('Nithya', 'Renuka', 4, 61000, '2022-07-30', 1),
('Omkar', 'Sharma', 5, 52000, '2019-10-18', 1),
('Praveen', 'Kumar', 2, 56000, '2020-09-08', 1),
('Queena', 'Rose', 3, 47000, '2023-01-12', 1),
('Raghav', 'Mohan', 1, 58000, '2017-05-16', 0),
('Sneha', 'Reddy', 5, 44000, '2020-02-28', 1),
('Tamil', 'Selvan', 4, 63000, '2021-11-09', 1),
('Usha', 'Rani', 2, 46000, '2019-03-21', 1),
('Vijay', 'Karthik', 1, 59000, '2022-06-10', 1),
('Walter', 'Joseph', 3, 50000, '2020-12-19', 1),
('Xavier', 'Antony', 4, 62000, '2018-04-29', 0),
('Yamini', 'Kumari', 5, 45000, '2021-10-25', 1),
('Zahir', 'Ali', 2, 53000, '2019-08-13', 1),
('Akash', 'Gowda', 3, 51000, '2023-03-05', 1),
('Bhavani', 'Rao', 4, 64000, '2022-09-14', 1),
('Charan', 'Shetty', 1, 55000, '2018-02-11', 0),
('Divya', 'Menon', 5, 46000, '2020-07-07', 1);
select first_name,salary from emp1 where salary>60000;
select id,first_name,salary,hire_date from emp1 where hire_date between "2020-01-01" and "2022-01-01";
select * from emp1 where dep_id in(1,3,5);
select * from emp1 where active=0;
select first_name,salary from emp1 order by salary desc limit 5;
select dep_id,sum(salary) from emp1 group by dep_id;
select dep_id,count(*) as total_employees from emp1 group by dep_id having count(*)>6;
select sum(salary) as Sum_salary,avg(salary) as Avg_salary,
min(salary) as Min_salary,max(salary) as Max_salry from emp1
group by dep_id;
select * from emp1 limit 10 offset 10;
select salary from emp1 where salary   not between 50000 and 80000;