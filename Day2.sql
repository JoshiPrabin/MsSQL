use LEC077;

--create employee table
create table employee(
eid char(4),
ename varchar(25),
dateofemployment datetime default '12/1/2010',
salary numeric(10,2)
primary key(eid)
);

alter table employee
add constraint employee_default default '12/1/2010' for dateofemployment;

alter table employee
alter column ename varchar(50) not null;

select * from employee

create table booklist(
bid char(4),
bname varchar(25),
publication varchar(50) not null,
primary key(bid)
);

create table book(
bid char(4),
bname varchar(25),
author varchar(25),
price decimal(10,2) check(price<5000),
foreign key(bid) references booklist(bid)
on delete cascade on update cascade
);

insert into employee(eid, ename, dateofemployment, salary)
values('E100', 'Ram', '2/2/2010', 10000),
('E101', 'Sita', default, 200000),
('E102', 'Hari', default, 20000),
('E103', 'Geeta', '3/5/2023', 30000);

select * from employee

insert into booklist(bid, bname, publication)
values('B100', 'DBMS', 'Pearson'),
('B101', 'C++', 'Ekata');

insert into book(bid, bname, author, price)
values('B100', 'DBMS', 'Silverdatz', 4000),
('B101', 'C++', 'Dawadi', 4500),
('B200', 'OS', 'Schand', 3000);

select * from booklist

select * from book

--altering student table
alter table student
alter column SID char(4) not null;

alter table student
add constraint Pk_student primary key(SID);

--altering teacher table
alter table teacher
add constraint fk_teacher foreign key(TID) references employee(eid)
on delete cascade on update cascade;

select * from employee; select * from teacher;

alter table teacher
add TID char(4);
insert into teacher(TID)
values('E100'),('E101'),('E102'),('E103');

create table bookissue(
eid  char(4),
sid char(4),
bname varchar(50),
dateofissue datetime
foreign key(eid) references employee
on delete cascade on update cascade,
foreign key(sid) references student
on delete cascade on update cascade
);

insert into bookissue(eid, sid, bname, dateofissue )
values('E100', null, 'DBMS', 1/1/2021),
(null, 'CT01', 'C++', 2/2/2023);

