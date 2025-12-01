CREATE TABLE students (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    roll_no INT
);
INSERT INTO students (name, roll_no)
VALUES
('Kavi', 1),
('Arun', 25),
('Meena', 356),
('Ravi', 1200);
select 
name,
roll_no,
lpad(roll_no,5,'0') as formated_roll_no
from students;