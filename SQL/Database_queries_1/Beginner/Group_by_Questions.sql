USE practice_problem;

SELECT * FROM employees_data;


-- 1) Find the total salary expenditure categorized by gender from
-- employee table.

SELECT gender ,SUM(salary) AS Total_salary 
FROM employees_data
GROUP BY gender;


-- 2) Retrieve the average salary for each department as avg_salary from
-- the employee table and display the results ascending order of the
-- average salary.

SELECT department,AVG(salary) AS avg_salary
FROM employees_data
GROUP BY department
ORDER BY avg_salary ASC;


-- 3) Find the minimum salary in each department as min_salary whose
-- department is not null from the employee table?


SELECT department ,MIN(salary) AS min_salary
FROM employees_data
WHERE department IS NOT NULL
GROUP BY department 
ORDER BY min_salary ASC;


-- 4) Find the average salary as average_salary and maximum salary as
-- max_salary for each department from the employee table

SELECT department ,
    ROUND(AVG(salary),2) AS average_salary,
	ROUND(MAX(salary),2) AS max_salary
FROM employees_data
GROUP BY department
ORDER BY average_salary ASC,max_salary ASC;


-- 5) Determine the number of employees as total_employees in each
-- department, sorted in descending order of the count from the
-- employee table.

SELECT department,
	COUNT(*) AS total_employees
FROM employees_data
GROUP BY department
ORDER BY total_employees DESC;
