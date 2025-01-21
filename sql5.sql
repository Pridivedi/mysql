create database company5th;
use company5th;
create table employees5th(emp_id int, emp_name varchar(20), depart_id int);
insert into employees5th (emp_id, emp_name, depart_id)
values(1,"Alice",10),
	  (2,"BOb",20), 
      (3,"Charlie",30),
      (4,"David",10),
      (5,"Eve",40);
select * from employees5th;

create table  department(department_id int,department_name varchar(40));   
drop table department;               
insert into department(department_id,department_name)
values(10,"HR"),
	  (20,"Finance"),
	  (30,"IT"),
	  (40,"Admin"),
	  (50,"Marketing");
      
select * from department;


                  
create table project(project_id int,emp_id int,project_name varchar(40));
insert into project(project_id,emp_id,project_name)
values (101,1,"Alpha"),
	   (102,2,"Beta"),
       (103,3,"Gamma"),
       (104,4,"Delta");        
select * from project;

#1
SELECT *
FROM employees5th JOIN department ON employees5th.depart_id = department.department_id;

#2
select emp_name, department_name from employees5th left join department ON employees5th.depart_id = department.department_id;

#3
select department_name,emp_name from  employees5th right join department on employees5th.depart_id = department.department_id;

#4
select * from employees5th left join department on employees5th.depart_id = department.department_id;
select * from employees5th right join department on employees5th.depart_id = department.department_id;
select emp_name, department_name from  employees5th union select department_name from department;

#5
select * from employees5th left join department on employees5th.depart_id = department.department_id left join project on employees5th.emp_id = project.emp_id;
select * from employees5th left join department on employees5th.depart_id = department.department_id left join project on employees5th.emp_id = project.emp_id;
select * from employees5th left join project on employees5th.emp_id = project.emp_id left join department on employees5th.depart_id = department.department_id;

#6
select * from employees5th join project on employees5th.emp_id = project.emp_id where project_name is null;

#7
select department_name from employees5th right join department on employees5th.depart_id = department.department_id where employees5th.depart_id is null;

#8
select emp_id, emp_name, department_name from  employees5th join department on employees5th.depart_id = department.department_id;

#9
select emp_id,emp_name,department_name from employees5th join department on employees5th.depart_id = department.department_id;
select a.emp_id,a.emp_name,b.emp_id,b.emp_name from employees5th a join employees5th b on a.dep

#10
select 



