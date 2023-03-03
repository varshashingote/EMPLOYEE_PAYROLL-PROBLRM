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





