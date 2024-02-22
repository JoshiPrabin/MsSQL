use LEC077;

--1
select * from teacher,employee;

--2
select * from teacher as t,employee as e where t.TID=e.eid;

--3
select bl.bname,publication,author from booklist as bl, book as b where bl.bid=b.bid and publication='ekata';

--4
select * from bookissue
select t.Name, t.Faculty from teacher as t, employee as e, bookissue as b 
where t.TID=e.eid and e.eid=b.eid and dateofissue='01/01/2015'; 

select * from employee

select * from teacher

--5
select ename
from employee as e, teacher as t
where e.eid=t.TID and salary>10000 and Faculty='BCT';

--6
select name
from student as s,bookissue as b
where s.SID=b.sid and Name='dbms';

--7
select * from bookissue;
exec sp_help 'booklist';
alter table bookissue
add bid char(4);

select * from bookissue;
--8
update bookissue
set bid='B100'
where bname='dbms';

update bookissue
set bid='B101'
where bname='C++';

--9
select *
from employee as e,book as b,bookissue as bi
where e.eid=bi.eid and bi.bid=b.bid and price<2500;

--10
select name,bname
from teacher as t, employee as e, bookissue as bi
where t.TID=e.eid and e.eid=bi.eid and name like 'r%';

--11
update employee
set salary=salary*1.1;
select * from employee;

--12
update booklist
set bname='dbms'
where bname='database';

--13
update employee
set salary=salary*1.2
where salary<5000

--14
update employee
set salary= case when salary>20000 then
	salary*1.05
	else
	salary*1.2
	end;

--15
delete from employee where eid='E101';

--16
select Name, Faculty 
from teacher
where TID in(select eid from employee where dateofemployment='01/02/2011');

--17
select bname, author
from book 
where bid in(select bid from booklist where publication='Ekata');

--18
select name,batch
from student
where SID in(select SID from bookissue where dateofissue='02/01/2022');

--19
select Name
from teacher
where TID in(select eid from employee where eid in(select eid from bookissue));

--20
select Name
from teacher
where TID in(select eid from employee where eid in(select eid from bookissue where bname ='C++'));