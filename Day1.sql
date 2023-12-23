/*case insensitive*/
CREATE Database LEC077;
USE LEC077; 
--creating a new table
create table student(
SID char(4),
Name varchar(25),
RollNo int,
Batch char(4)
);

--view table properties
exec sp_help 'student';

--inserting values to the table student
insert into student(SID, Name, RollNo, Batch)
values('CT12', 'Prabin', 12, '2077');

--altering the table contents
alter table student drop column RollNo;

select * from student
select Name, RollNo from student

create table teacher(
TID char(4),
Name varchar(20),
Faculty varchar(4)
);

insert into teacher(TID, Name, Faculty)
values('E100', 'AGM', 'BCT');

select * from teacher

alter table teacher
add salary real;

alter table teacher drop column salary;

--copy SID and Name attribute to new relation 'info_student'
select SID, Name
 into info_student
 from student;

select * from info_student

--delete all contents form info_student
truncate table info_student



insert into student(SID, Name, Batch)
values('CT01', 'Saubhagya', '2077'),
('CT02', 'Royal', '2077'),
('CT03', 'Sarthak', '2077'),
('CT04', 'Sudip', '2077'),
('CT05', 'Prabin', '2077');

truncate table student

select * from student


insert into teacher(TID, Name, Faculty)
values('ET02', 'PA', 'BCT'),
('ET03', 'Prabin', 'BCT'),
('ET04', 'Shivam', 'BCT'),
('ET05', 'Sairoj', 'BCT');


select * from teacher