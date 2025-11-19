create database database_1;
use database_1; 
create table departmant (
id integer  primary key auto_increment,
name varchar(50),
description varchar(50)
); 
select * from departmant;
insert into departmant (name,description) values ("Keerthi","B.Sc Chemistry")
insert into departmant (name,description) values ("Aarthi","MCA")
insert into departmant (name,description) values ("Rahul","B.Com") 

-- Write a query to show only students from the users table.
create table users (
std_id integer primary key auto_increment,
std_name varchar(50),
subject varchar(10),
marks integer
);

insert into users (std_name,subject,marks) values ("Keerthi","Maths","100")
insert into users (std_name,subject,marks) values ("Aarthi","Maths","100")
insert into users (std_name,subject,marks) values ("Kavibalan","Maths","200")

select * from users;

-- Add a new column phone to users.

alter table users add phone integer;

update users set phone=63838850 where std_id=1;
update users  set phone=63838258 where std_id=2;
update users set phone=97879643 where std_id=3;

-- Write a JOIN query to list all students and the courses they are enrolled in.


-- Table 1

create table students(
cls_id int primary key auto_increment,
name varchar(50),
DOB date
);

insert into students (name,DOB) values ("Aarthi","2002-08-04")
insert into students (name,DOB) values ("Keerthi","2002-09-06")
insert into students (name,DOB) values ("Kavibalan","2004-07-05")

select * from students;

-- table 2

create table course(
crs_id int primary key auto_increment,
course text,
Duration text
);

insert into course (course,Duration) values ("Full stack","6 months")
insert into course (course,Duration) values ("Python","6 months")
insert into course (course,Duration) values ("Java","6 months")

select * from course;

select students.cls_id,students.name,students.DOB,course.course,course.Duration from students join course on students.cls_id=course.crs_id;
	
































