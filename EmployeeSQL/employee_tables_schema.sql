-- Create tables for Employee SQl Challenge
-- Before creating a table, drop the table if it already exsists


-- drop table if already exsist
DROP TABLE titles;

--create titles table
CREATE TABLE titles( 
	title_id integer PRIMARY KEY NOT NULL,
    title varchar  NOT NULL
);

-- create a table of employees
DROP TABLE employees;

CREATE TABLE employees(
	emp_no integer PRIMARY KEY NOT NULL,
    emp_title_id integer NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL   
);

--create table for salaries
DROP TABLE salaries;

CREATE TABLE salaries(
    emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary integer NOT NULL
);


--create departments table
DROP TABLE departments;

CREATE TABLE departments (
    dept_no integer PRIMARY KEY NOT NULL,
    dept_name varchar NOT NULL
);

-- Create table for dept employees
DROP TABLE dept_emp;

CREATE TABLE "dept_emp" (
    emp_no integer NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
    dept_no integer NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

--Create table for dept managers
DROP TABLE dept_manager;

CREATE TABLE dept_manager (
    dept_no integer NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
    emp_no integer NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

