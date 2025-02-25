USE practice_problem;

SELECT * FROM employees_data;


-- 1) Find the number of male employee as total_male from "employee"
-- table.

SELECT COUNT(*) AS Total_male FROM employees_data WHERE gender = 'M';


-- --2) Write a SQL query to find the number of employees whose first name
-- -- starts with the letter ‘J’ from "employee" table. 

SELECT COUNT(*) AS count_name_start_j FROM employees_data WHERE first_name LIKE 'J%';


-- 3) Find the total salary of employees whose employee numbers
-- (emp_no) are between 1010 and 1020 from "employee" table..

SELECT SUM(salary) AS total_salary FROM employees_data WHERE emp_id BETWEEN 10 AND 20; 



-- 4) Write a SQL query to calculate the total annual salary of all
-- employees as annual_salary in the HR department from "employee"
-- table.

SELECT SUM(salary * 12) AS annual_salary FROM employees_data WHERE department = 'HR';


-- 5) Find the average salary of all employees as avg_salary from
-- "employee" table.

SELECT AVG(salary) AS avg_salary FROM employees_data;


-- 6) Find the average salary of employees working in the IT department
-- from "employee" table. 

SELECT AVG(salary) FROM employees_data WHERE department = 'IT';  

-- 7) Write a SQL query to find the earliest joining date as
-- min_joining_date among all employees in the "employee" table.

SELECT MIN(joining_date) AS min_joining_date FROM employees_data;


-- 8) Find the minimum salary of employees working in the Finance
-- department as min_salary from "employee" table

SELECT MIN(salary) AS min_salary FROM employees_data;


-- 9) Find the maximum birth date among all employees from "employee"
-- table as max_dob.

SELECT MAX(birth_date) AS max_dob FROM employees_data;


-- 10) What is the highest employee number (emp_no) in the "employee"
-- table
SELECT MAX(emp_id) FROM employees_data;