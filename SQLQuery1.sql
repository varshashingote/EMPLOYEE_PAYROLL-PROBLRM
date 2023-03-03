-----create database----UC1------

create  database PayRollService248
use PayRollService248

------create Table---UC2-----------
create table Employee_PayRoll(id int identity(1,1) primary key,
Name varchar(300),
Salary float,
StartDate date
)