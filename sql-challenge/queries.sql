
SELECT employees.emp_no AS "Employee Number",
		employees.last_name AS "Employee Last Name",
		employees.first_name AS "Employee First Name",
		employees.sex AS "Employee Sex",
		salaries.salary AS "Employee Salary"
FROM employees
INNER JOIN salaries ON 
employees.emp_no = salaries.emp_no;

-- List the first name, last name, and hire date for the employees hired in 1986
SELECT employees.first_name AS "Employee First Name",
		employees.last_name AS "Employee Last Name",
		employees.hire_date AS "Hire Date"
FROM employees WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

	
-- List the manager of each department with their dept_no, dept. name, employee number, last name, and first name
SELECT dept_manager.dept_no AS "Department Number",
		departments.dept_name AS "Department Name",
		employees.emp_no AS "Manager Number",
		employees.last_name AS "Manager Last Name",
		employees.first_name AS "Manager First Name"
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no; 


-- List the department number for each employee along with that employees employee number, last name, first name, and dept_no
SELECT dept_emp.dept_no AS "Department Number",
		employees.emp_no AS "Employee Number",
		employees.last_name AS "Employee Last Name",
		employees.first_name AS "Employee First Name",
		departments.dept_name AS "Department Name"
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;
		
-- List first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B
SELECT first_name AS "first name",
		last_name AS "last name",
		sex AS "Employee sex"
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%';

-- List each employee in the sales dept, including their employee number, last name, and first name
SELECT	employees.last_name AS "Last name",
		employees.first_name AS "First Name"
		
FROM employees
WHERE employees.emp_no IN (
		SELECT emp_no
		FROM dept_emp 
		WHERE dept_no = 'd007'
);
-- List each employee in the sales and development dept, including their employee number, last name, and first name
SELECT employees.last_name AS "Last name",
		employees.first_name AS "First Name",
		employees.emp_no AS "Employee Number", 
		departments.dept_name AS "Department Name"
FROM employees
JOIN dept_emp ON dept_emp.dept_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;


SELECT employees.last_name AS "Employee Last Name",
		COUNT(*) AS "Frequency Count"
FROM employees
GROUP BY employees.last_name
ORDER BY "Frequency Count" DESC; 