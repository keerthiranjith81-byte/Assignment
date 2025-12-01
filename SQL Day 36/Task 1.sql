use kk;
CREATE TABLE persons (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50),
    birthdate DATE
);
insert into persons(name,birthdate)values("kavibalan","2020-09-08");
insert into persons(name,birthdate)values("Hari","2022-04-27");
insert into persons(name,birthdate)values("Irshath","2020-09-24");
insert into persons(name,birthdate)values("Prakash","2016-12-04");
insert into persons(name,birthdate)values("Harish","2012-06-08");

select name,year(birthdate) as Year_Birth,month(birthdate)as Month_birth,day(birthdate)as Date_birth from persons;

