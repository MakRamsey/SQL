-- Confirm proper hydration of each table from imported CSV files
SELECT * FROM departments
SELECT * FROM dept_emp
SELECT * FROM dept_manager
SELECT * FROM employees
SELECT * FROM salaries
SELECT * FROM titles

-- Listing employee number, last name, first name, sex and salary for each employee within database
SELECT
employees.emp_no,
employees.last_name,
employees.first_name,
employees.sex,
salaries.salary
FROM employees
LEFT JOIN salaries ON
salaries.emp_no = employees.emp_no;

-- Listing first name, last name and hire date for the employees who were hired in 1986
SELECT
employees.first_name, employees.last_name, employees.hire_date
FROM employees
WHERE DATE_PART('year', employees.hire_date) = 1986;

-- Listing the manager of each department along with their department number, department name, employee, number, last name and first name
SELECT
dept_manager.dept_no, departments.dept_name, employees.emp_no, employees.last_name, employees.first_name
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no
JOIN employees ON dept_manager.emp_no = employees.emp_no;

-- Listing department number for each employee with that employee's employee number, last name, first name and department name
SELECT
dept_emp.dept_no, employees.emp_no, employees.last_name, employees.first_name, departments.dept_name
FROM dept_emp
JOIN employees ON dept_emp.emp_no = employees.emp_no
JOIN departments ON dept_emp.dept_no = departments.dept_no;

-- Listing fist name, last name, an sex of each employee whos first name is Hercules ans who's last name begins with the letter 'B'
SELECT
first_name, last_name, sex
FROM employees
WHERE first_name = 'Hercules' AND employees.last_name LIKE 'B%';

-- Listing each employee in the Sales department, including thier employee number, last name, and first name
-- Please note, confirmation that d007 = sales is necessary via data exploration
SELECT 
employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007';

-- Listing each employee in the Sales and Development departments, including thier employee number, last name, first name and department name
-- Please note, confirmation that d007 = sales & d005 = development is necessary via data exploration
SELECT 
employees.emp_no, employees.last_name, employees.first_name
FROM employees
JOIN dept_emp ON employees.emp_no = dept_emp.emp_no
WHERE dept_emp.dept_no = 'd007' OR dept_emp.dept_no ='d005';

-- Listing the frequency counts, in descending order, of all the employee last names
SELECT
last_name,
COUNT(*) AS "Occurrance Count"
FROM employees
GROUP BY 1
ORDER BY 2 DESC;





