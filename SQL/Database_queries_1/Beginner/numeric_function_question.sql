USE practice_problem;

SELECT * FROM employees_data;

-- 1) Write a query to get all the details of the employees whose emp_no
-- is an even number the employee table

SELECT * FROM employees_data
WHERE MOD(emp_id,2) = 0;


-- 2) Get all details of the employees whose emp_no is a perfect square
-- from the employee table. 

SELECT * FROM employees_data
WHERE SQRT(emp_id) = FLOOR(SQRT(emp_id));


-- 3) Write an SQL query to find the average salary (rounded up to the
-- nearest integer) for each department as “avg_salary” and display the
-- department name along with the average salary.

SELECT department,CEIL(AVG(salary)) AS avg_salary
FROM employees_data
GROUP BY department;


-- 4) Write a SQL query to find new salary of the employee, calculated by
-- subtracting 50,000 from their current salary as “new_salary” and
-- return only positive values. Also fetch first name of the employee.


SELECT first_name,
	(salary-50000) AS new_salary
FROM employees_data
WHERE salary > 50000;

-- 5) Write a SQL query to calculate the result of raising the number 55 to
-- the power of 3 and the result should be displayed as "power".


SELECT POWER(55,3) AS power;

-- 6) Write a SQL query to find the smallest number from the given
-- numbers as “least_number”.
-- ➢ 200,23,0,987.5,32,-1

SELECT LEAST(200,23,0,987.5,32,-1) AS least_number;


-- 7) Write a SQL query to find the largest number from the given numbers
-- as “highest_number”.
-- ➢ 200,23,0,987.5,32,-1

SELECT GREATEST(200,23,0,987.5,32,-1) AS highest_number ;
