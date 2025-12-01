create database day35;
use day35;
CREATE TABLE departments (
  dept_id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  location VARCHAR(100)
);
CREATE TABLE employees (
  emp_id INT AUTO_INCREMENT PRIMARY KEY,
  first_name VARCHAR(50),
  last_name VARCHAR(50),
  email VARCHAR(150),
  phone VARCHAR(50),         
  emp_code VARCHAR(10),      
  hire_date DATE,
  last_login DATETIME,
  notes TEXT,
  dept_id INT,
  salary DECIMAL(10,2),
  active BOOLEAN DEFAULT 1,
  foreign key (dept_id) references departments (dept_id)
  );
   CREATE TABLE customers (
  customer_id INT AUTO_INCREMENT PRIMARY KEY,
  company_name VARCHAR(200),
  contact_name VARCHAR(100),
  contact_email VARCHAR(150),
  address VARCHAR(300),
  created_at DATETIME
);
INSERT INTO departments (name, location) VALUES
('Engineering','Bengaluru'),
('HR','Mumbai'),
('Sales','Delhi'),
('Marketing','Pune'),
('Finance','Hyderabad');

INSERT INTO employees (first_name,last_name,email,phone,emp_code,hire_date,last_login,notes,dept_id,salary,active) VALUES
('Asha','Patel','  ASHA.PATEL@example.com ','+91-80-1234-5678','E1', '2022-03-01','2024-11-20 09:12:30',' new hire ',1,70000,1),
('Rahul','Mehra','rahul.mehra@EXAMPLE.com','(080) 1234 5679','E02', '2021-07-10','2024-11-18 18:05:00','On probation',1,82000,1),
('Karan','Singh','karan.singh@example.com','080.1234.5680',' 003','2019-11-12','2024-10-02 08:00:00',' senior',1,95000,1),
('Sneha','Desai','sneha.desai@example.com','+91 80 1234 5681','4','2020-04-15','2024-09-30 12:00:00',' remote ',1,60000,1),
('Vikram','Rao',' vikram.rao@example.com  ','080-1234-5682','005','2018-08-05','2024-11-21 07:45:00','on leave',1,78000,1),
('Priya','Iyer','priya.iyer@example.com','+918012345683','E006','2023-01-10','2024-11-21 10:10:10',' probation ',1,88000,1),

('Sima','Roy','SIMa.Roy@example.com','(022)-555-0100','HR1','2020-11-05','2024-11-20 11:20:00',' HR lead',2,50000,1),
('Anita','Kapoor','anita.kapoor@example.com','022 555 0101','002','2022-06-20','2024-11-19 09:00:00','',2,52000,1),
('Pooja','Seth','pooja.seth@example.com','022.555.0102','003','2021-02-17','2024-11-18 08:00:00',' part-time ',2,48000,1),
('Deepak','Chauhan','deepak.chauhan@example.com','+91-22-555-0103','004','2019-03-11','2024-11-16 16:45:00','inactive',2,55000,0),
('Farah','Qureshi','farah.qureshi@example.com','+91 22 5550 104','005','2023-02-18','2024-11-17 09:30:00','new',2,54000,1),

('Arjun','Sharma','arjun.sharma@example.com','+91-11-7000-1001','S1','2023-01-25','2024-11-15 17:45:00',' remote ',3,45000,1),
('Nisha','Verma','nisha.verma@example.com','01170001002','S02','2021-04-01','2024-11-19 07:30:00',' top performer ',3,58000,1),
('Sameer','Khan','sameer.khan@example.com','011-7000-1003','003','2018-12-15','2024-10-01 10:00:00','',3,62000,1),
('Yusuf','Ali','yusuf.ali@example.com','011.7000.1004','004','2020-05-30','2024-08-12 09:15:00',' on leave ',3,53000,0),
('Tina','Mathew','tina.mathew@example.com','+91 11 70001005','005','2019-09-14','2024-11-20 12:44:00','sales ace',3,65000,1),

('Meera','Joshi','meera.joshi@example.com','(020)3000-2001','M01','2019-06-21','2024-11-20 08:30:00','marketing',4,70000,1),
('Aditya','Shetty','aditya.shetty@example.com','02030002002','M2','2022-01-11','2024-11-18 21:00:00','campaign lead',4,72000,1),
('Kavya','Nair','kavya.nair@example.com','020.3000.2003','003','2021-03-19','2024-11-17 09:00:00','',4,69000,1),
('Harish','Dutta','harish.dutta@example.com','020-3000-2004','004','2023-07-10','2024-11-20 14:05:00','new join',4,64000,1),
('Payal','Rathod','payal.rathod@example.com','+91 20 30002005','005','2020-10-28','2024-11-21 08:00:00','',4,61000,0),

('Neha','Kulkarni','neha.kulkarni@example.com','040-4000-3001','F1','2019-12-12','2024-11-20 09:50:00','finance',5,80000,1),
('Sunil','Borkar','sunil.borkar@example.com','04040003002','F02','2020-07-01','2024-11-19 08:40:00','',5,82000,1),
('Divya','Jain','divya.jain@example.com','040.4000.3003','003','2021-11-17','2024-11-16 11:30:00','',5,77000,1),
('Manish','Goyal','manish.goyal@example.com','+91-40-4000-3004','004','2022-04-25','2024-11-21 06:55:00','',5,83000,1),
('Bhavna','Arora','bhavna.arora@example.com','040-4000-3005','005','2023-03-18','2024-11-20 10:10:00','on leave',5,76000,1),
('Kishor','Mahadevan','kishor.mah@example.com','04040003006','006','2018-05-20','2024-11-10 12:00:00','retired',5,69000,0);
  
INSERT INTO customers (company_name, contact_name, contact_email, address, created_at) VALUES
('Alpha Solutions','  Ramesh Kumar  ','ramesh.k@example.com','  12 Green St, Bengaluru  ','2024-06-10 10:00:00'),
('Beta Retail','Priya Sharma','PRIYA.SHARMA@example.com','Plot-45,  Industrial Area, Pune','2024-07-01 11:25:00');

select 
first_name,
year(hire_date) as Year,
month(hire_date) as Month from employees;