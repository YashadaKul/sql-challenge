--Queries 
-- 1. List the employee number, last name, first name, sex, and salary of each employee.

select * from employees;
select * from salaries;

select e.emp_no as "Employee_Number", e.first_name, e.last_name, e.sex, s.salary 
from employees e
Inner Join salaries s on 
e.emp_no = s.emp_no;

--2. List the first name, last name, and hire date for the employees who were hired in 1986.
select last_name, first_name, hire_date
from employees e 
where hire_date >= '1986-01-01' 
and 
hire_date <= '1986-12-31';

--3. List the manager of each department along with their department number, department name, employee number, last name, and first name.
select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
inner join dept_manager dm on 
e.emp_no = dm.emp_no
inner join departments d on 
dm.dept_no = d.dept_no;

select dm.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
inner join dept_manager dm on 
d.dept_no = dm.dept_no 
inner join employees e on 
e.emp_no = dm.emp_no;
