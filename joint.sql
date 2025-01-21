create database class;
use class;
create table student (student_id int,name varchar(6));
insert into student (student_id,name) values(101,"adam"),(102,"bob"),(103,"casey");
select * from student;

create table course (student_id int,name varchar(8));
alter table course rename column name to course;
insert into course (student_id,course) values (102,"eng"),(103,"math"),(104,"science"),(102,"cs");
select * from course;

create table employees (emp_id int,emp_name varchar(10),dept_id int,salary int);
insert into employees (emp_id,emp_name,dept_id,salary) values(1,"alice",101,6000);
insert into employees (emp_id,emp_name,dept_id,salary) values(2,"bob",102,7000),(3,"charli",103,8000),(4,"david",101,7500),(5,"eve",102,8500);

create table departments (dept_id int,dept_name varchar(10));
insert into departments (dept_id,dept_name) values(101,"hr"),(102,"sales"),(103,"it"),(104,"marketing");

create table project (project_id int,project_name varchar(5),dept_id int);
insert into project (project_id,project_name,dept_id) values(1,"A",101),(2,"B",102),(3,"C",103),(4,"D",104);
select * from project

select * from employees;
select * from departments;

select emp_name, dept_name from employees join departments on employees.dept_id = departments.dept_id where dept_name = 'sales';
SELECT emp_name, dept_name FROM employees JOIN departments ON employees.dept_id = departments.dept_id WHERE dept_name = 'sales';