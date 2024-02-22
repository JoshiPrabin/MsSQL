use LEC077;

--1
select ename, faculty, salary
from teacher join employee on tid=eid;

--2
select *
from booklist left join book on booklist.bid=book.bid;

--3
select *
from student full join bookissue on student.sid=bookissue.sid;

--4
select employee.eid, ename
from employee join bookissue on employee.eid=bookissue.eid and bname='database';

--5
select book.bname, book.bid, author
from book join booklist on book.bid=booklist.bid and publication='ekata';

--6
select ename, salary
from employee
where ename like '%s' and ename like '%ni%';

--7
select ename as Employee from employee union select name from teacher;

--8
select ename as EmployeeName from employee except select name from teacher;

--9
create view employee_view
as
select eid,ename,salary
from employee;
select * from employee_view;

--10
insert into employee_view values('E200', 'Shyame',25000);

--11
create view employee_info
as
select ename, faculty, salary
from employee join teacher on eid=TID;
select * from employee_info;

--12
delete from employee_view
where salary<5000;