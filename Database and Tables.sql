use mydatabase;

-- Employee Table
CREATE TABLE emp (
empno int NOT NULL,
ename varchar(10) not NULL,
job varchar(15) not NULL,
mgr int default NULL,
hiredate date not NULL,
sal int not NULL,
comm int default NULL,
deptno int not NULL,
primary key(empno),
foreign key(deptno)
references dept(deptno)
);

-- Department Table
CREATE TABLE dept (
deptno int not NULL,
dname varchar(20) not NULL,
loc varchar(20) not NULL,
primary key(deptno)
);
