use LEC077;

--1
select *
from employee
order by ename desc;

--2
select bname,publication
from booklist
order by bname asc;

--3
select top 3 *
from teacher
order by Name desc;

--4
select sum(salary) as sum_dalary
from employee;

--5
select min(salary) as min_salary
from employee;

--6
select avg(price) as average_price, author
from book
group by author;

--7
select publication, count(bid) as no_of_books
from booklist
group by publication;

--8
select bid, bname
from book
where price > (select avg(price) from book);

--9
select bid, bname, author
from book
where author like 's%'
order by author asc;

--10
select Name, bname
from teacher as t, bookissue as bi
where TID in(select eid from employee where salary=(select max(salary) from employee)) and bi.eid in(select eid from employee);

--11
select author, count(author) as No_of_books
from book
group by author
having count(author)>1;