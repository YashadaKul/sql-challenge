--Queries 
-- 1. List the employee number, last name, first name, sex, and salary of each employee.
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
from departments d
inner join dept_manager dm on 
d.dept_no = dm.dept_no 
inner join employees e on 
e.emp_no = dm.emp_no;

--4. List the department number for each employee along with that employee’s employee number, last name, first name, and department name.
select d.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name 
from departments d
inner join dept_emp dem on 
d.dept_no = dem.dept_no 
inner join employees e on 
e.emp_no = dem.emp_no;

--5. List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B (2 points)
select * from employees
where first_name = 'Hercules'
and last_name like 'B%';

--6. List each employee in the Sales department, including their employee number, last name, and first name (2 points)
select d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
inner join dept_emp dem on 
d.dept_no = dem.dept_no 
inner join employees e on 
e.emp_no = dem.emp_no
where dept_name = 'Sales';

--7.List each employee in the Sales and Development departments, including their employee number, last name, first name, and department name (4 points)
select d.dept_name, e.emp_no, e.last_name, e.first_name
from departments d
inner join dept_emp dem on 
d.dept_no = dem.dept_no 
inner join employees e on 
e.emp_no = dem.emp_no
where dept_name in ('Sales', 'Development');

--8. List the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name) (4 points)
