-- question no 6 to 10
-- Extend the edu_platform database by adding a assignments table.
create database edu_platform;
use edu_platform;
create table assignments (
student_id int primary key auto_increment ,
student_name varchar(50),
subject_name varchar(50),
assignment_mark int
);
select * from assignments;
insert into assignments(student_id, student_name, subject_name, assignment_mark) values (101,"Rajesh","Maths",99)
insert into assignments(student_id, student_name, subject_name, assignment_mark) values (102,"Kavi","Maths",100)
insert into assignments(student_id, student_name, subject_name, assignment_mark) values (103,"Keerthi","Maths",98)
insert into assignments(student_id, student_name, subject_name, assignment_mark) values (104,"Harini","Maths",89)
insert into assignments(student_id, student_name, subject_na
me, assignment_mark) values (105,"Dharshika","Maths",79)
alter table assignments add lesson_id int;
update assignments set lesson_id = 1 where student_id = 101;
update assignments set lesson_id = 2 where student_id = 102;
update assignments set lesson_id = 1 where student_id = 103;
update assignments set lesson_id = 1 where student_id = 104;
update assignments set lesson_id = 2 where student_id = 105;
-- Create sample assignments and link them to lessons.
-- creating lesson table to link with the assignment table
create table lesson (
lesson_id int primary key auto_increment,
lesson_name varchar(50)
);
insert into lesson (lesson_name) values ('Maths - Algebra')
insert into lesson (lesson_name) values ('Maths - Trigonometry')
-- we are joing to lesson from both table by using join querry
select a.student_id,a.student_name,a.assignment_mark,l.lesson_name from assignments a join lesson l on a.lesson_id = l.lesson_id;
-- Build a query that lists all assignments for a course.
SELECT 
    a.student_id,
    a.student_name,
    a.assignment_mark,
    l.lesson_name
FROM assignments a
JOIN lesson l ON a.lesson_id = l.lesson_id
WHERE a.subject_name = 'Maths';
alter table assignments 
add constraint fk_assignments_lesson
foreign key (lesson_id)
references lesson(lesson_id);
-- Export the extended DB using mysqldump and restore it into a new DB.