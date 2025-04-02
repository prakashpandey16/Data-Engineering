-- Create the E-commerce Database
CREATE DATABASE e_commerce;

-- Use the E-commerce Database
USE e_commerce;

-- 1. Employees Table
CREATE TABLE Employees (
    employee_id INT PRIMARY KEY,
    name VARCHAR(255),
    department VARCHAR(255),
    salary DECIMAL(10, 2),
    hire_date DATE,
    manager_id INT,
    birth_date DATE,
    FOREIGN KEY (manager_id) REFERENCES Employees(employee_id)
);

INSERT INTO Employees (employee_id, name, department, salary, hire_date, manager_id, birth_date) VALUES
(1, 'John Doe', 'IT', 60000, '2020-01-15', NULL, '1990-05-20'),
(2, 'Jane Smith', 'HR', 55000, '2018-08-22', 1, '1988-03-10'),
(3, 'Alice Johnson', 'IT', 70000, '2021-05-01', 1, '1992-09-25'),
(4, 'Bob Williams', 'Sales', 48000, '2019-11-10', 2, '1985-07-01'),
(5, 'Charlie Brown', 'IT', 62000, '2022-02-28', 3, '1994-12-05'),
(6, 'Diana Miller', 'Marketing', 52000, '2020-07-01', 1, '1991-08-15'),
(7, 'Edward Davis', 'HR', 58000, '2019-03-15', 2, '1987-06-22'),
(8, 'Fiona Wilson', 'IT', 75000, '2021-10-01', 3, '1993-11-28'),
(9, 'George Anderson', 'Sales', 50000, '2020-02-01', 4, '1986-04-05'),
(10, 'Hannah Thomas', 'Marketing', 54000, '2022-01-10', 6, '1995-01-12'),
(11, 'Ian Jackson', 'IT', 68000, '2019-09-01', 1, '1989-09-18'),
(12, 'Julia White', 'HR', 57000, '2021-06-01', 7, '1990-07-25'),
(13, 'Kevin Harris', 'Sales', 51000, '2022-03-15', 4, '1994-02-01'),
(14, 'Linda Martin', 'Marketing', 53000, '2020-11-01', 6, '1988-10-08'),
(15, 'Michael Garcia', 'IT', 72000, '2021-04-01', 8, '1992-03-15');

-- 2. Departments Table
CREATE TABLE Departments (
    department_id INT PRIMARY KEY,
    name VARCHAR(255),
    location VARCHAR(255)
);

INSERT INTO Departments (department_id, name, location) VALUES
(1, 'IT', 'New York'),
(2, 'HR', 'Los Angeles'),
(3, 'Sales', 'Chicago'),
(4, 'Marketing', 'Houston'),
(5, 'Finance', 'San Jose'),
(6, 'Operations', 'Phoenix'),
(7, 'Engineering', 'San Diego'),
(8, 'Research', 'Austin'),
(9, 'Development', 'Denver'),
(10, 'Support', 'Portland'),
(11, 'Accounting', 'Nashville'),
(12, 'Legal', 'Philadelphia'),
(13, 'Training', 'Atlanta'),
(14, 'Quality', 'Miami'),
(15, 'Management', 'Seattle');

-- 3. Orders Table
CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    total_amount DECIMAL(10, 2),
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id)
);

INSERT INTO Orders (order_id, customer_id, order_date, total_amount) VALUES
(101, 1, '2023-01-10', 1200.00),
(102, 2, '2023-02-15', 800.00),
(103, 1, '2023-03-20', 1500.00),
(104, 3, '2023-01-25', 2000.00),
(105, 2, '2023-04-01', 1000.00),
(106, 4, '2023-02-10', 500.00),
(107, 1, '2023-03-01', 750.00),
(108, 5, '2023-04-15', 1800.00),
(109, 3, '2023-02-20', 1100.00),
(110, 2, '2023-03-10', 900.00),
(111, 4, '2023-04-01', 600.00),
(112, 1, '2023-01-15', 1300.00),
(113, 5, '2023-02-25', 1900.00),
(114, 3, '2023-03-05', 1050.00),
(115, 2, '2023-04-10', 950.00);

-- 4. Customers Table
CREATE TABLE Customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    city VARCHAR(255),
    signup_date DATE
);

INSERT INTO Customers (customer_id, name, email, city, signup_date) VALUES
(1, 'Acme Corp', 'acme@example.com', 'New York', '2022-01-01'),
(2, 'Beta Inc', 'beta@example.com', 'Los Angeles', '2022-02-15'),
(3, 'Gamma Ltd', 'gamma@example.com', 'Chicago', '2022-03-20'),
(4, 'Delta Co', 'delta@example.com', 'Houston', '2022-04-01'),
(5, 'Epsilon LLC', 'epsilon@example.com', 'Phoenix', '2022-05-05'),
(6, 'Zeta Inc', 'zeta@example.com', 'San Jose', '2022-06-10'),
(7, 'Eta Corp', 'eta@example.com', 'San Diego', '2022-07-15'),
(8, 'Theta Ltd', 'theta@example.com', 'Austin', '2022-08-20'),
(9, 'Iota Co', 'iota@example.com', 'Denver', '2022-09-25'),
(10, 'Kappa LLC', 'kappa@example.com', 'Portland', '2022-10-01'),
(11, 'Lambda Inc', 'lambda@example.com', 'Nashville', '2022-11-05'),
(12, 'Mu Corp', 'mu@example.com', 'Philadelphia', '2022-12-10'),
(13, 'Nu Ltd', 'nu@example.com', 'Atlanta', '2023-01-15'),
(14, 'Xi Co', 'xi@example.com', 'Miami', '2023-02-20'),
(15, 'Omicron LLC', 'omicron@example.com', 'Seattle', '2023-03-25');

-- 5. Products Table
CREATE TABLE Products (
    product_id INT PRIMARY KEY,
    name VARCHAR(255),
    category VARCHAR(255),
    price DECIMAL(10, 2),
    stock_quantity INT
);

INSERT INTO Products (product_id, name, category, price, stock_quantity) VALUES
(1, 'Laptop', 'Electronics', 1000.00, 100),
(2, 'T-Shirt', 'Clothing', 25.00, 500),
(3, 'Headphones', 'Electronics', 100.00, 200),
(4, 'Jeans', 'Clothing', 50.00, 300),
(5, 'Mouse', 'Electronics', 20.00, 400),
(6, 'Keyboard', 'Electronics', 75.00, 250),
(7, 'Dress', 'Clothing', 40.00, 400),
(8, 'Monitor', 'Electronics', 200.00, 150),
(9, 'Skirt', 'Clothing', 30.00, 350),
(10, 'Speaker', 'Electronics', 50.00, 300),
(11, 'Socks', 'Clothing', 10.00, 1000),
(12, 'Tablet', 'Electronics', 300.00, 200),
(13, 'Jacket', 'Clothing', 60.00, 250),
(14, 'Camera', 'Electronics', 500.00, 100),
(15, 'Shoes', 'Clothing', 55.00, 300);

-- 6. Order_Items Table
CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id INT,
    product_id INT,
    quantity INT,
    unit_price DECIMAL(10, 2),
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items (order_item_id, order_id, product_id, quantity, unit_price) VALUES
(1, 101, 1, 1, 1000.00),
(2, 101, 3, 2, 100.00),
(3, 102, 2, 5, 25.00),
(4, 103, 1, 1, 1000.00),
(5, 103, 3, 2, 100.00),
(6, 104, 5, 10, 20.00),
(7, 105, 4, 2, 50.00),
(8, 106, 10, 1, 50.00),
(9, 107, 12, 2, 300.00),
(10, 108, 14, 1, 500.00),
(11, 109, 1, 1, 1000.00),
(12, 110, 2, 4, 25.00),
(13, 111, 3, 3, 100.00),
(14, 112, 4, 1, 50.00),
(15, 113, 5, 8, 20.00);

-- 7. Projects Table
CREATE TABLE Projects (
    project_id INT PRIMARY KEY,
    name VARCHAR(255),
    start_date DATE,
    end_date DATE
);

INSERT INTO Projects (project_id, name, start_date, end_date) VALUES
(1, 'Project A', '2023-01-01', '2023-03-01'),
(2, 'Project B', '2023-02-15', '2023-05-15'),
(3, 'Project C', '2023-04-01', '2023-06-01'),
(4, 'Project D', '2023-03-01', '2023-05-01'),
(5, 'Project E', '2023-05-15', '2023-07-15'),
(6, 'Project F', '2023-02-01', '2023-04-01'),
(7, 'Project G', '2023-04-15', '2023-06-15'),
(8, 'Project H', '2023-06-01', '2023-08-01'),
(9, 'Project I', '2023-03-15', '2023-05-15'),
(10, 'Project J', '2023-05-01', '2023-07-01'),
(11, 'Project K', '2023-07-15', '2023-09-15'),
(12, 'Project L', '2023-04-01', '2023-06-01'),
(13, 'Project M', '2023-06-15', '2023-08-15'),
(14, 'Project N', '2023-08-01', '2023-10-01'),
(15, 'Project O', '2023-09-15', '2023-11-15');

-- 8. Employee_Projects Table
CREATE TABLE Employee_Projects (
    employee_id INT,
    project_id INT,
    PRIMARY KEY (employee_id, project_id),
    FOREIGN KEY (employee_id) REFERENCES Employees(employee_id),
    FOREIGN KEY (project_id) REFERENCES Projects(project_id)
);

INSERT INTO Employee_Projects (employee_id, project_id) VALUES
(1, 1),
(1, 2),
(2, 2),
(3, 3),
(4, 1),
(5, 2),
(6, 3),
(7, 1),
(8, 2),
(9, 3),
(10, 1),
(11, 2),
(12, 3),
(13, 1),
(14, 2),
(15,3);





SELECT * FROM customers;
SELECT * FROM departments;
SELECT * FROM  employee_projects;
SELECT * FROM employees;
SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM projects;



-- Aggregations & Grouping
-- 41. Count the total number of orders placed by each customer.
SELECT * FROM orders;

SELECT 
customer_id,
COUNT(*) AS order_count
FROM orders
GROUP BY customer_id;

-- 42. Retrieve the total sales amount for each product.

SELECT * FROM products;

SELECT
name,
SUM(price) AS TotalSalesByproduct
FROM products
GROUP BY name
ORDER BY SUM(price);


-- 43. Find the average salary in each department.

SELECT * FROM employees;

SELECT
department,
ROUND(AVG(salary),2) AS Avg_salary
FROM employees
GROUP BY department;


-- 44. List the minimum and maximum salaries for each job role.

SELECT
department,
MAX(salary) AS Max_salary,
MIN(salary) AS Min_salary
FROM employees
GROUP BY department;


-- 45. Retrieve the total number of employees in each department, filtering out those with
-- fewer than 5 employees.

SELECT 
department,
COUNT(*) AS Employees_Count
FROM employees
GROUP BY department
HAVING COUNT(*) > 5;


-- 46. Count the number of orders placed on each day.
SELECT * FROM orders;

SELECT 
order_date,
COUNT(*) AS Order_Count
FROM orders
GROUP BY order_date;


-- 47. Retrieve customers who have spent more than $5000 in total purchases.

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
c.customer_id,
c.name AS customer_name,
SUM(o.total_amount) AS Total_purchases
FROM customers AS c
INNER JOIN orders AS o
ON o.customer_id = c.customer_id
GROUP BY c.customer_id,c.name;

-- 48. Find the highest-priced product in each category.

SELECT * FROM products;

SELECT
category,
MAX(price) AS MaxProductPrice
FROM products
GROUP BY category;

-- 49. Retrieve the total revenue for each store location.
SELECT 
store_locations,
Sum(sales * price) AS TotalRevenueByStore
FROM store_data
GROUP BY store_locations;


-- 50. List the departments where the total salary exceeds 200000 ; 

SELECT * FROM employees;

SELECT 
department,
SUM(salary) AS TotalSalaryByDepartment
FROM employees
GROUP BY department
HAVING SUM(salary) > 200000;



-- Functions (String, Numeric, Date)

-- 31. Convert all customer names to uppercase.

SELECT
UPPER(NAME) AS name 
FROM customers;

-- 32. Retrieve the first three characters of each product name.
SELECT * FROM products;

SELECT
LEFT(name,3) AS FirstThreeCharOfProductName
FROM products;

-- 33. Find the length of the longest employee name.
SELECT
MAX(LENGTH(name)) AS longest_employee_name
FROM employees;

-- 34. Extract the domain from customers’ email addresses.

SELECT * FROM customers;


SELECT
email,
SUBSTRING_INDEX(email,'@',-1) AS EmailDomain
FROM customers;

-- 35. Round the total sales amount for each order to 2 decimal places

SELECT 
ROUND(total_amount,2) AS total_amount
FROM orders;


-- 36. Retrieve the absolute difference between an employee's salary and the department's
-- average salary

SELECT * FROM employees;

SELECT
employee_id,
name,
department,
salary,
dept_avg_salary,
ABS(salary - dept_avg_salary) AS Diff_Of_salary_And_dept_Avg_salary
FROM 
(
SELECT
employee_id,
name,
department,
salary,
ROUND(AVG(salary) OVER(PARTITION BY department),2) AS dept_avg_salary
FROM employees
)t;


-- 37. Calculate the age of each employee based on their birth date.

SELECT * FROM employees;

SELECT 
employee_id,
name,
department,
TIMESTAMPDIFF(YEAR,birth_date,CURRENT_DATE()) AS EmployeeAge
FROM employees;

-- 38. Retrieve the current date and time 

SELECT CURRENT_DATE();
SELECT CURRENT_TIME();
SELECT CURRENT_TIMESTAMP();

-- 39. Find the number of days between order date and delivery date.

SELECT * FROM orders;

SELECT 
order_id,
DATEDIFF(delivery_date,order_date) AS DeliveryDays
FROM orders;


-- 40. Retrieve all customers who placed an order within the last 30 days.

SELECT * FROM orders;
SELECT * FROM customers;

SELECT
c.customer_id AS customer_id,
c.name AS customer_name
FROM customers AS c
INNER JOIN orders AS o
ON o.customer_id = c.customer_id
WHERE order_date > DATE_SUB(CURRENT_DATE(),INTERVAL 30 DAY) ;



-- Filtering & Sorting Data
-- 21. Retrieve the top 5 highest-paid employees

SELECT 
*
FROM employees
ORDER BY salary DESC
LIMIT 5;


-- 22. Find customers who have made purchases greater than 1000.

SELECT * FROM customers;
SELECT * FROM orders;

SELECT
DISTINCT c.customer_id,
c.name
FROM customers AS c
INNER JOIN orders AS o
ON o.customer_id = c.customer_id
WHERE o.total_amount>1000;

-- 23. List all orders placed between January 1, 2023, and March 31, 2023

SELECT * FROM orders;

SELECT
*
FROM orders
WHERE order_date BETWEEN '2023-01-01' AND '2023-03-31';


-- 24. Retrieve products that belong to either ‘Electronics’ or ‘Clothing’ categories

SELECT * FROM products;

SELECT
* 
FROM 
products
WHERE category IN('Electronics','Clothing');



-- 25. Find all employees whose names start with ‘A’ and end with ‘N’.

SELECT 
* 
FROM
Employees
WHERE name LIKE 'A%n';

-- 26. Retrieve the top 3 products with the highest sales

SELECT * FROM products;

SELECT 
p.product_id,
p.name,
SUM(o.quantity) AS TotalSales
FROM products AS p
INNER JOIN order_details AS o
ON o.product_id = p.product_id
ORDER BY TotalSales DESC
LIMIT 3;


-- 27. List employees who joined after 2020 and belong to the ‘IT’ department.

SELECT * FROM employees;

SELECT
employee_id,
name,
department,
hire_date
FROM employees
WHERE hire_date >= '2020-01-01' AND LOWER(department) = 'it';

-- 28. Retrieve customers who have made more than 10 purchases but spent less than
-- $500.

SELECT
    c.customer_id,
    c.name,
    COUNT(o.customer_id) AS TotalOrdersByCustomer,
    SUM(o.order_amount) AS TotalAmountSpentByCustomer
FROM customers AS c
INNER JOIN orders AS o
    ON o.customer_id = c.customer_id
GROUP BY c.customer_id, c.name
HAVING SUM(o.order_amount) < 500  
AND COUNT(o.customer_id) > 10;  

-- 29. Get a list of products where the price is between $50 and $100.

SELECT 
* 
FROM products
WHERE price BETWEEN 50 AND 100;

-- 30. Find orders that were placed on a weekend.

SELECT 
COUNT(*) AS WeekendOrders
FROM orders
WHERE DAYNAME(order_date) IN('Saturday','Sunday');

-- Joins (Basic & Advanced)

-- 51. Retrieve employees along with their managers' names using a 
SELECT * FROM employees;

SELECT
e1.employee_id AS employee_id,
e1.name AS employee_name,
e1.department AS employee_department,
e1.salary AS employee_salary,
e2.name AS manager_name
FROM employees e1
LEFT JOIN employees e2
ON  e1.manager_id = e2.employee_id;


-- Retrieve employees who work in the same department as 'John Doe'
SELECT 
    e1.name AS employee_name,       -- Select employee names
    e1.department AS employee_department  -- Select their department
FROM employees AS e1
JOIN employees AS e2  -- Perform a self-join on the employees table
ON e1.department = e2.department  -- Match employees who belong to the same department
WHERE e2.name = 'John Doe'  -- Filter to find only the department of 'John Doe'
AND e1.name <> 'John Doe';  -- Exclude 'John Doe' from the results
  
  
  
-- 53. List all orders along with customer names, including those customers who have
-- never placed an order

SELECT * FROM orders;
SELECT * FROM customers;

SELECT
	o.order_id AS order_id,
    o.order_date AS order_date,
    o.total_amount AS order_amount,
    c.name AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id;



-- 54. Retrieve employees who have not been assigned any project.

SELECT * FROM employees;
SELECT * FROM projects;

SELECT 
e.employee_id AS employee_id,
e.name AS employee_name
FROM employees e
LEFT JOIN projects p
ON e.employee_id = p.employee_id
WHERE project_id IS NULL;


-- 55. Get a list of employees and the number of projects they are working on.

SELECT
e.employee_id,
e.name,
COUNT(*) AS project_count
FROM employees AS e
INNER JOIN projects AS p
ON e.employee_id = p.employee_id
GROUP BY e.employee_id,e.name;

-- 56. Find the total sales amount for each customer

SELECT * FROM customers;
SELECT * FROM orders;

SELECT
	c.name AS customer_name,
    SUM(o.total_amount) AS total_sales_amount
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- 57. Retrieve all employees along with their department names.

SELECT * FROM employees;

SELECT
e.employee_id,
e.name,
COALESCE(d.dept_name,'Unknown') AS department_name
FROM employees AS e
LEFT JOIN department AS d
ON e.dept_id = d.dept_id;

-- 58. List all suppliers who have never supplied a product.



SELECT * FROM products;
SELECT * FROM suppliers;

SELECT
    s.supplier_id,
    s.name AS supplier_name
FROM suppliers AS s
LEFT JOIN products AS p
ON s.supplier_id = p.supplier_id 
WHERE p.product_id IS NULL;  

-- 59. Retrieve orders that include at least one product from the ‘Electronics’ category

SELECT * FROM orders;
SELECT * FROM products;
SELECT * FROM Order_Items;
-- Retrieve orders that include at least one product from the ‘Electronics’ category
SELECT 
    o.order_id,
    o.order_date
FROM Order_Items AS od  -- Order_Items table links orders and products
INNER JOIN orders AS o
ON od.order_id = o.order_id  -- Joining orders to get order details
INNER JOIN products AS p
ON od.product_id = p.product_id  -- Joining products to filter by category
WHERE p.category = 'Electronics'  -- Only include orders with Electronics
GROUP BY o.order_id, o.order_date;  -- Ensuring unique order IDs


-- 60. Find customers who have placed an order and the total amount they have spent 3000

SELECT * FROM customers;
SELECT * FROM orders;

-- Find customers who have placed orders and spent more than 3000
SELECT 
    c.name AS customer_name,
    SUM(o.total_amount) AS total_spent
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id  -- Join customers with their orders
GROUP BY c.customer_id, c.name  -- Group by customer to calculate total spending
HAVING SUM(o.total_amount) > 3000;  -- Filter customers who spent more than 3000



-- Subqueries & Nested Queries

-- 61. Retrieve employees whose salary is higher than the average salary of their
-- department


SELECT * FROM employees;


SELECT
e.employee_id,e.name,e.department 
FROM employees AS e
WHERE e.salary>
( SELECT
  AVG(salary)
  FROM employees
  WHERE department = e.department
  );
  
--   62. Find customers who have placed more than the average number of orders

SELECT * FROM orders;
SELECT * FROM customers;

SELECT 
c.name AS customer_name,
COUNT(o.customer_id) AS OrderCountByCustomers,
AVG(SUM(COUNT(o.customer_id))) AS AvgCustomersOrders
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY c.name;

-- Solved using cte in sql

-- 63. List all products that are more expensive than the most expensive product in the
-- ‘Clothing’ category 


SELECT * FROM products;

SELECT
name  AS product_name
FROM products
WHERE price >
(SELECT
MAX(price)
FROM products
WHERE category = 'Clothing'
);


-- 64. Retrieve employees who earn more than their manager.

SELECT * FROM employees;



SELECT
e1.name AS employee_name,
e1.salary AS employee_salary,
e2.name AS manager_name,
e2.salary AS manager_salary
FROM employees AS e1
INNER JOIN employees AS e2
ON e1.manager_id = e2.employee_id
WHERE e1.salary > e2.salary;

-- 65. Find all students who scored above the class average in each subject

SELECT
    s.student_name,
    s.subject,
    s.marks
FROM students AS s
WHERE s.marks > (
    SELECT AVG(s1.marks)
    FROM students AS s1
    WHERE s1.subject = s.subject
);


-- 66. Get a list of customers who have never placed an order

SELECT * FROM orders;
SELECT * FROM customers;

SELECT
c.name AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;


-- 67. Retrieve the second highest salary from the Employee table

SELECT * FROM employees;

SELECT
MAX(salary) AS Second_Max_salary
FROM employees
WHERE salary < (
SELECT MAX(salary) FROM employees
);


SELECT
name,
department,
salary
FROM
(
SELECT
name,
department,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC ) AS RankBySalary
FROM employees
)t
WHERE RankBySalary = 2;


-- 68. Find employees whose salary is greater than the highest salary in the 'HR'
-- department

SELECT
name,
department
FROM employees
WHERE salary >(
	SELECT MAX(salary)
	FROM employees
	WHERE LOWER(department) = 'hr'
);

-- 69. Retrieve products that have never been ordered.

SELECT * FROM products;
SELECT * FROM orderItems;

SELECT
p.product_name
FROM products AS p
LEFT JOIN OrderItems AS od
ON od.product_id = p.product_id
WHERE od.product_id IS NULL;

-- 70. Get a list of departments where the total salary of employees exceeds the average
-- total salary across all departments.



SELECT
department,
AVG(total_salary) AS Avg_total_salary
FROM 
(
SELECT
department,
SUM(salary) OVER(PARTITION BY department) AS TotalSalaryByDepartment,
SUM(salary) OVER() AS total_salary
FROM employees
)t
WHERE total_salary > Avg_total_salary;

-- solve using cte in sql


-- Window Functions (Analytical Functions)

-- 81. Assign a row number to each employee in descending order of salary

SELECT
name,
department,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS RowNumberBySalary
FROM
employees;

-- 82. Rank employees based on their salaries, ensuring no duplicate ranks for equal
-- salaries.

SELECT
name,
department,
salary,
ROW_NUMBER() OVER(ORDER BY salary DESC) AS RankBySalary
FROM
employees;

-- 83. Retrieve the previous and next order amount for each order.

SELECT * FROM orders;

SELECT
    order_id,
    total_amount,
    LAG(total_amount, 1, NULL) OVER(ORDER BY order_date) AS PreviousOrderAmount,
    LEAD(total_amount, 1, NULL) OVER(ORDER BY order_date) AS NextOrderAmount
FROM orders;


-- 84. Calculate the cumulative sales for each customer over time.

SELECT
c.customer_name,
od.sales,
od.order_date,
SUM(sales) OVER(PARTITION BY c.customer_id ORDER BY od.order_date) AS cumulative_sales_total
FROM customer AS c
LEFT JOIN OrderItems AS od
ON c.customer_id = od.customer_id;

-- 85. Assign employees to 4 equal salary groups using NTILE().

SELECT
name,
department,
NTILE(4) OVER(ORDER BY salary DESC) SalaryPartition
FROM employees;




-- 86. Find the second highest salary in each department


SELECT
name,
department,
salary
FROM (
	SELECT
	name,
	department,
	salary,
	RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS RankBySalary
	FROM employees
)t
WHERE RankBySalary = 2;

-- 87. Retrieve the running total of sales for each month.

SELECT * FROM orders;

SELECT 
    YEAR(order_date) AS order_year,
    MONTH(order_date) AS order_month,
    SUM(total_amount) OVER(PARTITION BY YEAR(order_date) ORDER BY MONTH(order_date)) AS running_sales
FROM orders;

-- 88. Show the difference between an employee’s salary and the previous employee’s
-- salary.

SELECT * FROM employees;

SELECT
	employee_id,
    name,
    department,
    salary AS current_salary,
    LAG(salary,1) OVER(ORDER BY salary ASC) AS previous_salary,
    salary - LAG(salary,1) OVER(ORDER BY salary ASC) AS Employee_salary_diff
FROM employees;

-- 89. Retrieve the first order placed by each customer

SELECT * FROM orders;
SELECT * FROM customers;

SELECT
    c.name AS customer_name,
    ranked_orders.order_id,
    ranked_orders.order_date
FROM (
    SELECT
        o.customer_id,
        o.order_id,
        o.order_date,
        ROW_NUMBER() OVER(PARTITION BY o.customer_id ORDER BY o.order_date) AS RankByCustomers
    FROM orders AS o
) AS ranked_orders
INNER JOIN customers AS c ON c.customer_id = ranked_orders.customer_id
WHERE ranked_orders.RankByCustomers = 1;


-- 90. Rank products within each category based on sales.

SELECT
    p.product_name,
    p.category,
    od.sales,
    ROW_NUMBER() OVER (PARTITION BY p.category ORDER BY od.sales DESC) AS RankBySales
FROM products AS p
INNER JOIN orderDetails AS od
ON p.product_id = od.product_id;




