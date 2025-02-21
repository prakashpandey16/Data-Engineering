CREATE DATABASE IF NOT EXISTS Solve_problem;
USE Solve_problem;

CREATE TABLE IF NOT EXISTS employees(
employee_id INT PRIMARY KEY,
first_name  VARCHAR(30),
last_name VARCHAR(30),
department VARCHAR(50),
salary 	DECIMAL(10,2),
hire_date DATE
);

INSERT INTO employees (employee_id,first_name,last_name,department,salary,hire_date)
 VALUES
(1, 'Alice', 'Johnson', 'HR', 55000, '2019-06-10'),
(2, 'Bob', 'Smith', 'IT', 70000, '2018-08-22'),
(3, 'Charlie', 'Brown', 'Finance', 80000, '2020-01-15'),
(4, 'David', 'Williams', NULL, 75000, '2021-03-25'),
(5, 'Eve', 'Davis', 'HR', NULL, '2017-12-05'),
(6, 'Frank', 'Miller', 'Finance', 95000, NULL),
(7, 'Grace', 'Taylor', 'IT', 72000, '2019-11-11'),
(8, 'Hank', 'Anderson', 'Marketing', 62000, '2022-09-18'),
(9, 'Ivy', 'Clark', 'HR', 58000, '2020-02-20'),
(10, 'Jack', 'Evans', 'Finance', 88000, '2018-06-30'),
(11, 'Kathy', 'White', 'IT', 71000, NULL),
(12, 'Leo', 'Harris', NULL, 53000, '2016-09-10'),
(13, 'Mia', 'Martin', 'Finance', 97000, '2015-03-22'),
(14, 'Nathan', 'Scott', 'HR', NULL, '2021-08-19'),
(15, 'Olivia', 'Moore', 'Marketing', 65000, '2017-10-14'),
(16, 'Peter', 'Walker', 'IT', 76000, '2019-01-11'),
(17, 'Quincy', 'Hall', NULL, NULL, NULL),
(18, 'Rachel', 'Allen', 'Finance', 92000, '2020-07-05'),
(19, 'Steve', 'Young', 'Marketing', 63000, NULL),
(20, 'Tina', 'Adams', 'HR', 60000, '2016-11-30'),

(21, 'Umar', 'Nelson', 'IT', NULL, '2018-05-15'),
(22, 'Violet', 'Parker', 'Finance', 85000, '2019-02-28'),
(23, 'Will', 'Baker', NULL, 57000, '2017-07-18'),
(24, 'Xander', 'Carter', 'Marketing', 69000, NULL),
(25, 'Yara', 'Reed', 'IT', 74000, '2015-04-09'),
(26, 'Zane', 'Howard', 'HR', NULL, '2019-12-31'),
(27, 'Alex', 'Foster', 'Finance', 89000, NULL),
(28, 'Brian', 'Gonzalez', 'Marketing', NULL, '2022-01-20'),
(29, 'Carla', 'Hughes', 'IT', 73000, '2021-06-15'),
(30, 'Derek', 'Simmons', NULL, NULL, NULL),
(31, 'Eva', 'Stewart', 'Finance', 92000, '2023-03-11'),
(32, 'Finn', 'Roberts', 'IT', 78000, '2016-05-25'),
(33, 'Gina', 'Long', NULL, NULL, '2018-07-30'),
(34, 'Henry', 'Turner', 'HR', NULL, NULL),
(35, 'Isla', 'Murphy', 'Marketing', 67000, '2022-12-10'),
(36, 'Jake', 'Sanders', 'Finance', 95000, '2020-09-05'),
(37, 'Lena', 'Price', 'IT', NULL, '2019-03-14'),
(38, 'Mason', 'Collins', 'HR', 60000, NULL),
(39, 'Nora', 'Cook', NULL, 54000, '2015-06-20'),
(40, 'Owen', 'Ward', 'Finance', 87000, NULL),
(41, 'Paula', 'Richardson', 'IT', 77000, '2021-02-22'),
(42, 'Quinn', 'Cruz', NULL, NULL, NULL),
(43, 'Ryan', 'Hill', 'Marketing', 66000, '2022-08-18'),
(44, 'Sophia', 'Mitchell', 'Finance', 93000, '2017-10-31'),
(45, 'Travis', 'Adkins', 'HR', NULL, '2020-04-23'),
(46, 'Ursula', 'Bryant', 'Marketing', NULL, '2018-12-29'),
(47, 'Victor', 'Watson', NULL, 59000, '2019-05-08'),
(48, 'Wendy', 'Brooks', 'IT', 75000, '2016-10-21'),
(49, 'Xavier', 'Kelly', 'Finance', 91000, NULL),
(50, 'Yasmine', 'Morgan', 'HR', 62000, '2017-07-09'),
(51, 'Zack', 'Barnes', 'Marketing', 64000, NULL),
(52, 'Ariana', 'Russell', 'Finance', NULL, '2015-02-14'),
(53, 'Blake', 'Hawkins', NULL, 57000, '2016-12-17'),
(54, 'Cassie', 'Knight', 'HR', 59000, '2018-11-10'),
(55, 'Dylan', 'Pearson', 'IT', NULL, NULL),
(56, 'Elena', 'Cole', 'Marketing', 71000, '2021-03-19'),
(57, 'Felix', 'Graham', 'Finance', 96000, '2019-09-05'),
(58, 'Gabriella', 'Holt', NULL, 53000, '2022-10-08'),
(59, 'Harvey', 'Douglas', 'IT', 78000, '2017-06-24'),
(60, 'Isabel', 'Bennett', NULL, NULL, NULL),
(61, 'Jacob', 'Gibson', 'Marketing', 67000, '2019-08-30'),
(62, 'Karen', 'Fleming', 'Finance', NULL, '2020-12-17'),
(63, 'Liam', 'Ramirez', 'HR', 60000, '2015-05-11'),
(64, 'Molly', 'Daniels', 'IT', NULL, '2016-07-20'),
(65, 'Nathaniel', 'Jenkins', NULL, 55000, NULL),
(66, 'Olga', 'Ortiz', 'Finance', 94000, '2023-01-13'),
(67, 'Peter', 'Harrison', 'Marketing', 68000, '2018-03-29'),
(68, 'Quincy', 'Webb', 'IT', NULL, '2017-11-15'),
(69, 'Ryan', 'Fitzgerald', NULL, 52000, '2021-09-02'),
(70, 'Sophia', 'Cunningham', 'HR', NULL, NULL);

CREATE TABLE IF NOT EXISTS customers(
customer_id INT PRIMARY KEY,
customer_name VARCHAR(100),
city VARCHAR(50),
age INT 
);

INSERT INTO customers (customer_id,customer_name,city,age)
VALUES
(1, 'John Doe', 'Jaipur', 28),
(2, 'Jane Smith', 'Mumbai', 34),
(3, 'Robert Johnson', 'Delhi', 45),
(4, 'Emily Davis', 'Bangalore', NULL),
(5, 'Michael Wilson', 'Pune', 31),
(6, 'Linda Martinez', NULL, 39),
(7, 'David Anderson', 'Hyderabad', 47),
(8, 'Susan Taylor', 'Kolkata', 36),
(9, NULL, 'Ahmedabad', 27),
(10, 'Patricia Jackson', 'Surat', 30),
(11, 'Christopher Lee', 'Jaipur', 32),
(12, 'Barbara White', 'Mumbai', 38),
(13, 'Daniel Harris', 'Delhi', 42),
(14, 'Lisa Clark', NULL, 25),
(15, 'Paul Rodriguez', 'Pune', NULL),
(16, 'Nancy Lewis', 'Chennai', 37),
(17, 'Mark Walker', 'Hyderabad', 44),
(18, 'Karen Hall', 'Kolkata', 41),
(19, 'Steven Allen', NULL, 35),
(20, 'Betty Young', 'Surat', 40),
(21, 'Andrew Hernandez', 'Jaipur', 26),
(22, 'Deborah King', 'Mumbai', NULL),
(23, 'Joshua Wright', 'Delhi', 48),
(24, 'Sandra Scott', 'Bangalore', 43),
(25, 'Kevin Green', 'Pune', 37),
(26, 'Donna Adams', 'Chennai', NULL),
(27, 'Brian Baker', 'Hyderabad', 46),
(28, 'Ruth Gonzalez', 'Kolkata', 34),
(29, 'Jason Nelson', 'Ahmedabad', 31),
(30, 'Helen Carter', 'Surat', 33),
(31, 'Ryan Mitchell', NULL, 28),
(32, 'Laura Perez', 'Mumbai', 36),
(33, 'Timothy Roberts', 'Delhi', 44),
(34, 'Doris Phillips', 'Bangalore', 27),
(35, 'George Evans', 'Pune', 38),
(36, 'Carol Turner', 'Chennai', 41),
(37, 'Edward Perez', 'Hyderabad', 32),
(38, 'Janet Parker', 'Kolkata', 45),
(39, 'Patrick Collins', 'Ahmedabad', 29),
(40, 'Christine Edwards', 'Surat', 37),
(41, 'Stephen Stewart', 'Jaipur', 33),
(42, 'Anna Morris', 'Mumbai', 30),
(43, 'Frankie Rogers', NULL, 39),
(44, 'Martha Sanchez', 'Bangalore', 43),
(45, 'Joe Barnes', 'Pune', 35),
(46, 'Debra Ross', 'Chennai', 40),
(47, 'Henry Diaz', 'Hyderabad', 46),
(48, 'Sophie Murphy', 'Kolkata', 28),
(49, 'Albert Kelly', 'Ahmedabad', 47),
(50, 'Jean Howard', 'Surat', 36),
(51, 'Jack Ward', 'Jaipur', 34),
(52, 'Alice Cox', 'Mumbai', 31),
(53, 'Ralph Sanders', 'Delhi', 48),
(54, 'Sarah Price', 'Bangalore', 29),
(55, 'Wayne Russell', 'Pune', 32),
(56, 'Catherine Torres', 'Chennai', NULL),
(57, 'Walter Reed', 'Hyderabad', 44),
(58, 'Virginia Butler', 'Kolkata', 41),
(59, 'Roy Powell', NULL, 46),
(60, 'Beverly Howard', 'Surat', 35),
(61, 'Philip Hughes', 'Jaipur', 37),
(62, 'Victoria Marshall', 'Mumbai', 42),
(63, 'Eric Simmons', 'Delhi', 47),
(64, 'Amy Sanders', 'Bangalore', 27),
(65, 'Benjamin Clark', NULL, 38),
(66, 'Gloria Patterson', 'Chennai', 31),
(67, 'Johnny Bell', 'Hyderabad', 43),
(68, 'Theresa Ward', 'Kolkata', 36),
(69, 'Arthur Young', 'Ahmedabad', 40),
(70, 'Shirley King', 'Surat', 29);


CREATE TABLE IF NOT EXISTS orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
order_status VARCHAR(50),
amount DECIMAL(10,2),
FOREIGN KEY(customer_id) REFERENCES customers(customer_id)
);

INSERT INTO orders (order_id, customer_id, order_date, order_status, amount) VALUES
(1, 1, '2025-01-01', 'Pending', 150.00),
(2, 2, '2025-01-02', 'Shipped', 200.00),
(3, 3, '2025-01-03', 'Delivered', 250.00),
(4, 4, '2025-01-04', 'Cancelled', 0.00),
(5, NULL, '2025-01-05', NULL, NULL),
(6, 6, NULL, 'Pending', NULL),
(7, 7, '2025-01-07', 'Shipped', 350.00),
(8, NULL, '2025-01-08', 'Delivered', 400.00),
(9, 9, '2025-01-09', 'Cancelled', 0.00),
(10, 10, NULL, 'Pending', 100.00),
(11, 11, '2025-01-11', NULL, 150.00),
(12, NULL, '2025-01-12', 'Shipped', 200.00),
(13, 13, '2025-01-13', 'Delivered', 250.00),
(14, 14, '2025-01-14', 'Cancelled', 0.00),
(15, NULL, '2025-01-15', 'Pending', NULL),
(16, 16, NULL, 'Shipped', 300.00),
(17, 17, '2025-01-17', NULL, 350.00),
(18, NULL, '2025-01-18', 'Delivered', 400.00),
(19, 19, '2025-01-19', 'Cancelled', 0.00),
(20, 20, '2025-01-20', 'Pending', 100.00),
(21, NULL, '2025-01-21', 'Shipped', 150.00),
(22, 22, '2025-01-22', NULL, 200.00),
(23, 23, '2025-01-23', 'Delivered', 250.00),
(24, NULL, '2025-01-24', 'Cancelled', 0.00),
(25, 25, '2025-01-25', 'Pending', NULL),
(26, 26, NULL, 'Shipped', 300.00),
(27, 27, '2025-01-27', 'Delivered', 350.00),
(28, NULL, '2025-01-28', 'Cancelled', 0.00),
(29, 29, '2025-01-29', NULL, 100.00),
(30, 30, '2025-01-30', 'Pending', 150.00),
(31, NULL, '2025-01-31', 'Shipped', 200.00),
(32, 32, NULL, 'Delivered', 250.00),
(33, 33, '2025-02-01', 'Cancelled', 0.00),
(34, NULL, '2025-02-02', 'Pending', 100.00),
(35, 35, NULL, 'Shipped', 150.00),
(36, 36, '2025-02-03', 'Delivered', NULL),
(37, NULL, '2025-02-04', 'Cancelled', 0.00),
(38, 38, '2025-02-05', 'Pending', 150.00),
(39, 39, NULL, 'Shipped', 200.00),
(40, 40, '2025-02-06', 'Delivered', 250.00),
(41, NULL, '2025-02-07', 'Cancelled', 0.00),
(42, 42, NULL, 'Pending', 100.00),
(43, 43, '2025-02-08', 'Shipped', 150.00),
(44, NULL, '2025-02-09', 'Delivered', 200.00),
(45, 45, '2025-02-10', 'Cancelled', 0.00),
(46, NULL, '2025-02-11', 'Pending', 100.00),
(47, 47, NULL, 'Shipped', 150.00),
(48, 48, '2025-02-12', 'Delivered', 200.00),
(49, NULL, '2025-02-13', 'Cancelled', NULL),
(50, 50, '2025-02-14', 'Pending', 150.00),
(51, 51, NULL, 'Shipped', 200.00),
(52, NULL, '2025-02-15', 'Delivered', 250.00),
(53, 53, '2025-02-16', 'Cancelled', 0.00),
(54, 54, NULL, 'Pending', 100.00),
(55, 55, '2025-02-17', 'Shipped', NULL),
(56, NULL, '2025-02-18', 'Delivered', 150.00),
(57, 57, '2025-02-19', 'Cancelled', 0.00),
(58, NULL, '2025-02-20', 'Pending', 100.00),
(59, 59, '2025-02-21', 'Shipped', 150.00),
(60, 60, NULL, 'Delivered', 200.00),
(61, 61, '2025-02-22', 'Cancelled', 0.00),
(62, NULL, '2025-02-23', 'Pending', 100.00),
(63, 63, NULL, 'Shipped', 150.00),
(64, NULL, '2025-02-24', 'Delivered', 200.00),
(65, 65, '2025-02-25', 'Cancelled', 0.00),
(66, NULL, '2025-02-26', 'Pending', 100.00),
(67, 67, NULL, 'Shipped', 150.00),
(68, 68, '2025-02-27', 'Delivered', 200.00),
(69, 69, '2025-02-28', 'Cancelled', 0.00),
(70, NULL, '2025-03-01', 'Pending', 100.00);

CREATE TABLE IF NOT EXISTS sales(
sale_id INT PRIMARY KEY,
product_category VARCHAR(50),
city VARCHAR(40),
total_sales DECIMAL(10,2)
);

INSERT INTO sales (sale_id, product_category, city, total_sales) VALUES
(1, 'Electronics', 'Jaipur', 1500.00),
(2, 'Clothing', 'Mumbai', 1200.00),
(3, 'Furniture', 'Delhi', 1800.00),
(4, 'Books', 'Chennai', 500.00),
(5, NULL, 'Bangalore', NULL),
(6, 'Electronics', NULL, 2000.00),
(7, 'Clothing', 'Hyderabad', 1400.00),
(8, 'Furniture', NULL, 2200.00),
(9, 'Books', 'Kolkata', 700.00),
(10, 'Electronics', 'Pune', NULL),
(11, NULL, 'Ahmedabad', 1100.00),
(12, 'Clothing', 'Surat', 1300.00),
(13, NULL, 'Jaipur', 1500.00),
(14, 'Books', NULL, 800.00),
(15, 'Furniture', 'Mumbai', NULL),
(16, 'Electronics', NULL, 2100.00),
(17, 'Clothing', 'Delhi', 1600.00),
(18, 'Books', 'Chennai', NULL),
(19, NULL, 'Bangalore', 600.00),
(20, 'Furniture', 'Hyderabad', NULL),
(21, 'Electronics', 'Kolkata', 1800.00),
(22, 'Clothing', NULL, 1200.00),
(23, 'Furniture', 'Pune', 1700.00),
(24, 'Books', 'Ahmedabad', NULL),
(25, 'Electronics', NULL, 2000.00),
(26, 'Clothing', 'Surat', NULL),
(27, 'Furniture', 'Jaipur', 1900.00),
(28, 'Books', 'Mumbai', 600.00),
(29, NULL, 'Delhi', 700.00),
(30, 'Clothing', 'Chennai', NULL),
(31, 'Electronics', 'Bangalore', 2300.00),
(32, NULL, 'Hyderabad', 1400.00),
(33, 'Furniture', 'Kolkata', NULL),
(34, 'Books', 'Pune', 900.00),
(35, 'Electronics', 'Ahmedabad', 2100.00),
(36, 'Clothing', NULL, 1500.00),
(37, 'Furniture', 'Surat', 1800.00),
(38, 'Books', 'Jaipur', NULL),
(39, NULL, 'Mumbai', 700.00),
(40, 'Electronics', 'Delhi', 1600.00),
(41, 'Clothing', NULL, 1300.00),
(42, 'Furniture', 'Chennai', 1900.00),
(43, 'Books', 'Bangalore', NULL),
(44, 'Electronics', 'Hyderabad', 2200.00),
(45, NULL, 'Kolkata', 900.00),
(46, 'Clothing', 'Pune', NULL),
(47, 'Furniture', 'Ahmedabad', 2000.00),
(48, 'Books', NULL, 800.00),
(49, 'Electronics', 'Surat', 2300.00),
(50, 'Clothing', NULL, 1400.00),
(51, 'Furniture', 'Jaipur', 2100.00),
(52, 'Books', 'Mumbai', NULL),
(53, NULL, 'Delhi', 1000.00),
(54, 'Electronics', 'Chennai', 1800.00),
(55, 'Clothing', 'Bangalore', NULL),
(56, 'Furniture', 'Hyderabad', 2200.00),
(57, 'Books', 'Kolkata', 1100.00),
(58, 'Electronics', NULL, 1900.00),
(59, 'Clothing', 'Pune', NULL),
(60, 'Furniture', 'Ahmedabad', 1700.00),
(61, NULL, 'Surat', 1200.00),
(62, 'Electronics', 'Jaipur', NULL),
(63, 'Clothing', 'Mumbai', 1400.00),
(64, 'Books', 'Delhi', 800.00),
(65, NULL, 'Chennai', 700.00),
(66, 'Furniture', 'Bangalore', 2000.00),
(67, 'Electronics', 'Hyderabad', NULL),
(68, NULL, 'Kolkata', 900.00),
(69, 'Clothing', 'Pune', 1500.00),
(70, 'Furniture', 'Ahmedabad', NULL);

SELECT * FROM employees;
SELECT * FROM customers;
SELECT * FROM orders;
SELECT * FROM sales;

-- 1. Write an SQL query to fetch all records from the employees table where the salary is greater than 50,000.
SELECT *  FROM employees WHERE salary >50000;

-- 2. Retrieve the names and ages of customers from the customers table who are between 25 and 40 years old.
 
SELECT customer_name,age FROM customers  WHERE age BETWEEN 25 AND 40;

-- 3. Write a query to find all orders from the orders table placed between
-- '2024-01-01' and '2024-02-01'. 

SELECT * FROM orders where order_date BETWEEN "2025-01-01" AND "2025-02-01";

-- 4. Retrieve all unique job titles from the employees table using DISTINCT
SELECT DISTINCT department FROM employees;

-- 5. Write a query to fetch employees whose first_name starts with ‘A’ and ends with
-- ‘e’

SELECT * FROM employees WHERE first_name LIKE "A%%e";

-- 6. Retrieve the top 5 highest-paid employees from the employees table
SELECT * FROM employees ORDER BY salary DESC LIMIT 5;

-- 7. Fetch all employees from the employees table and order them by their hiring date in
-- descending order.

SELECT * FROM employees ORDER BY hire_date DESC;

-- 8. Retrieve all orders where the order_status is either 'Shipped', 'Delivered',
-- or 'Processing' using the IN operator.

SELECT * FROM orders WHERE order_status IN ("Shipped","Delivered","Processing");

-- 9. Fetch all employees whose last_name contains the letter ‘o’ anywhere in the name

SELECT * FROM employees WHERE last_name LIKE '%O%' ;

-- 10. Write a query to find all customers from the customers table whose name does not
-- start with ‘J’ and is not located in ‘New York’.

SELECT * FROM customers WHERE  LOWER(customer_name) NOT LIKE 'J%' AND   LOWER(city) <> 'new york';

-- 11. Find the total number of customers in the customers table.
SELECT COUNT(*) as Total_customer_count from customers;

--  12. Retrieve the total salary paid to all employees in the employees table.
SELECT SUM(salary) as Total_paid_salary FROM employees;

-- 13. Calculate the average salary of employees in the employees table.-- 
SELECT AVG(salary) FROM employees;

-- 14. Find the number of employees for each department in the employees table.
SELECT department,COUNT(*) AS Employees_count
FROM employees
GROUP BY department;

-- 15. Retrieve the total revenue generated for each product category from the sales table
SELECT product_category ,SUM(total_sales) AS Total_Revenue
FROM sales
GROUP BY product_category;

-- 16. Retrieve the total number of employees in each department, but only include
-- departments with more than 10 employees

SELECT department ,COUNT(*) AS Employees_Count 
FROM employees 
GROUP BY department
HAVING COUNT(*) >10;

-- 17. Find the total revenue from the sales table for each product category where
-- revenue exceeds 20000.
SELECT product_category ,SUM(total_sales) AS Total_Revenue
FROM sales
GROUP BY product_category
HAVING SUM(total_sales) >20000;


-- 18. Retrieve the average salary of employees grouped by department, but only include
-- departments where the average salary is greater than 60,000.

SELECT department ,AVG(salary) AS Avg_Salary
FROM employees 
GROUP BY department
HAVING AVG(salary) >60000;

-- 19. Write a query to fetch the number of orders placed by each customer but only include
-- customers who have placed more than 3 orders.
SELECT customer_id ,COUNT(order_id) AS cust_order_Quantity
FROM orders
GROUP BY customer_id
HAVING COUNT(order_id) >3;

-- 20. Find the total sales for each city from the sales table, but only include cities where
-- the total sales exceed 5000.

SELECT city ,SUM(total_sales) AS City_Revenue
FROM sales
GROUP BY city
HAVING SUM(total_sales)>5000;

-- 21. Retrieve the details of the third highest-paid employee
SELECT * FROM employees ORDER BY salary DESC LIMIT 3;
SELECT * FROM employees ORDER BY salary DESC LIMIT 1 OFFSET 2;

-- 22. Fetch the top 3 most sold products from the orders table based on the total quantity sold.
SELECT product_category ,SUM(Quantity_sold) AS Total_Quantity
FROM sales
GROUP BY product_category
ORDER BY SUM(product_id) DESC
LIMIT 3;

-- 23. Write a query to retrieve the first 10 employees with salaries between 40,000 and
-- 80,000, ordered by salary in descending order.
SELECT * FROM employees WHERE salary BETWEEN 40000 AND 80000 
ORDER BY salary DESC LIMIT 10;


-- 24. Find customers who have placed exactly 3 orders in the orders table.
SELECT customer_id ,COUNT(order_id) AS Order_Quantiy
FROM orders
WHERE order_id IS NOT NULL
GROUP BY customer_id
HAVING COUNT(order_id) = 3;

-- 25. Retrieve the names of employees who earn more than the average salary of their department.
-- SELECT * FROM employees
-- WHERE salary>(
-- SELECT AVG(salary)
-- FROM employees);

SELECT * FROM employees AS e
WHERE salary>(
SELECT AVG(salary)
FROM employees
WHERE department = e.department);