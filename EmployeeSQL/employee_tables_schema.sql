-- Create tables for Employee SQl Challenge
-- Before creating a table, drop the tables if it already exsists
DROP TABLE dept_manager;
DROP TABLE dept_emp;
DROP TABLE departments;
DROP TABLE salaries;
DROP TABLE employees;
DROP TABLE titles;

--create titles table
CREATE TABLE titles( 
	title_id varchar PRIMARY KEY NOT NULL,
    title varchar  NOT NULL
);

-- create a table of employees
CREATE TABLE employees(
	emp_no integer PRIMARY KEY NOT NULL,
    emp_title_id varchar NOT NULL,
	FOREIGN KEY (emp_title_id) REFERENCES titles(title_id),
    birth_date date NOT NULL,
    first_name varchar NOT NULL,
    last_name varchar NOT NULL,
    sex varchar NOT NULL,
    hire_date date NOT NULL   
);

--create table for salaries
CREATE TABLE salaries(
    emp_no integer NOT NULL,
	FOREIGN KEY (emp_no) REFERENCES employees(emp_no),
    salary integer NOT NULL
);

--create departments table
CREATE TABLE departments (
    dept_no varchar PRIMARY KEY NOT NULL,
    dept_name varchar NOT NULL
);

-- Create table for dept employees
CREATE TABLE dept_emp (
    emp_no integer NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no),
    dept_no varchar NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no)
);

--Create table for dept managers
CREATE TABLE dept_manager (
    dept_no varchar NOT NULL,
	FOREIGN KEY(dept_no) REFERENCES departments (dept_no),
    emp_no integer NOT NULL,
	FOREIGN KEY(emp_no) REFERENCES employees (emp_no)
);

