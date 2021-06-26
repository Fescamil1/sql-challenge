-- Queries file 

-- 1. List the following details of each employee: employee number, last name, first name, sex, and salary

SELECT e.emp_no, e.last_name, e.first_name, e.sex, s.salary 
FROM employees as e
JOIN salaries as s ON e.emp_no = s.emp_no
ORDER BY e.emp_no;

--List first name, last name, and hire date for employees who were hired in 1986
SELECT first_name, last_name, hire_date
FROM employees
WHERE DATE_PART('year',hire_date)=1986
ORDER BY emp_no;

--