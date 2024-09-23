# SQL


Greetings,

Welcome to the SQL repository! This project utilizes pgAdmin and PostgreSQL to perform SQL database modeling, engineering and analysis against a generated company's employee records. From six CSV files, contianing information such as empoyee #, birth date, first/last name, hire date, department, title, salary, department manager, etc., an Entity Relationship Diagram (ERD) was generated with data types, primary/foreign keys and relationship lines to inform table schemata creation. Subsequent CSV file import was executed for SQL database table hydration prior to query based analysis to retrieve the following:

- Listing the employee number, last name, first name, sex, and salary of each employee.

- Listing the first name, last name, and hire date for the employees who were hired in 1986.

- Listing the manager of each department along with their department number, department name, employee number, last name, and first name.

- Listing the department number for each employee along with that employee’s employee number, last name, first name, and department name.

- Listing first name, last name, and sex of each employee whose first name is Hercules and whose last name begins with the letter B.

- Listing each employee in the Sales department, including their employee number, last name, and first name.

- Listing each employee in the Sales and Development departments, including their employee number, last name, first name, and department name.

- Listing the frequency counts, in descending order, of all the employee last names (that is, how many employees share each last name).

**Repository Structure:**

- 'EmployeeSQL' directory:

  - 'Data' directory: Contains all 6 original CSV files
  - "sql_challenge_ERD.png": ERD picture
  - "sql_challenge_queries.sql": SQL code for analysis queries
  - "sql_challenge_table_schemata.sql": SQL code for table schemata creation

Thanks!
