--drop tables
drop table departments
drop table salaries
drop table titles

drop table dept_emp
drop table dept_manager
drop table employees



--1. Table for departments 
CREATE TABLE departments (
  dept_no Varchar (50) NOT NULL,
  dept_name Varchar (300) NOT NULL,
	primary key (dept_no)
	);

SELECT * FROM departments;

--4.Table for employee data
CREATE TABLE employees (
  emp_no Int NOT NULL,
	emp_title_id Varchar(50) NOT NULL,
	birth_date date not null, 
	first_name Varchar (300) not null, 
	last_name Varchar (300) not null, 
	sex Varchar (50) not null, 
	hire_date date not null,
	primary key(emp_no),
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id)
);

SELECT * FROM employees;

--2.Table for salary data
CREATE TABLE salaries (
  emp_no Int NOT NULL,
  salary Int NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM salaries;

--3.Table for titles
CREATE TABLE titles (
  title_id Varchar(50) NOT NULL,
  title Varchar (50) NOT NULL,
	primary key(title_id)
);

SELECT * FROM titles;

--5. Table for employee numbers by department number
CREATE TABLE dept_emp (
  emp_no Int NOT NULL,
  dept_no Varchar (50) NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
	FOREIGN KEY (dept_no) REFERENCES departments(dept_no)
);

SELECT * FROM dept_emp;

--6.Table for department managers
CREATE TABLE dept_manager (
  dept_no Varchar (50) NOT NULL,
  emp_no Int NOT NULL,
FOREIGN KEY (dept_no) REFERENCES departments(dept_no),
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no)
);

SELECT * FROM dept_manager;


