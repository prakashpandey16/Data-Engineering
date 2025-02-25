USE practice_problem;

SELECT * FROM employees_data;


-- 1) Write a query to get all the details of the employee who joined the
-- company between 1st March 2019 to 1st April 2021

SELECT * 
FROM employees_data
WHERE joining_date BETWEEN '2019-03-01' AND '2021-04-01';


-- 2) Write a query to get first_name, last_name and salary of the
-- employee whose last_name is Gill, Hill, Mills or Hall

SELECT first_name,last_name,salary 
FROM employees_data
WHERE LOWER(last_name) IN ('gill','hill','mills','hall');



-- 3) Write a query to display all the details of the employee whose salary
-- is not between 40000 to 50000.

SELECT * 
FROM employees_data
WHERE salary BETWEEN 40000 and 50000;

-- 4) Write a query to get emp_no, first_name, salary and department of
-- the employee whose department is not Marketing, HR and Finance.
-- And the column name for department will be ‘other_department’.

SELECT emp_id,first_name,salary,department AS other_department
FROM employees_data
WHERE LOWER(department) NOT IN ('marketing','hr','finance');



-- 5) Write a query to get all the details of the employee whose emp_no is
-- more than 1020 and the first name of the employee is David, Mark,
-- Joe.


SELECT *
FROM employees_data
WHERE emp_id > 20 AND LOWER(first_name) IN ('david','mark','joe');


-- 6) Write a query to get all the details of the employee whose gender is
-- female and birth_date is between 9 July 1997 to 9 July 1998

SELECT * 
FROM employees_data
WHERE gender = 'F' AND birth_date BETWEEN  '1997-07-09' AND '1998-07-09';