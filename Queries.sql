use mydatabase;

select * from dept;

select * from emp;

select * from emp order by job asc limit 3,5;
select distinct job, deptno from emp;
select distinct ename from emp;
select * from emp where deptno = 10;
select * from emp where deptno = 10 order by ename;
select * from emp where deptno = 10 and deptno = 20;
select * from emp where deptno = 10 or deptno = 20;
select * from emp where job = 'clerk' or job = 'manager' or job = 'analyst';
select * from emp where comm is null;
select * from emp where ename = 'blake';
select * from emp where sal between 1250 and 3000;
select * from emp where sal between 1500 and 2500;
select * from emp where ename like 's%h';
select * from emp where ename like '_____';
select * from emp where sal like '12%';
select job, count(*) from emp group by job;
select distinct job, deptno, count(*) from emp group by job, deptno;
select deptno, count(empno) from emp group by deptno;
select job, count(deptno) from emp group by job;
select job, count(deptno) from emp group by job having count(*)<=3;

select job, count(deptno) from emp
group by job
having count(*)>=3;

select job, count(deptno) from emp
group by job
with rollup;

select job, deptno, count(*) from emp
group by job, deptno
with rollup;

select deptno, sum(sal) from emp
group by deptno;

select job, min(sal) from emp
group by job;

select deptno, count(*) from emp
group by deptno
having count(*)>=3;

select job, deptno, count(*) from emp
group by job, deptno;

select * from emp where sal < 
(select sal from emp where ename = 'jones');

select deptno, job, count(*)
from emp
group by deptno, job with rollup
having grouping(deptno, job) = 1;

select emp.ename, dept.dname, dept.loc from emp
inner join dept
on dept.deptno = emp.deptno;

select * from emp
where deptno
in (select deptno from dept where dname = 'sales');

select * from emp
inner join dept
on emp.deptno = dept.deptno
where dname = 'sales';

select * from emp
left join dept
on emp.deptno = dept.deptno;

select * from emp
right join dept
on emp.deptno = dept.deptno;

select d.deptno from dept d
inner join emp e
on e.deptno = d.deptno
where e.mgr is null;

create view emp_comm as
select * from emp
where comm is not null;

select * from emp_comm;

with recursive numbers as(
select 1 as num
union all
select num + 1
from numbers
where num < 10
)
select * from numbers;


with Emp_name as(
select ename from emp
)
select * from Emp_name;

with salary as(
select ename, sal from emp
where sal<1000
)
select * from salary;