USE practice_problem;

SELECT * FROM employees_data;

-- 1. Select all employees whose first name ends with 'y’.
SELECT * FROM employees_data WHERE first_name LIKE '%y';

-- 2) Select all employees whose date of birth is in April.
SELECT * FROM employees_data WHERE MONTHNAME(birth_date) LIKE 'April';

-- 3) Select emp_no , first name and department of the employees whose
-- department does not contains the word ‘ing’.

SELECT emp_id,first_name,department FROM employees_data WHERE department NOT LIKE '%ing%';
 
 
--  4) Select all employees whose last name starts with ‘w’ and has
-- emp_no more than 1015.


SELECT * FROM  employees_data WHERE emp_id > 15 AND lower(last_name) LIKE 'w%';

-- 5) Select first_name and last_name of the employee with a first_name
-- that start with “j” and are at least 4 characters in length.

SELECT first_name,last_name FROM employees_data WHERE LOWER(first_name) LIKE 'j%' AND CHAR_LENGTH(first_name) >= 4;

-- 6) Select all employees whose last name contains ‘ill’ and has salary
-- between 30000 and 50000.

SELECT * FROM employees_data WHERE LOWER(last_name) LIKE '%ill%' AND salary BETWEEN 30000 AND 50000;


-- 7) Select emp_no, first_name and last_name of the employee whose
-- first name starts with 'S' and whose last name contains at least two 'l'
-- characters.

SELECT emp_id,first_name,last_name FROM employees_data 
WHERE LOWER(first_name) LIKE 's%' AND 
LENGTH(last_name) - LENGTH(REPLACE(LOWER(last_name),'l','')) >= 2;

SELECT emp_id,first_name,last_name FROM employees_data 
WHERE LOWER(first_name) LIKE 's%' AND 
LOWER(last_name) LIKE '%l%l%';



-- 8) Select all employees whose joining date is either June 2022 or June
-- 2021 and emp_no is not between 1011 and 1020. 

SELECT * FROM employees_data
WHERE (DATE_FORMAT(joining_date,'%M %Y') = 'June 2022' OR
 DATE_FORMAT(joining_date,'%M %Y') = 'June 2021') AND
 emp_id NOT BETWEEN 11 AND 20;