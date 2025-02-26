USE practice_problem;

SELECT * FROM employees_data;

-- 1) Write a query to get the details of the employees where the length of
-- the first name greater than or equal to 8.

SELECT * FROM employees_data
WHERE LENGTH(first_name) >= 8;

SELECT * FROM employees_data
WHERE CHAR_LENGTH(first_name) >=8;


-- 2) Write a query to retrieve the output as shown below

SELECT emp_id,first_name,last_name,LOWER(CONCAT(CONCAT_WS('.',first_name,last_name),'@demo.com')) AS email
FROM employees_data
WHERE emp_id < 10;


-- 3) Retrieve emp_no ,first name and last name of employees in
-- uppercase.

SELECT emp_id,
	UPPER(first_name)AS first_name_uppercase,
	UPPER(last_name) AS last_name_uppercase 
FROM employees_data;

-- 4) Retrieve the month from the birth date for each employee as
-- “birth_month”.

SELECT * FROM employees_data;

SELECT MONTH(birth_date) AS birth_date_month FROM employees_data;
SELECT TRIM(LEADING '0' FROM SUBSTR(birth_date,6,2)) AS birth_date_month FROM employees_data;

-- 5) Display 2023 at place of 2020 in birth date of the employee and also
-- retrieve emp_no and first name from employee table

SELECT emp_id,first_name,
	REPLACE(birth_date,'2023','2020') AS modified_birth_date
FROM employees_data;
    



-- 6) Retrieve the first name and last name of employees with 'son' as the
-- last three characters of their last name

SELECT first_name,last_name FROM 
employees_data WHERE last_name LIKE 'son%';



-- 7) Get emp_no of the employees and display department name in
-- reverse order

SELECT emp_id,REVERSE(department) AS department_name_in_reverse
FROM employees_data;



-- 8) Write a query to get the details of the employees where the length of
-- the first name greater length of last name.

SELECT * FROM employees_data
WHERE LENGTH(first_name) > LENGTH(last_name);


-- 9) Retrieve the first 4 character from the salary of each employee as
-- “new_salary”.

SELECT SUBSTR(salary,1,4) AS new_salary
FROM employees_data;


SELECT LEFT(salary,4) AS new_salary
FROM employees_data;