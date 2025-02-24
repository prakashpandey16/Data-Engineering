USE practice_problem;

-- 1) Display all the details of the employees whose emp_no is more than
-- 1020 and salary is not available

SELECT * FROM employees_data WHERE emp_id > 20 AND salary IS NULL;


-- 2) Retrieve those employee whose last_name is null.
SELECT * FROM employees_data WHERE last_name IS NULL;

-- 3-- ) Retrieve emp_no, first_name, salary and department of those
-- employees who works in any department.

SELECT emp_id,first_name,salary,department FROM employees_data;


-- 4) Get emp_no, first_name , salary and the annual salary of the employees
-- as column name “annual salary”. If salary is not available, then display
-- “NA” in result set.   


SELECT emp_id,first_name,salary,COALESCE(CAST(salary*12 AS CHAR),'NA')  AS annual_salary FROM employees_data ;


-- 5) Write a query to retrieve those employees who is Female and who
-- doesn’t belong to any department.

SELECT * FROM employees_data WHERE gender = 'F' AND department IS NULL;