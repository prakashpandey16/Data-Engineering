CREATE DATABASE IF NOT EXISTS employee_data;
USE employee_data;

CREATE TABLE IF NOT EXISTS employees(
id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
department VARCHAR(50),
salary DECIMAL(10,2),
hire_date DATE
);
INSERT INTO employees (id, name, age, department, salary, hire_date) VALUES
(1, 'Alice Johnson', 30, 'HR', 55000.00, '2019-03-15'),
(2, 'Bob Smith', 45, 'IT', 75000.00, '2018-07-01'),
(3, 'Charlie Brown', 29, 'Finance', 60000.00, '2020-09-23'),
(4, 'David Wilson', 35, 'Marketing', 72000.00, '2017-05-11'),
(5, 'Eve Adams', 28, 'Sales', 50000.00, '2021-06-30'),
(6, 'Frank Miller', 40, 'HR', 62000.00, '2016-08-21'),
(7, 'Grace Lee', 32, 'IT', 81000.00, '2015-04-10'),
(8, 'Henry Clark', 38, 'Finance', 67000.00, '2014-11-05'),
(9, 'Ivy Hall', 27, 'Marketing', 52000.00, '2022-03-14'),
(10, 'John Turner', 33, 'Sales', 54000.00, '2020-07-19'),
(11, 'Karen Scott', 29, 'HR', 58000.00, '2018-12-01'),
(12, 'Leo Martin', 50, 'IT', 88000.00, '2013-06-25'),
(13, 'Mia Young', 24, 'Finance', 49000.00, '2023-01-11'),
(14, 'Nathan Walker', 41, 'Marketing', 74000.00, '2012-09-30'),
(15, 'Olivia Harris', 35, 'Sales', 59000.00, '2019-02-17'),
(16, 'Peter Allen', 37, 'HR', 63000.00, '2015-05-08'),
(17, 'Quinn Foster', 26, 'IT', 71000.00, '2021-11-23'),
(18, 'Rachel Evans', 39, 'Finance', 76000.00, '2010-07-04'),
(19, 'Samuel Baker', 31, 'Marketing', 60000.00, '2016-12-30'),
(20, 'Tina Murphy', 34, 'Sales', 53000.00, '2018-03-16');


CREATE TABLE IF NOT EXISTS students(
id INT PRIMARY KEY,
name varchar(50),
age INT,
class VARCHAR(30)
);
INSERT INTO students (id, name, age, class) VALUES
(1, 'John Doe', 20, 'BCA'),
(2, 'Jane Roe', 22, 'BBA'),
(3, 'Alex Green', 21, 'MBA'),
(4, 'Sophia White', 23, 'BSc'),
(5, 'Michael Blue', 19, 'BA'),
(6, 'Emma Brown', 20, 'BCA'),
(7, 'Liam Johnson', 22, 'BBA'),
(8, 'Olivia Williams', 21, 'MBA'),
(9, 'Noah Smith', 23, 'BSc'),
(10, 'Ava Davis', 19, 'BA'),
(11, 'William Clark', 20, 'BCA'),
(12, 'Sophia Martinez', 22, 'BBA'),
(13, 'James Taylor', 21, 'MBA'),
(14, 'Isabella Thomas', 23, 'BSc'),
(15, 'Benjamin Wilson', 19, 'BA'),
(16, 'Charlotte Garcia', 20, 'BCA'),
(17, 'Ethan Harris', 22, 'BBA'),
(18, 'Amelia Martin', 21, 'MBA'),
(19, 'Mason Young', 23, 'BSc'),
(20, 'Harper Walker', 19, 'BA');


CREATE TABLE IF NOT EXISTS products(
id INT PRIMARY KEY,
name VARCHAR(40),
price DECIMAL(10,2)
);

INSERT INTO products (id, name, price) VALUES
(1, 'Laptop', 850.00),
(2, 'Phone', 500.00),
(3, 'Tablet', 300.00),
(4, 'Monitor', 200.00),
(5, 'Keyboard', 50.00),
(6, 'Mouse', 30.00),
(7, 'Headphones', 120.00),
(8, 'Smartwatch', 250.00),
(9, 'Printer', 400.00),
(10, 'Scanner', 450.00),
(11, 'Router', 90.00),
(12, 'Speakers', 150.00),
(13, 'External HDD', 200.00),
(14, 'SSD', 220.00),
(15, 'RAM', 130.00),
(16, 'Graphic Card', 1200.00),
(17, 'Processor', 300.00),
(18, 'Motherboard', 250.00),
(19, 'Power Supply', 110.00),
(20, 'Cooling Fan', 40.00);


CREATE TABLE IF NOT EXISTS customers(
id INT PRIMARY KEY,
name VARCHAR(50),
city VARCHAR(50),
email VARCHAR(50)
);

INSERT INTO customers (id, name, city, email) VALUES
(1, 'Emma Watson', 'New York', 'emma@gmail.com'),
(2, 'Liam Smith', 'Los Angeles', 'liam@yahoo.com'),
(3, 'Olivia Johnson', 'Chicago', 'olivia@gmail.com'),
(4, 'Noah Brown', 'Houston', 'noah@hotmail.com'),
(5, 'Ava Davis', 'Phoenix', 'ava@yahoo.com'),
(6, 'Ethan Harris', 'San Francisco', 'ethan@gmail.com'),
(7, 'Charlotte Garcia', 'Dallas', 'charlotte@hotmail.com'),
(8, 'Mason Young', 'Boston', 'mason@yahoo.com'),
(9, 'Sophia Martinez', 'Seattle', 'sophia@gmail.com'),
(10, 'James Taylor', 'Miami', 'james@yahoo.com'),
(11, 'Isabella Lee', 'Denver', 'isabella@gmail.com'),
(12, 'William Clark', 'Las Vegas', 'william@yahoo.com'),
(13, 'Mia Walker', 'San Diego', 'mia@hotmail.com'),
(14, 'Benjamin Hall', 'Portland', 'benjamin@gmail.com'),
(15, 'Amelia Allen', 'Atlanta', 'amelia@yahoo.com'),
(16, 'Elijah Wright', 'Austin', 'elijah@hotmail.com'),
(17, 'Harper Lewis', 'San Jose', 'harper@gmail.com'),
(18, 'Lucas Hill', 'Indianapolis', 'lucas@yahoo.com'),
(19, 'Evelyn Scott', 'Columbus', 'evelyn@hotmail.com'),
(20, 'Alexander Adams', 'Charlotte', 'alexander@gmail.com');



CREATE TABLE IF NOT EXISTS orders(
id INT PRIMARY KEY,
customer_id INT,
product_id INT,
order_date DATE,
total_amount DECIMAL(10,2),
FOREIGN KEY (customer_id) REFERENCES customers(id)
);

INSERT INTO orders (id, customer_id, product_id, order_date, total_amount) VALUES
(1, 1, 2, '2024-01-10', 500.00),
(2, 3, 1, '2024-01-12', 850.00),
(3, 2, 5, '2024-01-15', 50.00),
(4, 5, 3, '2024-01-18', 300.00),
(5, 4, 8, '2024-01-20', 250.00),
(6, 7, 4, '2024-01-22', 400.00),
(7, 6, 6, '2024-01-25', 150.00),
(8, 8, 7, '2024-01-27', 600.00),
(9, 9, 9, '2024-01-30', 700.00),
(10, 10, 10, '2024-02-02', 100.00),
(11, 11, 3, '2024-02-05', 200.00),
(12, 12, 5, '2024-02-08', 350.00),
(13, 13, 1, '2024-02-10', 500.00),
(14, 14, 8, '2024-02-12', 450.00),
(15, 15, 2, '2024-02-15', 750.00),
(16, 16, 7, '2024-02-18', 900.00),
(17, 17, 6, '2024-02-20', 250.00),
(18, 18, 4, '2024-02-22', 150.00),
(19, 19, 9, '2024-02-25', 800.00),
(20, 20, 10, '2024-02-28', 300.00);


SELECT * FROM employees;

SELECT * FROM students;
SELECT * FROM products;
SELECT * FROM customers;
SELECT * FROM orders;


-- 1. Retrieve all columns from an employees table.
SELECT * FROM employees; 

--  2. Display only the name and age columns from students.
SELECT name,age FROM students; 

-- 3. Find products with a price greater than 500 from products.
SELECT * FROM products WHERE  price >500;

-- 4. Retrieve distinct cities from a customers table.
SELECT DISTINCT city FROM customers; 

-- 5. Get the count of all customers in the customers table.
SELECT COUNT(*) AS customers_count FROM  customers;  

-- 6. Retrieve all employees hired after 2020-01-01.
SELECT * FROM  employees WHERE hire_date > "2020-01-01"; 

-- 7. Find all orders where the total amount is between 200 and 500.
SELECT * FROM orders WHERE total_amount BETWEEN 200 AND 500; 

-- 8. List all students whose names start with "S".
SELECT * FROM students WHERE name LIKE "S%";

-- 9. Retrieve all customers from customers who live in "New York"
SELECT * FROM customers WHERE city = "New York"; 


-- 10. Count how many employees are in each department (GROUP BY)
SELECT DISTINCT(department) as Department , COUNT(*) AS Department_count
FROM employees 
GROUP BY Department;

-- 11. Find the average salary of all employees.
SELECT AVG(salary) as Avg_salary from employees; 

-- 12. Retrieve the maximum and minimum salary from employees.
SELECT MAX(salary) as Max_salary,MIN(salary) as Min_salary
FROM employees; 

-- 13. Display all orders placed on "2024-01-15"
SELECT  * FROM orders  WHERE order_date = "2024-01-15";

-- 14. Show the top 5 highest-paid employees.
SELECT * FROM employees ORDER BY salary DESC LIMIT 10;

-- 15. Retrieve customer names in ascending order
SELECT name FROM customers ORDER BY name ASC; 

-- 16. Retrieve the last 10 rows from orders (Hint: ORDER BY DESC LIMIT)
SELECT * FROM orders ORDER BY order_date DESC LIMIT 10; 

-- 17. Find customers who have either "gmail.com" or "yahoo.com" email domains.
SELECT * FROM customers WHERE email LIKE "%gmail.com" OR email LIKE "%yahoo.com";

-- 18. Retrieve employees whose age is between 25 and 40
SELECT * FROM employees WHERE age BETWEEN 25 AND 40;
  
-- 19. Count how many unique products exist in products.
SELECT DISTINCT name AS  Unique_products FROM products;

-- 20. Find all orders where the order total is greater than 200 and ordered after "2024-02-02".

SELECT * FROM orders WHERE total_amount>200 AND order_date>"2024-02-02";
 
-- 21. Show employees whose name contains "Eva" anywhere
SELECT * FROM employees WHERE name LIKE '%Eva%';

-- 22. Retrieve employees who do not belong to the "HR" department.
SELECT * FROM employeeS WHERE NOT department = "HR"; 

-- 23. Find all students whose names have 10 letters.
SELECT * FROM students WHERE LENGTH(name) =  10; 

-- 24. Retrieve employees whose name starts with "A" and ends with "n"
SELECT * FROM employees WHERE name LIKE 'A%n';

-- 25. Find products with prices in the range 500, 1000, 1500.
SELECT * FROM products WHERE price IN (500,1000,15000);
SELECT * FROM Products WHERE price BETWEEN 500 AND 1500;

-- 26. Retrieve all employees but exclude salary column from results.
SELECT * FROM employees;
SELECT id,name,age,department,hire_date FROM employees;

-- 27. Find how many employees do not have a manager.
SELECT COUNT(*) AS Null_manager_rows FROM employees WHERE manager_id IS NULL;

-- 28. Find employees whose name contains at least one "a" and one "e"
SELECT * FROM employees WHERE name LIKE "%a%" AND name LIKE "%e%";

-- 29. Show the first names of employees, but in uppercase.
SELECT UPPER(name) AS Uppercase_name FROM employees ;
SELECT UPPER(SUBSTRING_INDEX(name," ",1)) as First_name_as_uppercase FROM employees;

-- 30. Retrieve employees' names and their salaries in descending order of salary. 
SELECT name,salary FROM employees ORDER BY salary DESC;

-- 31. Find employees whose salaries are in the top 10%.
-- first we have to learn that topic after that i solve this thing

-- add new column birth date in students

ALTER TABLE students ADD COLUMN birth_date DATE;

UPDATE students SET birth_date = '2004-03-15' WHERE id = 1;
UPDATE students SET birth_date = '2002-07-22' WHERE id = 2;
UPDATE students SET birth_date = '2003-05-10' WHERE id = 3;
UPDATE students SET birth_date = NULL WHERE id = 4;  
UPDATE students SET birth_date = '2005-12-01' WHERE id = 5;
UPDATE students SET birth_date = '2004-04-20' WHERE id = 6;
UPDATE students SET birth_date = NULL WHERE id = 7;  
UPDATE students SET birth_date = '2003-09-05' WHERE id = 8;
UPDATE students SET birth_date = '2001-11-14' WHERE id = 9;
UPDATE students SET birth_date = NULL WHERE id = 10; 
UPDATE students SET birth_date = '2004-01-09' WHERE id = 11;
UPDATE students SET birth_date = '2002-10-30' WHERE id = 12;
UPDATE students SET birth_date = '2003-03-07' WHERE id = 13;
UPDATE students SET birth_date = NULL WHERE id = 14; 
UPDATE students SET birth_date = '2005-06-14' WHERE id = 15;
UPDATE students SET birth_date = NULL WHERE id = 16; 
UPDATE students SET birth_date = '2002-09-16' WHERE id = 17;
UPDATE students SET birth_date = '2003-07-21' WHERE id = 18;
UPDATE students SET birth_date = '2001-05-03' WHERE id = 19;
UPDATE students SET birth_date = '2005-11-11' WHERE id = 20;


SELECT * FROM students;

-- 32. Get all students except those with NULL birthdates
SELECT * FROM students WHERE birth_date IS NOT NULL;

-- 33. Find the first and last customer alphabetically.
(SELECT * FROM customers ORDER BY name ASC LIMIT 1)
UNION
(SELECT * FROM customers ORDER BY name DESC LIMIT 1);

-- 34. Retrieve employees who were hired on a Monday (Hint: DAYOFWEEK()).
SELECT * FROM employees WHERE 	DAYOFWEEK(hire_date) = 2;
SELECT * FROM employees WHERE DAYNAME(hire_date) = 'MONDAY';


-- 35. Get orders placed in the last 30 days



-- 37. Retrieve the 2nd highest salary using LIMIT.
SELECT * FROM employees ORDER BY salary  DESC LIMIT 1 OFFSET 1;

-- Add new column email in employees table
ALTER TABLE employees ADD COLUMN email VARCHAR(40);

UPDATE employees SET email = 'alice.johnson@example.com' WHERE id = 1;
UPDATE employees SET email = 'bob.smith@example.com' WHERE id = 2;
UPDATE employees SET email = 'charlie.brown@example.com' WHERE id = 3;
UPDATE employees SET email = 'david.wilson@example.com' WHERE id = 4;
UPDATE employees SET email = 'eve.adams@example.com' WHERE id = 5;
UPDATE employees SET email = NULL WHERE id = 6;
UPDATE employees SET email = 'grace.lee@example.com' WHERE id = 7;
UPDATE employees SET email = 'henry.clark@example.com' WHERE id = 8;
UPDATE employees SET email = NULL WHERE id = 9;
UPDATE employees SET email = 'john.turner@example.com' WHERE id = 10;
UPDATE employees SET email = 'karen.scott@example.com' WHERE id = 11;
UPDATE employees SET email = 'leo.martin@example.com' WHERE id = 12;
UPDATE employees SET email = NULL WHERE id = 13;
UPDATE employees SET email = 'nathan.walker@example.com' WHERE id = 14;
UPDATE employees SET email = 'olivia.harris@example.com' WHERE id = 15;
UPDATE employees SET email = NULL WHERE id = 16;
UPDATE employees SET email = 'quinn.foster@example.com' WHERE id = 17;
UPDATE employees SET email = 'rachel.evans@example.com' WHERE id = 18;
UPDATE employees SET email = NULL WHERE id = 19;
UPDATE employees SET email = 'tina.murphy@example.com' WHERE id = 20;

SELECT * FROM employees;

-- 38. Show all employees who do not have an email address.
SELECT * FROM employees WHERE email IS NOT NULL;

-- 39. Find students born in either 2001, 2005, or 2002.
SELECT * FROM students WHERE YEAR(birth_date) IN (2001,2002,2005);

-- 40. Display customers who have the word "shop" in their company name
SELECT * FROM customers;

SELECT * FROM employees;





