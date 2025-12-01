CREATE TABLE students_1 (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    marks INT
);
INSERT INTO students_1 (student_name, marks) VALUES
('Arun', 75),
('Priya', 92),
('Kavi', 88),
('Ravi', 60),
('Meena', 95),
('John', 82);
create view vw_student_1 as
select student_name,marks from students_1 where marks>80;
select * from vw_student_1;