CREATE TABLE departments (
	dept_no VARCHAR(10) PRIMARY KEY NOT NULL,
	dept_name VARCHAR(32)
);

CREATE TABLE employees (
	emp_no VARCHAR(10) PRIMARY KEY NOT NULL,
	emp_title_no VARCHAR(10),
	birth_date DATE,
	first_name VARCHAR(32),
	last_name VARCHAR(32),
	sex CHAR(1),
	hire_date DATE
); 

CREATE TABLE titles (
	title_id VARCHAR(10),
	title VARCHAR(32)
);

CREATE TABLE dept_emp (
	emp_no VARCHAR(10),
	dept_no VARCHAR(10)
);

CREATE TABLE dept_manager(
	dept_no VARCHAR(10),
	emp_no VARCHAR(10)
);

CREATE TABLE salaries (
	emp_no VARCHAR(10),
	salary INTEGER
);