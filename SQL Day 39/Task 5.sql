CREATE TABLE students2 (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(100),
    phone VARCHAR(15)
);

INSERT INTO students2 (student_name, phone) VALUES
('Kavi', '9000000011'),
('Priya', '9000000022'),
('Arun', '9000000033');
delimiter $$
create procedure st_pd1(in p_phone varchar(15),in p_id int)
begin
update students2 set phone=p_phone where student_id=p_id;
end $$
delimiter ;
call st_pd1("9787964339",1);

select * from students2;