CREATE TABLE students_2 (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100)
);

CREATE TABLE marks (
    mark_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(50),
    marks INT,
    FOREIGN KEY (student_id) REFERENCES students(student_id)
);
INSERT INTO students_2 (student_name) VALUES
('Arun'),
('Priya'),
('Kavi'),
('Meena');

INSERT INTO marks (student_id, subject, marks) VALUES
(1, 'Maths', 78),
(1, 'Science', 84),
(2, 'Maths', 91),
(3, 'Science', 87),
(4, 'Maths', 95);


create view vw_join as
select s.student_name,m.subject,m.marks from
students_2 s join marks m on s.student_id=m.student_id;
select * from vw_join;