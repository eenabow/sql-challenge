-- 1
-- List the following details of each employee: employee number, last name, first name, sex, and salary.
SELECT A.emp_no, last_name, first_name, sex, salary
FROM public."Employees" as A

INNER JOIN public."Salaries" as B
ON A.emp_no = B.emp_no;


--2
-- List first name, last name, and hire date for employees who were hired in 1986.
SELECT first_name, last_name, hire_date
FROM public."Employees"
WHERE hire_date >= '1/1/1986' and hire_date < '1/1/1987';


-- 3 
-- List the manager of each department with: department number, department name, the manager's employee number, last name, first name.
SELECT A.dept_no, B.dept_name, A.emp_no, C.last_name, C.first_name
from public."Department_Manager_no" as A 

INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no

INNER JOIN public."Employees" as C
ON A.emp_no = C.emp_no;



-- 4
-- List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
from public."Department_Employee_no" as A 

INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no

INNER JOIN public."Employees" as C
ON A.emp_no = C.emp_no;



--5 
List first name, last name, and sex for employees whose first name is "Hercules" and last names begin with "B."
SELECT first_name, last_name, sex
FROM public."Employees"
WHERE first_name = 'Hercules' and  left(last_name,1)  = 'B';



-- 6
-- List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
from public."Department_Employee_no" as A 

INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no

INNER JOIN public."Employees" as C
ON A.emp_no = C.emp_no 

WHERE dept_name = 'Sales';



-- 7
-- List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT A.emp_no, C.last_name, C.first_name, B.dept_name
from public."Department_Employee_no" as A 

INNER JOIN public."Departments" as B
ON A.dept_no = B.dept_no

INNER JOIN public."Employees" as C
ON A.emp_no = C.emp_no 

WHERE dept_name = 'Sales' or dept_name = 'Development';



-- 8 
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT A.last_name, COUNT(A.last_name) as frequency
FROM public."Employees" as A 
GROUP BY A.last_name
ORDER BY "frequency" DESC;




















