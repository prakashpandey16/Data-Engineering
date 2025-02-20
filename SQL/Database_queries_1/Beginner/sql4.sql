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

SHOW TABLES;
SELECT * FROM employees;
SELECT * FROM students;
SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;



SELECT name , age FROM students;
SELECT * FROM products WHERE price>500;

SELECT DISTINCT city from customers;
SELECT COUNT(*) AS Total_Customers_count FROM customers;
SELECT * FROM employees WHERE hire_date>"2020-01-01";
SELECT * FROM products WHERE price BETWEEN 200 AND 1000;
SELECT * FROM students WHERE name LIKE "A%";

SELECT * FROM customers WHERE city = "New York";

SELECT DISTINCT department AS Unique_department , COUNT(*) AS Employees_Count
FROM employees 
GROUP BY Unique_department
ORDER BY employees_count ASC;

SELECT AVG(salary) AS avg_salary FROM employees;
SELECT MAX(salary) AS Maximum_salary , MIN(salary) AS Min_salary FROM employees;


SELECT * FROM orders WHERE order_date = "2024-02-02";
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;
SELECT * FROM orders ORDER BY order_date DESC LIMIT 10;


-- 17. Find customers who have either "gmail.com" or "yahoo.com" email domains.
SELECT * FROM customers; 
SELECT * FROM customers WHERE email LIKE "%gmail.com" OR email LIKE "%yahoo.com";
SELECT * FROM employees WHERE age BETWEEN 25 AND 40;
SELECT DISTINCT name FROM products;


-- 20. Find all orders where the order total is greater than 2000 and ordered after"2023-01-01"
SELECT * FROM orders;
SELECT * FROM orders WHERE total_amount > 200 AND order_date >"2024-02-01"; 

SELECT * FROM employees WHERE name LIKE "%John%";

SELECT * FROM employees WHERE NOT department = "HR";

SELECT * FROM students WHERE CHAR_LENGTH(name) = 10;

-- 24. Retrieve employees whose name starts with "A" and ends with "n".

SELECT * FROM employees WHERE  name LIKE "A%%n"; 

-- 25. Find products with prices in the range 500, 1000, 1500.
SELECT DISTINCT * FROM products WHERE price BETWEEN 500 AND 1500;

-- 26. Retrieve all employees but exclude salary column from results. 
SELECT * FROM employees;
SELECT id,name,age,department,email,hire_date FROM employees;

-- 27. Find how many employees do not have a manager.
SELECT COUNT(*) AS null_manager_count FROM employees WHERE manager_id IS NULL;

-- 28. Find employees whose name contains at least one "a" and one "e".
SELECT * FROM employees WHERE name LIKE "%a%" AND name LIKE "%e%";

-- 29. Show the first names of employees, but in uppercase.
SELECT  UPPER(name) AS uppercase_name from employees;
SELECT UPPER(SUBSTRING_INDEX(name," ",1)) AS first_name_as_uppercase FROM employees;

-- 30. Retrieve employees' names and their salaries in descending order of salary 
SELECT name ,salary FROM employees ORDER BY salary DESC;
 
 
-- 31. Find employees whose salaries are in the top 10%
SELECT * FROM employees ORDER BY salary DESC LIMIT 2;

-- 32. Get all students except those with NULL birthdates.
SELECT * FROM students WHERE birth_date IS NOT NULL; 

-- 33. Find the first and last customer alphabetically.

(SELECT * FROM customers ORDER BY name ASC LIMIT 1)
UNION
(SELECT * FROM customers ORDER BY name DESC LIMIT 1);

-- 34. Retrieve employees who were hired on a Monday 

SELECT * FROM employees WHERE DAYOFWEEK(hire_date) = 2; 
SELECT *  FROM employees WHERE DAYNAME(hire_date) = "Monday";

-- 35. Get orders placed in the last 30 days


-- 37. Retrieve the 2nd highest salary using LIMIT.
SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 1;

-- 38. Show all employees who do not have an email address.

SELECT * FROM employees WHERE email IS NULL; 

-- 39. Find students born in either 1998, 2000, or 2002
SELECT * FROM employees WHERE YEAR(birth_date) IN (1998,2000,2002); 

-- 40. Display customers who have the word "shop" in their company name.
SELECT * FROM customers WHERE company_name LIKE "%shop%"; 

