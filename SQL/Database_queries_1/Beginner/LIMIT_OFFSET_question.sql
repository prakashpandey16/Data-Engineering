USE practice_problem;

SELECT * FROM employees_data;

-- 1) Return all rows from the "employee" table, but only show the first 10
-- rows.

SELECT * FROM employees_data LIMIT 10;

-- 2) Return the next 10 rows from the " employee " table (i.e. rows with
-- emp_no 1011-1020):

SELECT * FROM employees_data LIMIT 10 OFFSET 10;


-- 3) Fetch emp_no, first name ,last name , joining date of 6 employees
-- who recently joined the company

SELECT emp_id ,first_name,last_name ,joining_date 
FROM employees_data
ORDER BY joining_date DESC LIMIT 6;


-- 4) Retrieve all the details of the 2 youngest employees from the
-- “employee” table.

SELECT * FROM employees_data; 

SELECT *,TIMESTAMPDIFF(YEAR,birth_date,CURRENT_DATE()) AS employee_age
FROM employees_data 
ORDER BY employee_age ASC LIMIT 2;

-- 5) Retrieve all the details of the 3 eldest male employees from the
-- “employee” table.

SELECT *,TIMESTAMPDIFF(YEAR,birth_date,CURRENT_DATE()) AS employee_age 
FROM employees_data
ORDER BY employee_age DESC LIMIT 3;

SELECT * FROM employees_data
ORDER BY birth_date ASC LIMIT 3;


-- 6) Retrieve emp_no, first name and salary of 3 highest paid employees
-- from the “employee” table.


SELECT emp_id,first_name,salary FROM 
employees_data
ORDER BY salary DESC LIMIT 3;

-- 7) Retrieve all the details of 3 lowest paid employees who belongs to IT
-- department from the “employee” table.

SELECT * FROM employees_data
ORDER BY salary ASC LIMIT 3;

-- 8) Retrieve the details of the first three employees in the "employee"
-- table whose first name starts with the letter "J", sorted in
-- alphabetical order by their first names.

SELECT * FROM
employees_data
WHERE first_name LIKE 'J%'
ORDER BY first_name;