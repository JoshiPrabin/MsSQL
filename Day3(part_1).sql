use LEC077;

-- displaying eid and ename from employee table whose salary is greater than 10000
select eid, ename from employee where salary>10000;

-- displaying all records from book table whose price is between 2500 and 5000
select * from book where price between 2500 and 5000;

-- displaying all information from booklist where publication name starts with E
select * from booklist where publication like 'E%';

-- displaying all information from employee table whose name ends with ta
select * from employee where ename like '%ta';

-- displaying all records from book table where book name exactly consist of 4 characters
select * from book where bname like '____';

--displaying id, name and salary from employee table where employe name starts with S and salary > 10000
select * from employee where ename like 'S%' and salary>10000;

-- displaying all records from book table where either book id lies in range B001 to B999 or price range in 1000 to 2500
select * from book where (bid between 'B001' and 'B999') or (price between 1000 and 2500);

-- displaying book number and book name where booklist must not contain book id with number B003
select bid, bname from booklist where (bid != 'B003');
