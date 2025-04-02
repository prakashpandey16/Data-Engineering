USE e_commerce;

-- SELECT * FROM customers;
-- SELECT * FROM departments;
-- SELECT * FROM  employee_projects;
-- SELECT * FROM employees;
-- SELECT * FROM orders;
-- SELECT * FROM products;
-- SELECT * FROM projects;



CREATE TABLE Students (
    id INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT
);

INSERT INTO Students VALUES
(1, 'David', 85), (2, 'Eve', 72), (3, 'Frank', 50),
(4, 'Grace', 90), (5, 'Henry', 67), (6, 'Isla', 55),
(7, 'Jack', 80), (8, 'Karen', 45), (9, 'Leo', 92),
(10, 'Mia', 76), (11, 'Nathan', 34), (12, 'Olivia', 88),
(13, 'Peter', 40), (14, 'Quincy', 60), (15, 'Rachel', 77),
(16, 'Samuel', 49), (17, 'Tina', 95), (18, 'Uma', 30),
(19, 'Victor', 79), (20, 'Wendy', NULL), (21, 'Xander', 84),
(22, 'Yara', 71), (23, 'Zane', 59), (24, 'Alice', NULL),
(25, 'Brian', 68), (26, 'Catherine', 93), (27, 'Daniel', 47),
(28, 'Elaine', 55), (29, 'Fred', NULL), (30, 'George', NULL);


SELECT * FROM Students;

-- 1.Categorize employees as ‘High’, ‘Medium’, or ‘Low’ based on their salary.

SELECT * FROM employees;

SELECT
	employee_id,
    name,
    department,
    salary,
    CASE 
		WHEN  salary > 65000 THEN 'High'
        WHEN salary > 50000 THEN 'Medium'
		ELSE 'Low'
	END AS salary_Category
FROM employees
ORDER BY salary;



-- 2.Assign a grade (A, B, C, D) to students based on their marks.

SELECT * FROM Students;

SELECT
id,
name,
COALESCE(marks,0),
  CASE 
	WHEN  marks >= 80  THEN 'A'
    WHEN marks >= 70 THEN 'B'
    WHEN marks >= 60 THEN 'C'
    WHEN marks >= 50 THEN 'D'
   END AS Grade
FROM Students;

-- 3 . Label orders as ‘Bulk Order’ if quantity > 100, otherwise ‘Regular Order’.

SELECT
*,
CASE 
    WHEN quantity >= 100  Then 'Bulk Order'
    ELSE 'Regular Order'
END AS OrderType
FROM orders;

-- 4 Display ‘Expensive’ if the price of a product is above $500, otherwise ‘Affordable

SELECT
	product_id,
	name,
	category,
	price,
CASE 
	  WHEN price >= 500 THEN 'Expensive'
	  Else 'Affordable'
END AS ProductType
FROM products;


-- Show a custom message for employees based on their years of experience.

SELECT * FROM employees;


SELECT
    employee_id,
    name,
    department,
    salary,
    ExperienceInYear,
    CASE 
        WHEN ExperienceInYear >= 4 THEN 'Senior'
        WHEN ExperienceInYear >= 2 THEN 'Junior'
        ELSE 'Fresh Graduate'
    END AS Experience_Category
FROM (
    SELECT
        employee_id,
        name,
        department,
        salary,
        TIMESTAMPDIFF(YEAR, hire_date, CURRENT_DATE()) AS ExperienceInYear
    FROM employees
) t
ORDER BY ExperienceInYear ASC;

-- Mark customers as ‘Loyal’, ‘New’, or ‘Inactive’ based on their purchase history.

SELECT * FROM customers;
-- not enough data to solve problem


-- Display weekdays as ‘Weekend’ or ‘Weekday’ using CASE and DAYOFWEEK() in orders. 

SELECT * FROM orders;

SELECT
    order_id,
    customer_id,
    order_date,
    CASE DAYOFWEEK(order_date)
        WHEN 1 THEN 'Sunday'
        WHEN 2 THEN 'Monday'
        WHEN 3 THEN 'Tuesday'
        WHEN 4 THEN 'Wednesday'
        WHEN 5 THEN 'Thursday'
        WHEN 6 THEN 'Friday'
        WHEN 7 THEN 'Saturday'
    END AS OrderDayName
FROM orders;


SELECT 
id,
name,
salary,
(SELECT name FROM country) AS country_name
FROM employees;






