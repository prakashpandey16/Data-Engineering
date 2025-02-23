use Practice_problem;

SELECT * FROM Employee;

-- CASE Statement questions

-- 16. Show employees' salaries and categorize them as 'Low', 'Medium', or 'High' based on
-- salary ranges 
--  Using case statement 60757(avg)
-- if salary < avg(salary) -> low
-- if salary> avg(salary) and salary < 80000 -> medium
-- if salary > 80000 -> high

SELECT 
employee_id,name,salary,
CASE 
WHEN salary <(SELECT AVG(salary) FROM Employee) THEN 'Low'
WHEN salary >= (SELECT AVG(salary) FROM Employee) AND salary < 70000 THEN 'Medium'
ELSE 'High'
END AS Salary_Status
FROM Employee;
   
 --   17. Label customers as 'New', 'Regular', or 'VIP' based on their total purchase amount
 
 --  avg(amount) -> 238
 --  MAX(AMOUNT) -> 500
 --  if amount < 238 -> new
 -- if amount >= 238 and amount < 350 -> Regular
 --  if amount >= 350 -> vip 
 -- else unassigned
 
-- SELECT COALESCE(MAX(amount),0) FROM orders; 

SELECT 
order_id,
customer_id,amount,
CASE 
WHEN amount < (SELECT COALESCE(AVG(amount),0) FROM orders) THEN 'New'
WHEN amount >= (SELECT COALESCE(AVG(amount),0) FROM orders) AND amount < 350 THEN 'Regular'
WHEN amount >= 350 THEN 'Vip'
ELSE 'Unassigned'
END AS Customers_Status
FROM orders;

-- adding new table

CREATE TABLE IF NOT EXISTS student_data(
student_id INT PRIMARY KEY,
student_name VARCHAR(50),
subject_name VARCHAR(50) NOT NULL,
marks INT NOT NULL
);

-- Inserting 70 rows of sample data
INSERT INTO student_data (student_id, student_name, subject_name, marks) VALUES
(1, 'Student 1', 'Mathematics', 35),
(2, 'Student 2', 'Science', 45),
(3, 'Student 3', 'History', 75),
(4, 'Student 4', 'Mathematics', 60),
(5, 'Student 5', 'Science', 50),
(6, 'Student 6', 'History', 30),
(7, 'Student 7', 'Mathematics', 55),
(8, 'Student 8', 'Science', 65),
(9, 'Student 9', 'History', 70),
(10, 'Student 10', 'Mathematics', 40),
(11, 'Student 11', 'Science', 42),
(12, 'Student 12', 'History', 68),
(13, 'Student 13', 'Mathematics', 58),
(14, 'Student 14', 'Science', 61),
(15, 'Student 15', 'History', 52),
(16, 'Student 16', 'Mathematics', 47),
(17, 'Student 17', 'Science', 55),
(18, 'Student 18', 'History', 72),
(19, 'Student 19', 'Mathematics', 34),
(20, 'Student 20', 'Science', 49),
(21, 'Student 21', 'History', 74),
(22, 'Student 22', 'Mathematics', 38),
(23, 'Student 23', 'Science', 63),
(24, 'Student 24', 'History', 59),
(25, 'Student 25', 'Mathematics', 51),
(26, 'Student 26', 'Science', 66),
(27, 'Student 27', 'History', 80),
(28, 'Student 28', 'Mathematics', 69),
(29, 'Student 29', 'Science', 48),
(30, 'Student 30', 'History', 54),
(31, 'Student 31', 'Mathematics', 62),
(32, 'Student 32', 'Science', 70),
(33, 'Student 33', 'History', 36),
(34, 'Student 34', 'Mathematics', 60),
(35, 'Student 35', 'Science', 57),
(36, 'Student 36', 'History', 65),
(37, 'Student 37', 'Mathematics', 67),
(38, 'Student 38', 'Science', 41),
(39, 'Student 39', 'History', 73),
(40, 'Student 40', 'Mathematics', 39),
(41, 'Student 41', 'Science', 46),
(42, 'Student 42', 'History', 53),
(43, 'Student 43', 'Mathematics', 61),
(44, 'Student 44', 'Science', 68),
(45, 'Student 45', 'History', 49),
(46, 'Student 46', 'Mathematics', 72),
(47, 'Student 47', 'Science', 31),
(48, 'Student 48', 'History', 50),
(49, 'Student 49', 'Mathematics', 44),
(50, 'Student 50', 'Science', 56),
(51, 'Student 51', 'History', 77),
(52, 'Student 52', 'Mathematics', 64),
(53, 'Student 53', 'Science', 43),
(54, 'Student 54', 'History', 48),
(55, 'Student 55', 'Mathematics', 55),
(56, 'Student 56', 'Science', 71),
(57, 'Student 57', 'History', 60),
(58, 'Student 58', 'Mathematics', 45),
(59, 'Student 59', 'Science', 66),
(60, 'Student 60', 'History', 62),
(61, 'Student 61', 'Mathematics', 52),
(62, 'Student 62', 'Science', 59),
(63, 'Student 63', 'History', 78),
(64, 'Student 64', 'Mathematics', 50),
(65, 'Student 65', 'Science', 35),
(66, 'Student 66', 'History', 65),
(67, 'Student 67', 'Mathematics', 47),
(68, 'Student 68', 'Science', 60),
(69, 'Student 69', 'History', 58),
(70, 'Student 70', 'Mathematics', 64);

SELECT * FROM student_data; 

-- 18. Categorize students based on their marks: ‘Fail’ if < 40, ‘Pass’ if 40-60, and
-- ‘Distinction’ if > 60.


SELECT 
student_id,
student_name,
marks,
CASE 
WHEN marks < 40 THEN 'Fail'
WHEN marks BETWEEN 40 AND 60 THEN 'Pass'
ELSE 'Distinction'
END AS Student_Status
FROM student_data;

-- add new column age  
ALTER TABLE customers ADD COLUMN age INT;

UPDATE customers SET age = 18 WHERE id = 1;
UPDATE customers SET age = 22 WHERE id = 2;
UPDATE customers SET age = 35 WHERE id = 3;
UPDATE customers SET age = 40 WHERE id = 4;
UPDATE customers SET age = 55 WHERE id = 5;
UPDATE customers SET age = 60 WHERE id = 6;
UPDATE customers SET age = 75 WHERE id = 7;
UPDATE customers SET age = 80 WHERE id = 8;
UPDATE customers SET age = 16 WHERE id = 9;
UPDATE customers SET age = 25 WHERE id = 10;
UPDATE customers SET age = 37 WHERE id = 11;
UPDATE customers SET age = 45 WHERE id = 12;
UPDATE customers SET age = 59 WHERE id = 13;
UPDATE customers SET age = 63 WHERE id = 14;
UPDATE customers SET age = 72 WHERE id = 15;
UPDATE customers SET age = 79 WHERE id = 16;
UPDATE customers SET age = 14 WHERE id = 17;
UPDATE customers SET age = 28 WHERE id = 18;
UPDATE customers SET age = 39 WHERE id = 19;
UPDATE customers SET age = 48 WHERE id = 20;
UPDATE customers SET age = 57 WHERE id = 21;
UPDATE customers SET age = 67 WHERE id = 22;
UPDATE customers SET age = 74 WHERE id = 23;
UPDATE customers SET age = 82 WHERE id = 24;
UPDATE customers SET age = 19 WHERE id = 25;
UPDATE customers SET age = 23 WHERE id = 26;
UPDATE customers SET age = 34 WHERE id = 27;
UPDATE customers SET age = 41 WHERE id = 28;
UPDATE customers SET age = 53 WHERE id = 29;
UPDATE customers SET age = 64 WHERE id = 30;
UPDATE customers SET age = 77 WHERE id = 31;
UPDATE customers SET age = 85 WHERE id = 32;
UPDATE customers SET age = 17 WHERE id = 33;
UPDATE customers SET age = 21 WHERE id = 34;
UPDATE customers SET age = 30 WHERE id = 35;
UPDATE customers SET age = 42 WHERE id = 36;
UPDATE customers SET age = 51 WHERE id = 37;
UPDATE customers SET age = 61 WHERE id = 38;
UPDATE customers SET age = 70 WHERE id = 39;
UPDATE customers SET age = 78 WHERE id = 40;
UPDATE customers SET age = 13 WHERE id = 41;
UPDATE customers SET age = 27 WHERE id = 42;
UPDATE customers SET age = 36 WHERE id = 43;
UPDATE customers SET age = 46 WHERE id = 44;
UPDATE customers SET age = 54 WHERE id = 45;
UPDATE customers SET age = 65 WHERE id = 46;
UPDATE customers SET age = 73 WHERE id = 47;
UPDATE customers SET age = 81 WHERE id = 48;
UPDATE customers SET age = 15 WHERE id = 49;
UPDATE customers SET age = 20 WHERE id = 50;
UPDATE customers SET age = 33 WHERE id = 51;
UPDATE customers SET age = 44 WHERE id = 52;
UPDATE customers SET age = 50 WHERE id = 53;
UPDATE customers SET age = 62 WHERE id = 54;
UPDATE customers SET age = 69 WHERE id = 55;
UPDATE customers SET age = 76 WHERE id = 56;
UPDATE customers SET age = 84 WHERE id = 57;
UPDATE customers SET age = 12 WHERE id = 58;
UPDATE customers SET age = 26 WHERE id = 59;
UPDATE customers SET age = 38 WHERE id = 60;
UPDATE customers SET age = 43 WHERE id = 61;
UPDATE customers SET age = 52 WHERE id = 62;
UPDATE customers SET age = 68 WHERE id = 63;
UPDATE customers SET age = 71 WHERE id = 64;
UPDATE customers SET age = 79 WHERE id = 65;
UPDATE customers SET age = 11 WHERE id = 66;
UPDATE customers SET age = 24 WHERE id = 67;
UPDATE customers SET age = 32 WHERE id = 68;
UPDATE customers SET age = 47 WHERE id = 69;
UPDATE customers SET age = 56 WHERE id = 70;

SELECT * FROM customers;

-- 19. Display the age category of customers: ‘Teen’ (13-19), ‘Adult’ (20-59), ‘Senior’ (60+)
SELECT 
id,
name,
age,
CASE
WHEN age BETWEEN 13 AND 19 THEN 'Teen'
WHEN age BETWEEN 20 AND 59 THEN 'Adult'
ELSE  'Senior'
END AS Customer_Age_Status
FROM customers;

SELECT * FROM product;

--  add new table order_data

CREATE TABLE IF NOT EXISTS order_data
( order_id INT PRIMARY KEY,
  product_id INT,
  product_name VARCHAR(50),
  order_date DATE,
  shipping_date DATE,
  shipping_time_In_Hours INT,
  FOREIGN KEY(product_id)  REFERENCES product(product_id)
);

INSERT INTO order_data (order_id, product_id, product_name, order_date, shipping_date, shipping_time_In_Hours) VALUES
(1, 1, 'Laptop', '2025-02-01', '2025-02-05', 72),
(2, 2, 'Smartphone', '2025-02-02', '2025-02-06', 48),
(3, 3, 'Wireless Headphones', '2025-02-03', '2025-02-07', 36),
(4, 4, 'Gaming Mouse', '2025-02-04', '2025-02-08', 24),
(5, 5, 'Mechanical Keyboard', '2025-02-05', '2025-02-09', 60),
(6, 6, 'Smartwatch', '2025-02-06', '2025-02-10', 72),
(7, 7, 'Bluetooth Speaker', '2025-02-07', '2025-02-11', 48),
(8, 8, 'Tablet', '2025-02-08', '2025-02-12', 96),
(9, 9, 'Portable Charger', '2025-02-09', '2025-02-13', 24),
(10, 10, 'Monitor', '2025-02-10', '2025-02-14', 60),
(11, 11, 'External Hard Drive', '2025-02-11', '2025-02-15', 72),
(12, 12, 'Smart TV', '2025-02-12', '2025-02-16', 96),
(13, 13, 'Digital Camera', '2025-02-13', '2025-02-17', 48),
(14, 14, 'Tripod Stand', '2025-02-14', '2025-02-18', 36),
(15, 15, 'LED Desk Lamp', '2025-02-15', '2025-02-19', 24),
(16, 16, 'WiFi Router', '2025-02-16', '2025-02-20', 60),
(17, 17, 'Noise Cancelling Earbuds', '2025-02-17', '2025-02-21', 72),
(18, 18, 'Fitness Tracker', '2025-02-18', '2025-02-22', 48),
(19, 19, 'VR Headset', '2025-02-19', '2025-02-23', 96),
(20, 20, 'Electric Kettle', '2025-02-20', '2025-02-24', 24),
(21, 21, 'Coffee Machine', '2025-02-21', '2025-02-25', 60),
(22, 22, 'Portable Air Conditioner', '2025-02-22', '2025-02-26', 72),
(23, 23, 'Smart Bulbs', '2025-02-23', '2025-02-27', 48),
(24, 24, 'Power Bank', '2025-02-24', '2025-02-28', 96),
(25, 25, 'Graphic Tablet', '2025-02-25', '2025-03-01', 24),
(26, 26, 'Gaming Console', '2025-02-26', '2025-03-02', 60),
(27, 27, 'Projector', '2025-02-27', '2025-03-03', 72),
(28, 28, 'Home Theater System', '2025-02-28', '2025-03-04', 48),
(29, 29, 'Wireless Charger', '2025-03-01', '2025-03-05', 96),
(30, 30, 'Smart Lock', '2025-03-02', '2025-03-06', 24),
(31, 31, 'Robot Vacuum Cleaner', '2025-03-03', '2025-03-07', 60),
(32, 32, 'Air Purifier', '2025-03-04', '2025-03-08', 72),
(33, 33, 'Standing Desk', '2025-03-05', '2025-03-09', 48),
(34, 34, 'Electric Scooter', '2025-03-06', '2025-03-10', 96),
(35, 35, '3D Printer', '2025-03-07', '2025-03-11', 24),
(36, 36, 'Smart Thermostat', '2025-03-08', '2025-03-12', 60),
(37, 37, 'Security Camera', '2025-03-09', '2025-03-13', 72),
(38, 38, 'Dash Cam', '2025-03-10', '2025-03-14', 48),
(39, 39, 'Car Vacuum Cleaner', '2025-03-11', '2025-03-15', 96),
(40, 40, 'Wireless Mouse', '2025-03-12', '2025-03-16', 24),
(41, 41, 'Laptop Cooling Pad', '2025-03-13', '2025-03-17', 60),
(42, 42, 'Smart Mirror', '2025-03-14', '2025-03-18', 72),
(43, 43, 'Bluetooth Keyboard', '2025-03-15', '2025-03-19', 48),
(44, 44, 'Mini Fridge', '2025-03-16', '2025-03-20', 96),
(45, 45, 'Gaming Chair', '2025-03-17', '2025-03-21', 24),
(46, 46, 'USB Hub', '2025-03-18', '2025-03-22', 60),
(47, 47, 'Electric Toothbrush', '2025-03-19', '2025-03-23', 72),
(48, 48, 'Cordless Hair Clipper', '2025-03-20', '2025-03-24', 48),
(49, 49, 'LED Ring Light', '2025-03-21', '2025-03-25', 96),
(50, 50, 'HD Webcam', '2025-03-22', '2025-03-26', 24),
(51, 51, 'Noise Machine', '2025-03-23', '2025-03-27', 60),
(52, 52, 'Wireless Doorbell', '2025-03-24', '2025-03-28', 72),
(53, 53, 'Portable Speaker', '2025-03-25', '2025-03-29', 48),
(54, 54, 'Smart Alarm Clock', '2025-03-26', '2025-03-30', 96),
(55, 55, 'Electric Blanket', '2025-03-27', '2025-03-31', 24),
(56, 56, 'Instant Camera', '2025-03-28', '2025-04-01', 60),
(57, 57, 'E-Reader', '2025-03-29', '2025-04-02', 72),
(58, 58, 'USB Flash Drive', '2025-03-30', '2025-04-03', 48),
(59, 59, 'Hard Shell Backpack', '2025-03-31', '2025-04-04', 96),
(60, 60, 'Digital Notepad', '2025-04-01', '2025-04-05', 24),
(61, 61, 'Wireless Headset', '2025-04-02', '2025-04-06', 60),
(62, 62, 'Solar Power Bank', '2025-04-03', '2025-04-07', 72),
(63, 63, 'Selfie Stick', '2025-04-04', '2025-04-08', 48),
(64, 64, 'Wireless Earbuds', '2025-04-05', '2025-04-09', 96),
(65, 65, 'Smart Notebook', '2025-04-06', '2025-04-10', 24),
(66, 66, 'Digital Clock', '2025-04-07', '2025-04-11', 60),
(67, 67, 'Streaming Stick', '2025-04-08', '2025-04-12', 72),
(68, 68, 'WiFi Booster', '2025-04-09', '2025-04-13', 48),
(69, 69, 'Pet Camera', '2025-04-10', '2025-04-14', 96),
(70, 70, 'Smart Scale', '2025-04-11', '2025-04-15', 24);

SELECT * FROM order_data;

-- 20. Assign shipping priority: ‘Urgent’ if shipping time is within 36 hours of shipping, ‘Normal’
-- otherwise

SELECT
order_id,
product_name,
shipping_time_In_Hours,
CASE 
WHEN shipping_time_In_Hours < 36 THEN 'Urgent'
ELSE 'Normal'
END AS Shipping_Status
FROM order_data;


-- UNION AND UNION ALL questio

-- 21. Combine two tables: list of current employees and ex-employees using UNION.

   --  here NULL as exit_date used in first query to match second table structure
(SELECT employee_id,name,department,joining_data, NULL AS exit_data FROM current_employee)
UNION
(SELECT employee_id,name,department,joining_date,exit_date  FROM ex_employee); 

-- 22. Merge two queries: students who passed in Math and students who passed in
-- Science.

(SELECT student_id,student_name,subject_name FROM student_data WHERE subject_name = 'Science' AND result_status = 'Pass')
UNION 
(SELECT student_id,student_name,subject_name FROM student_data WHERE subject_name = 'Math' AND result_status = 'Pass');

-- 23. Display all unique product names from two different product tables using UNION.

(SELECT product_name FROM product_1)
UNION
(SELECT product_name FROM product_2);


-- 24. Retrieve email addresses from both customers and suppliers, ensuring
-- duplicates are included (UNION ALL).


(SELECT email FROM customers)
UNION ALL
(SELECT email FROM suppliers);


-- 25. Get a combined list of cities from customers and employees tables.
(SELECT city FROM employees)
UNION
(SELECT city FROM customers);



