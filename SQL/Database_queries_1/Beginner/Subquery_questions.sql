CREATE DATABASE IF NOT EXISTS subquery_data;
USE subquery_data;

CREATE TABLE IF NOT EXISTS student
( student_id INT PRIMARY KEY,
  student_name VARCHAR(50) NOT NULL,
  marks INT CHECK (marks BETWEEN 0 AND 100),
  section CHAR(1) CHECK (section IN ('A','B','C','D'))
);

CREATE TABLE Employee (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100) NOT NULL,
    salary INT CHECK (salary > 0),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES Department(dept_id)
);
CREATE TABLE Department (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(50) NOT NULL,
    location VARCHAR(100) NOT NULL
);

CREATE TABLE Orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_total DECIMAL(10,2) CHECK (order_total > 0),
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES Customer(customer_id)
);

CREATE TABLE Product (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    price DECIMAL(10,2) CHECK (price > 0),
    category VARCHAR(50) NOT NULL
);

CREATE TABLE Supplier (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100) NOT NULL,
    rating DECIMAL(3,1) CHECK (rating BETWEEN 0 AND 5),
    country VARCHAR(50) NOT NULL
);


CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL
);



INSERT INTO Student (student_id, student_name, marks, section) VALUES
(1, 'Adam', 85, 'A'),
(2, 'Bella', 90, 'B'),
(3, 'Chris', 75, 'A'),
(4, 'Diana', 95, 'B'),
(5, 'Eric', 80, 'A'),
(6, 'Fiona', 88, 'C'),
(7, 'George', 92, 'C'),
(8, 'Hannah', 70, 'D'),
(9, 'Ian', 78, 'D'),
(10, 'Julia', 82, 'B'),
(11, 'Kevin', 87, 'A'),
(12, 'Laura', 91, 'B'),
(13, 'Michael', 73, 'C'),
(14, 'Nina', 96, 'D'),
(15, 'Oliver', 85, 'A'),
(16, 'Paula', 89, 'B'),
(17, 'Quincy', 76, 'C'),
(18, 'Rachel', 94, 'D'),
(19, 'Samuel', 79, 'A'),
(20, 'Tina', 83, 'B'),
(21, 'Umar', 88, 'C'),
(22, 'Victoria', 97, 'D'),
(23, 'William', 71, 'A'),
(24, 'Xander', 92, 'B'),
(25, 'Yasmine', 74, 'C'),
(26, 'Zack', 98, 'D'),
(27, 'Sophia', 86, 'A'),
(28, 'Liam', 81, 'B'),
(29, 'Emma', 77, 'C'),
(30, 'Noah', 93, 'D');

INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'Alice Smith'), (2, 'Bob Johnson'), (3, 'Charlie Brown'), (4, 'David Lee'), (5, 'Eve Wilson'),
(6, 'Frank Garcia'), (7, 'Grace Rodriguez'), (8, 'Henry Martinez'), (9, 'Ivy Anderson'), (10, 'Jack Thomas'),
(11, 'Kelly Jackson'), (12, 'Liam White'), (13, 'Mia Harris'), (14, 'Noah Martin'), (15, 'Olivia Thompson'),
(16, 'Peter Garcia'), (17, 'Quinn Perez'), (18, 'Ryan Moore'), (19, 'Sophia Taylor'), (20, 'Thomas Hill'),
(21, 'Ursula Green'), (22, 'Victor Adams'), (23, 'Wendy Baker'), (24, 'Xavier Wright'), (25, 'Yvonne King'),
(26, 'Zachary Scott'), (27, 'Ava Lopez'), (28, 'Ethan Young'), (29, 'Isabella Allen'), (30, 'Daniel Lewis');

INSERT INTO Department (dept_id, dept_name, location) VALUES
(1, 'Sales', 'New York'), (2, 'Marketing', 'Los Angeles'), (3, 'Engineering', 'San Francisco'), (4, 'Finance', 'Chicago'), (5, 'HR', 'Houston'),
(6, 'IT', 'Seattle'), (7, 'Operations', 'Miami'), (8, 'Research', 'Boston'), (9, 'Legal', 'Washington DC'), (10, 'Customer Service', 'Atlanta'),
(11, 'Product', 'Denver'), (12, 'Design', 'Philadelphia'), (13, 'Analytics', 'Austin'), (14, 'Logistics', 'Dallas'), (15, 'Training', 'Phoenix'),
(16, 'Security', 'San Diego'), (17, 'Quality Assurance', 'San Jose'), (18, 'Data Science', 'Detroit'), (19, 'Public Relations', 'Baltimore'), (20, 'Administration', 'Charlotte'),
(21, 'Innovation', 'Minneapolis'), (22, 'Compliance', 'St. Louis'), (23, 'Partnerships', 'Orlando'), (24, 'Procurement', 'Pittsburgh'), (25, 'Sustainability', 'Cincinnati'),
(26, 'Real Estate', 'Kansas City'), (27, 'Communications', 'Columbus'), (28, 'Strategy', 'Indianapolis'), (29, 'Development', 'Las Vegas'), (30, 'Support', 'Raleigh');

INSERT INTO Employee (emp_id, emp_name, salary, dept_id) VALUES
(1, 'John Doe', 60000, 1), (2, 'Jane Smith', 75000, 2), (3, 'Peter Jones', 90000, 3), (4, 'Mary Brown', 80000, 4), (5, 'David Wilson', 55000, 5),
(6, 'Susan Garcia', 100000, 6), (7, 'Michael Rodriguez', 70000, 7), (8, 'Linda Martinez', 85000, 8), (9, 'Robert Anderson', 95000, 9), (10, 'Jennifer Thomas', 65000, 10),
(11, 'William Jackson', 78000, 11), (12, 'Elizabeth White', 92000, 12), (13, 'Joseph Harris', 82000, 13), (14, 'Margaret Martin', 58000, 14), (15, 'Charles Thompson', 105000, 15),
(16, 'Dorothy Garcia', 72000, 16), (17, 'Richard Perez', 87000, 17), (18, 'Karen Moore', 97000, 18), (19, 'Daniel Taylor', 67000, 19), (20, 'Patricia Hill', 88000, 20),
(21, 'Christopher Green', 73000, 21), (22, 'Sandra Adams', 98000, 22), (23, 'Matthew Baker', 68000, 23), (24, 'Anthony Wright', 89000, 24), (25, 'Angela King', 74000, 25),
(26, 'Steven Scott', 99000, 26), (27, 'Laura Lopez', 69000, 27), (28, 'Kevin Young', 91000, 28), (29, 'Amanda Allen', 76000, 29), (30, 'Paul Lewis', 93000, 30);

INSERT INTO Orders (order_id, customer_id, order_total, order_date) VALUES
(1, 1, 150.50, '2023-01-15'), (2, 2, 200.75, '2023-02-20'), (3, 3, 100.00, '2023-03-25'), (4, 4, 300.25, '2023-04-30'), (5, 5, 50.80, '2023-05-05'),
(6, 6, 175.90, '2023-06-10'), (7, 7, 220.60, '2023-07-15'), (8, 8, 120.30, '2023-08-20'), (9, 9, 350.50, '2023-09-25'), (10, 10, 60.00, '2023-10-30'),
(11, 11, 180.75, '2023-11-05'), (12, 12, 230.00, '2023-12-10'), (13, 13, 130.25, '2024-01-15'), (14, 14, 70.80, '2024-02-20'), (15, 15, 190.90, '2024-03-25'),
(16, 16, 240.60, '2024-04-30'), (17, 17, 140.30, '2024-05-05'), (18, 18, 360.50, '2024-06-10'), (19, 19, 80.00, '2024-07-15'), (20, 20, 200.75, '2024-08-20'),
(21, 21, 150.00, '2024-09-25'), (22, 22, 310.25, '2024-10-30'), (23, 23, 90.80, '2024-11-05'), (24, 24, 210.90, '2024-12-10'), (25, 25, 250.60, '2025-01-15'),
(26, 26, 160.30, '2025-02-20'), (27, 27, 370.50, '2025-03-25'), (28, 28, 100.00, '2025-04-30'), (29, 29, 220.75, '2025-05-05'), (30, 30, 239.34,'25-05-29');


INSERT INTO Customer (customer_id, customer_name) VALUES
(1, 'Alice Smith'), (2, 'Bob Johnson'), (3, 'Charlie Brown'), (4, 'David Lee'), (5, 'Eve Wilson'),
(6, 'Frank Garcia'), (7, 'Grace Rodriguez'), (8, 'Henry Martinez'), (9, 'Ivy Anderson'), (10, 'Jack Thomas'),
(11, 'Kelly Jackson'), (12, 'Liam White'), (13, 'Mia Harris'), (14, 'Noah Martin'), (15, 'Olivia Thompson'),
(16, 'Peter Garcia'), (17, 'Quinn Perez'), (18, 'Ryan Moore'), (19, 'Sophia Taylor'), (20, 'Thomas Hill'),
(21, 'Ursula Green'), (22, 'Victor Adams'), (23, 'Wendy Baker'), (24, 'Xavier Wright'), (25, 'Yvonne King'),
(26, 'Zachary Scott'), (27, 'Ava Lopez'), (28, 'Ethan Young'), (29, 'Isabella Allen'), (30, 'Daniel Lewis');


INSERT INTO Product (product_id, product_name, price, category) VALUES
(1, 'Laptop', 1200.00, 'Electronics'), (2, 'Smartphone', 800.50, 'Electronics'), (3, 'Headphones', 150.75, 'Electronics'), (4, 'Tablet', 300.25, 'Electronics'), (5, 'Monitor', 250.00, 'Electronics'),
(6, 'T-shirt', 25.99, 'Clothing'), (7, 'Jeans', 45.50, 'Clothing'), (8, 'Shoes', 60.00, 'Clothing'), (9, 'Jacket', 80.75, 'Clothing'), (10, 'Socks', 10.25, 'Clothing'),
(11, 'Book', 15.00, 'Books'), (12, 'Notebook', 5.50, 'Books'), (13, 'Pen', 2.00, 'Books'), (14, 'Pencil', 1.50, 'Books'), (15, 'Eraser', 0.75, 'Books'),
(16, 'Table', 200.00, 'Furniture'), (17, 'Chair', 80.50, 'Furniture'), (18, 'Bed', 500.75, 'Furniture'), (19, 'Sofa', 350.25, 'Furniture'), (20, 'Desk', 150.00, 'Furniture'),
(21, 'Shampoo', 8.99, 'Personal Care'), (22, 'Soap', 3.50, 'Personal Care'), (23, 'Toothpaste', 4.75, 'Personal Care'), (24, 'Lotion', 12.25, 'Personal Care'), (25, 'Deodorant', 6.00, 'Personal Care'),
(26, 'Ball', 10.00, 'Sports'), (27, 'Racket', 30.50, 'Sports'), (28, 'Bat', 40.75, 'Sports'), (29, 'Gloves', 20.25, 'Sports'), (30, 'Shoes', 70.00, 'Sports');


INSERT INTO Supplier (supplier_id, supplier_name, rating, country) VALUES
(1, 'Tech Supplies Inc.', 4.5, 'USA'), (2, 'Global Electronics Ltd.', 4.2, 'China'), (3, 'Fashion Forward Co.', 4.8, 'UK'), (4, 'Book World Distributors', 4.0, 'Canada'), (5, 'Home Furnishings Ltd.', 4.6, 'Germany'),
(6, 'Personal Care Products Inc.', 4.3, 'France'), (7, 'Sports Gear International', 4.7, 'Japan'), (8, 'Electronics Plus', 3.9, 'South Korea'), (9, 'Clothing World', 4.4, 'Italy'), (10, 'Read More Books', 4.1, 'Australia'),
(11, 'Furniture Direct', 4.9, 'Spain'), (12, 'Clean & Fresh', 4.5, 'Brazil'), (13, 'Athletic Supplies', 4.2, 'India'), (14, 'Gadget Galaxy', 4.8, 'Mexico'), (15, 'Apparel Avenue', 4.0, 'Netherlands'),
(16, 'Novelty Books', 4.6, 'Sweden'), (17, 'Luxury Furniture', 4.3, 'Switzerland'), (18, 'Beauty Basics', 4.7, 'Belgium'), (19, 'Game On Sports', 3.9, 'Austria'), (20, 'Tech City', 4.4, 'Denmark'),
(21, 'Style Street', 4.1, 'Norway'), (22, 'Page Turners', 4.9, 'Finland'), (23, 'Comfort Home', 4.5, 'Portugal'), (24, 'Health & Glow', 4.2, 'Ireland'), (25, 'Active World', 4.8, 'Poland'),
(26, 'Digital Depot', 4.0, 'Greece'), (27, 'Urban Threads', 4.6, 'Hungary'), (28, 'Story Time', 4.3, 'Czech Republic'), (29, 'Modern Living', 4.7, 'Romania'), (30, 'Fit & Fine', 3.9, 'Slovakia');


 SELECT * FROM employee;
 SELECT * FROM department;
 
-- 1. Retrieve the names of employees who earn more than the average salary of their
-- department. 

SELECT e1.emp_name AS employee_name
FROM employee AS e1
WHERE e1.salary > (
    SELECT AVG(e2.salary)
    FROM employee AS e2
    WHERE e2.dept_id = e1.dept_id
);

-- 2. Find customers who have placed orders worth more than the average order amount.
 
SELECT * FROM orders;
SELECT * FROM customer;

SELECT 
	DISTINCT c.customer_name AS customer_name
FROM customer AS c
INNER JOIN orders AS o
ON o.customer_id = c.customer_id
WHERE o.order_total > (SELECT AVG(order_total) FROM orders);

-- 3. List products that have a price higher than the most expensive product in category
-- 'Electronics'.


SELECT * FROM product;


SELECT 
	p1.product_id AS product_id,
	p1.product_name AS product_name,
    p1.price AS product_price,
    p1.category AS product_category
FROM product AS p1
WHERE p1.price >(
SELECT MAX(price) 
FROM product AS p2
WHERE p2.category = 'Electronics'
)
AND P1.category <> 'Electronics'
;



-- 4. Display students who have scored more than the average marks in their class


SELECT * FROM student;

SELECT 
	s.student_name AS student_name
FROM student AS s
WHERE s.marks > (SELECT AVG(marks) FROM student);


-- 5. Retrieve the names of employees who work in a department located in 'New York'

SELECT * FROM employee;
SELECT * FROM department;

SELECT 
	e1.emp_name AS employee_name,
    d.dept_name AS department_name,
    d.location AS department_location
FROM employee AS e1
INNER JOIN department AS d
ON e1.dept_id = d.dept_id
WHERE d.location = 'New York';


SELECT emp_name FROM 
employee 
WHERE dept_id IN (SELECT dept_id FROM department WHERE location = 'New York');




-- SQL Questions Using ANY

-- 6. Find employees who earn more than at least one employee in the 'Sales'
-- department.
SELECT * FROM employee;

SELECT emp_name AS employee_name 
FROM employee
WHERE salary > ANY(SELECT salary FROM employee WHERE department = 'Sales');



-- 7. Retrieve products that are more expensive than the cheapest product in category
-- 'Furniture'

SELECT * FROM product;

SELECT 
	product_name AS product_name
FROM product
WHERE price >  (SELECT MIN(price) FROM product WHERE category = 'Furniture');

-- 8. List students whose marks are greater than any student from section 'A'


SELECT * FROM student;

SELECT student_name 
FROM student 
WHERE marks > ANY(SELECT marks FROM student WHERE section = 'A');


-- 9. Get orders that have a total price greater than at least one order placed in the last
-- month.
SELECT * FROM orders;

SELECT order_id 
FROM orders 
WHERE order_total > ANY(SELECT order_total FROM orders WHERE order_date BETWEEN '2025-02-01' AND '2025-02-28');


-- 10. Find suppliers whose ratings are higher than any supplier from 'USA'
SELECT * FROM supplier;

SELECT 
	supplier_name 
FROM supplier 
WHERE rating > ANY(SELECT rating FROM supplier WHERE country = 'USA');


-- 11. Retrieve employees who earn more than all employees in the 'HR' department
SELECT * FROM employee;
SELECT * FROM department;

-- SELECT
-- 	e.emp_id AS employee_id,
--     e.emp_name AS employee_name,
--     d.dept_id AS department_id,
--     d.dept_name AS department_name,
--     d.location AS department_location
-- FROM employee AS e
-- INNER JOIN department AS d
-- ON e.dept_id = d.dept_id ;

SELECT * FROM
employee 
WHERE salary > ALL(
SELECT e.salary 
FROM employee AS e
INNER JOIN department AS d
ON e.dept_id = d.dept_id
WHERE dept_name = 'HR'
);

--  when  we want department column name also
SELECT 
    e.emp_id AS employee_id,
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    d.dept_id AS department_id,
    d.dept_name AS department_name,
    d.location AS department_location
FROM employee AS e
INNER JOIN department AS d 
ON e.dept_id = d.dept_id
WHERE e.salary > ALL (
    SELECT e2.salary 
    FROM employee AS e2
    INNER JOIN department AS d2 
    ON e2.dept_id = d2.dept_id
    WHERE d2.dept_name = 'HR'
);

-- 12. List products that are priced higher than all products in the 'Clothing' category.
SELECT * FROM product;
    
SELECT * 
FROM product
WHERE price > ALL(SELECT price FROM product WHERE category = 'Clothing');


-- 13. Find students whose marks are higher than all students from section 'B'.

SELECT * FROM student;

SELECT *
FROM student 
WHERE marks > ALL(SELECT marks FROM student WHERE section = 'B');


-- 14. Get orders that have a total price greater than all orders placed by customer 'John
-- Doe'

SELECT * FROM orders;
SELECT * FROM customer;


SELECT
	o.order_id AS order_id,
    c.customer_id AS customer_id,
    c.customer_name AS customer_name,
    o.order_total AS total_price
FROM orders AS o
INNER JOIN customer AS c
ON o.customer_id = c.customer_id
WHERE o.order_total > ALL
( SELECT o2.order_total
  FROM orders AS o2
  INNER JOIN customer AS c2
  ON o2.customer_id = c2.customer_id
  WHERE c2.customer_name = 'John Doe'
);


-- 15. Retrieve suppliers whose ratings are higher than all suppliers from 'India'.

SELECT * FROM supplier;


SELECT * 
FROM supplier 
WHERE rating > ALL
(SELECT rating FROM supplier WHERE country = 'India');


-- 16. Retrieve customers who have placed at least one order.


SELECT * FROM customer;
SELECT * FROM orders;

SELECT * 
FROM customer AS c
WHERE EXISTS
(SELECT * FROM
orders AS o
WHERE c.customer_id = o.customer_id);

-- 17. Find employees who have subordinates reporting to them.

SELECT * FROM employee;

SELECT *
FROM employee AS e1
WHERE EXISTS 
(SELECT 1 FROM employee AS e2 WHERE e2.mangager_id = e1.emp_id);


-- 18. List products that have been ordered at least once.
SELECT * FROM product;
SELECT * FROM orders;

SELECT * 
FROM product AS p
WHERE EXISTS 
(SELECT 1 FROM orders AS o WHERE o.prod_id = p.prod_id);


-- 19. Get students who have enrolled in at least one course.
SELECT * FROM student;

SELECT *
FROM student AS s
WHERE EXISTS
(SELECT 1
	FROM enrollement AS e
    WHERE c.stu_id = e.stud_id);


-- 20. Display departments that have at least one employee.

SELECT *
FROM department AS d
WHERE EXISTS 
(SELECT 1 
	FROM employee AS e
    WHERE e.dept_id = d.dept_id);
