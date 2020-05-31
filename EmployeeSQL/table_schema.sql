/* SQL HOMEWORK 1/24/2020 */
/* DATA MODELING AND DATA ENGINEERING
    Inspect the CSVs, sketch out the Tables
	Create the six table schemas and import each
	CSV file into the corresponding SQL table*/

/* #1 TABLE departments */
CREATE TABLE departments (
dept_no VARCHAR (255) PRIMARY KEY,
dept_name VARCHAR (255));
 
/* #2 TABLE dept_emp   */

CREATE TABLE dept_emp (
emp_no INTEGER REFERENCES employees(emp_no),
dept_no VARCHAR (255) REFERENCES departments(dept_no),
from_date DATE,
to_date    DATE);

/* #3 TABLE dept_manager */

CREATE TABLE dept_manager (
dept_no VARCHAR(255) REFERENCES departments(dept_no),
emp_no INT REFERENCES employees(emp_no),
from_date  DATE,
to_date    DATE);

/* #4 TABLE employees   */

CREATE TABLE employees (
emp_no       INT PRIMARY KEY,
birth_date   DATE,
first_name   VARCHAR (255),
last_name    VARCHAR (255),
gender       VARCHAR (15),
hire_date    DATE);

/* #5 TABLE salaries   */

CREATE TABLE salaries (
emp_no INT REFERENCES employees(emp_no),
salary   INT,
from_date  DATE,
to_date    DATE);

/* #6 TABLE titles   */

CREATE TABLE titles (
emp_no INT REFERENCES employees(emp_no),
title VARCHAR (255),
from_date DATE,
to_date    DATE);

SELECT * FROM salaries;
SELECT * FROM dept_emp;
SELECT * FROM titles;
SELECT * FROM departments;
SELECT * FROM dept_manager;
SELECT * FROM employees;

