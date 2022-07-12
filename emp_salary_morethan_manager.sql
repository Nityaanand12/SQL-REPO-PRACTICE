create table emp_details (
id number primary key,
firstname varchar2(20) not null,
lastname varchar2(20) not null,
manager number,
salary number(8));

desc emp_details;

select * from emp_details;

insert all
into emp_details values (4, 'nitya', 'p', 1, 40000)
into emp_details values (5, 'ravishankar', 'p', 2, 30000) 
into emp_details values (6, 'nokia', 'p', 3, 20000)
into emp_details values (7, 'samsung', 'p', 1, 20000) 
into emp_details values (8, 'vivo', 'p', 2, 20000)
into emp_details values (9, 'oppo', 'p', 3, 30000) 
into emp_details values (10, 'onenote', 'p', 1, 20000)
into emp_details values (11, 'galaxy', 'p', 3, 50000) 
select 1 from dual;

select * from emp_details;

select E1.id, E1.firstname, E1.salary, E1.manager from emp_details E1 
where E1.manager is not null and E1.salary > (select e2.salary from emp_details e2 where e1.id <> e2.id and e1.manager = e2.id)
