USE practice_problem;

SELECT * FROM employees_data;


-- 1) Write a SQL query to count the number of duplicate first name as
-- duplicate_count in the employee table

SELECT first_name,
	COUNT(*) AS duplicate_count
FROM employees_data 
GROUP by first_name
HAVING COUNT(*) > 1; 

-- Find the departments with more than 5 employees as
-- total_employees from the employee table

SELECT department,
	COUNT(*) AS total_employees 
FROM employees_data
GROUP BY department
HAVING COUNT(*) > 5;

-- Determine the department with an average salary greater than
-- 50000 as average_salary from the employee table.

SELECT department,
	AVG(salary) AS average_salary 
FROM employees_data
GROUP BY department
HAVING AVG(salary) > 50000;
  
--   
--   4) Determine the department with at least 3 employees earning a salary
-- of 30000 or more total_employees from as the employee table.

SELECT department,
	COUNT(*) AS total_employees 
FROM employees_data
WHERE salary>=30000
GROUP by department 
HAVING COUNT(*) > 3;


-- 5) Find the departments with a maximum salary greater than 60000 as
-- max_salary from the employee table

SELECT department,
	MAX(salary) AS max_salary
FROM employees_data
WHERE salary>=60000
GROUP BY department;


-- 6) Find the department where the highest salary (as highest_salary) is
-- at least twice the lowest salary (as lowest_salary) in the employee
-- table.

SELECT department,
	MAX(salary) AS highest_salary,
    MIN(salary) AS lowest_salary
FROM employees_data
GROUP BY department
HAVING MAX(salary) >= 2 * MIN(salary);



-- 7) Determine the department with at least 5 employees (as
-- total_employees) where the total salary expense (as
-- total_salary_expense ) is greater than 100000 in the employee table.

SELECT department,
	COUNT(*) AS total_employees,
    SUM(salary) AS total_salary_expense
FROM employees_data
GROUP BY department
HAVING COUNT(*) >=5
AND SUM(salary) >= 100000;


-- 8) Determine the department where the average salary (as
-- average_salary) is within the range of 20000 to 50000 (inclusive) in
-- the employee table.


SELECT department,
	AVG(salary) AS average_salary
FROM employees_data
GROUP BY department
HAVING AVG(salary) BETWEEN 20000 AND 50000;



-- 9) Determine the departments with more than 4 employees (as
-- total_employees) where the difference between the maximum and
-- minimum salary is greater than 25000 (salary_difference) from the
-- employee table.

SELECT department,
	COUNT(*) AS total_employees,
    MAX(salary) - MIN(salary) AS salary_difference
FROM employees_data
GROUP BY department
HAVING COUNT(*) >= 4 
AND (MAX(salary) - MIN(salary)) > 25000;
