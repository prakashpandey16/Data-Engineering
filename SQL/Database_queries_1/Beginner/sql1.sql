CREATE DATABASE IF NOT EXISTS Employees;
use Employees;
CREATE TABLE IF NOT EXISTS employee(
emp_id  INT PRIMARY KEY,
first_name VARCHAR(30),
last_name VARCHAR(30),
job_title VARCHAR(40),
dept_id INT,
salary DECIMAL(10,2),
hire_date DATE,
manager_id INT
);

INSERT INTO employee(emp_id,first_name,last_name,job_title,dept_id,salary,hire_date,manager_id)
VALUES
(101, 'Alice', 'Johnson', 'Software Engineer', 1, 75000, '2019-06-15', 201),
(102, 'Bob', 'Smith', 'Data Analyst', 2, 65000, '2021-03-20', 202),
(103, 'Charlie', 'Brown', 'HR Manager', 3, 80000, '2018-11-10', NULL),
(104, 'David', 'Williams', 'Software Engineer', 1, 72000, '2020-08-25', 201),
(105, 'Eva', 'Davis', 'Marketing Manager', 4, 90000, '2017-05-05', NULL),
(106, 'Frank', 'Miller', 'Software Engineer', 1, 68000, '2022-01-12', 201),
(107, 'Grace', 'Wilson', 'Data Scientist', 2, 85000, '2019-12-30', 202),
(108, 'Henry', 'Taylor', 'HR Executive', 3, 55000, '2023-04-18', 103),
(109, 'Ivy', 'Anderson', 'Software Engineer', 1, 77000, '2016-09-27', 201),
(110, 'Jack', 'Thomas', 'Data Analyst', 2, 63000, '2020-06-15', 202),
(111, 'Kelly', 'Moore', 'Marketing Executive', 4, 58000, '2022-07-10', 105),
(112, 'Liam', 'White', 'Software Engineer', 1, 80000, '2015-10-03', 201),
(113, 'Mia', 'Harris', 'Data Scientist', 2, 87000, '2021-09-25', 202),
(114, 'Nathan', 'Martin', 'HR Manager', 3, 81000, '2018-02-14', NULL),
(115, 'Olivia', 'Lee', 'Marketing Manager', 4, 91000, '2017-12-08', NULL);

-- Select all data from employees
SELECT * FROM employees;  

-- Get unique job titles from employees
SELECT DISTINCT job_title FROM employees;  

-- Retrieve employees with salaries greater than 50,000
SELECT * FROM employees WHERE salary > 50000;  

-- Display the first name and last name concatenated as a single column (full_name)
SELECT CONCAT(first_name, ' ', last_name) AS full_name FROM employees;  

-- Find the total number of employees in the employees table
SELECT COUNT(*) AS total_employees FROM employees;  

-- List all employees hired after January 1, 2020
SELECT * FROM employees WHERE hire_date > '2020-01-01';  

-- Sort employees by their salary in descending order
SELECT * FROM employees ORDER BY salary DESC;  

-- Retrieve the top 5 highest-paid employees
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;  

-- Find employees whose first name starts with 'A'
SELECT * FROM employees WHERE first_name LIKE 'A%';  

-- Display the first 10 records from the employees table
SELECT * FROM employees LIMIT 10;  

-- Retrieve employees whose salaries are between 40,000 and 80,000
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000;  

-- Count how many employees were hired in each year
SELECT YEAR(hire_date) AS hire_year, COUNT(*) AS employee_count  
FROM employees  
GROUP BY hire_year  
ORDER BY hire_year;  

-- Find employees whose last names have exactly 5 characters
SELECT * FROM employees WHERE LENGTH(last_name) = 5;  

-- List employees whose job title contains the word “Manager.”
SELECT * FROM employees WHERE job_title LIKE '%Manager%';  

-- Retrieve employees who do not have a manager assigned
SELECT * FROM employees WHERE manager_id IS NULL;  
