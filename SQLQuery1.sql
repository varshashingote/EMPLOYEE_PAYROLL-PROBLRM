-----create database----UC1------

create  database PayRollService248
use PayRollService248

------create Table---UC2-----------
create table Employee_PayRoll(id int identity(1,1) primary key,
Name varchar(300),
Salary float,
StartDate date
)


----------insert query ---UC3---------
insert into Employee_PayRoll values('Varsha',87321,'2013-02-01');
insert into Employee_PayRoll values('Vasu',56671,'2015-05-01');
insert into Employee_PayRoll values('Suraj',86781,'2017-02-01');
insert into Employee_PayRoll values('rani',9981,'2019-02-01');
insert into Employee_PayRoll values('Varsha',87321,getdate());


--------select----UC4------------------
select * from Employee_PayRoll;
select Name,Id from Employee_PayRoll;



--------perticular_Empinfo----UC5------------
select *from Employee_PayRoll where Name='varsha';
select * from Employee_PayRoll where StartDate between '2013-01-01' and getdate();





--------create Column---UC6-----------------------
alter table Employee_PayRoll add Gender char(1);
update Employee_PayRoll set Gender='F'


--------SUMFunction-----UC7---------------------
update Employee_PayRoll set Gender='M'where Name='suraj';
select * from Employee_PayRoll;
select Count(ID) As NumberOfEmployee from Employee_PayRoll;
select Count (Id) AS NumberofEmployee from Employee_PayRoll Group by Gender;
select Sum(Salary) As totalsalary from Employee_PayRoll
select sum(salary) As totalSalary ,Gender from Employee_PayRoll Group by Gender;
select Max(salary) As MaxSalary from Employee_PayRoll Group by Gender
select Min(Salary) AS MinSalary from Employee_PayRoll 
SELECT AVG(Salary) as Average FROM Employee_PayRoll WHERE Gender='F' GROUP BY Gender;
SELECT AVG(Salary) as Average FROM Employee_PayRoll WHERE Gender='M' GROUP BY Gender;
select* from Employee_PayRoll;


---------------------UC8--------------------
-----Extending employee_payroll table-----------
ALTER TABLE Employee_payroll ADD Phone_Number varchar(20);
------Adding column with DEFAULT value-----
ALTER TABLE Employee_payroll ADD Emp_Address varchar(20) DEFAULT 'INDIA';
ALTER TABLE Employee_payroll ADD Emp_DEPT varchar(10)not null DEFAULT 'HR';
INSERT INTO employee_payroll VALUES('Swati','23456','24-aug-2022','F','9833678738','pune',DEFAULT);
INSERT INTO employee_payroll VALUES('Sanket','34000','23-feb-2019','M','9833678538',DEFAULT,DEFAULT);
select*from Employee_PayRoll;
