CREATE DATABASE IF NOT EXISTS Practice_problem;
USE Practice_problem;

CREATE TABLE IF NOT EXISTS customers(
id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
city VARCHAR(50),
sign_up DATE
);

INSERT INTO customers (id,name,email,city,sign_up)
VALUES
(1, 'Alice Johnson', 'alice.johnson@example.com', 'New York', '2022-01-15'),
(2, 'Bob Smith', 'bob.smith@example.com', NULL, '2023-02-20'),
(3, 'Catherine Brown', 'catherine.brown@example.com', 'Chicago', '2021-03-10'),
(4, 'David Jones', NULL, 'Houston', '2023-04-25'),
(5, 'Emma Wilson', 'emma.wilson@example.com', NULL, '2022-05-30'),
(6, 'Frank White', NULL, 'Philadelphia', '2021-06-15'),
(7, NULL, 'grace.green@example.com', 'San Antonio', '2023-07-20'),
(8, 'Henry Harris', 'henry.harris@example.com', 'San Diego', NULL),
(9, 'Isabella Clark', NULL, 'Dallas', '2021-09-30'),
(10, 'Jack Lewis', 'jack.lewis@example.com', NULL, '2023-10-15'),
(11, 'Karen Walker', 'karen.walker@example.com', 'Austin', '2022-11-20'),
(12, 'Liam Hall', NULL, 'Jacksonville', '2021-12-25'),
(13, 'Mia Young', 'mia.young@example.com', 'Fort Worth', NULL),
(14, 'Nathan Allen', 'nathan.allen@example.com', NULL, '2022-02-15'),
(15, NULL, 'olivia.king@example.com', 'Charlotte', '2021-03-20'),
(16, 'Paul Scott', NULL, 'San Francisco', '2023-04-25'),
(17, 'Quinn Wright', 'quinn.wright@example.com', 'Indianapolis', NULL),
(18, 'Rachel Turner', NULL, 'Seattle', '2021-06-15'),
(19, 'Samuel Adams', 'samuel.adams@example.com', NULL, '2023-07-20'),
(20, 'Tina Baker', 'tina.baker@example.com', 'Washington', NULL),
(21, 'Ursula Parker', NULL, 'Boston', '2021-09-30'),
(22, 'Victor Price', 'victor.price@example.com', 'El Paso', NULL),
(23, 'Wendy Sanders', NULL, 'Nashville', '2022-11-20'),
(24, 'Xander Reed', 'xander.reed@example.com', NULL, '2021-12-25'),
(25, 'Yvonne Cruz', 'yvonne.cruz@example.com', NULL, '2023-01-30'),
(26, 'Zachary Bell', NULL, 'Las Vegas', '2022-02-15'),
(27, 'Anna Mitchell', 'anna.mitchell@example.com', 'Louisville', NULL),
(28, 'Blake Ross', NULL, 'Baltimore', '2023-04-25'),
(29, 'Claire Coleman', 'claire.coleman@example.com', NULL, '2022-05-30'),
(30, 'Daniel Patterson', NULL, 'Albuquerque', '2021-06-15'),
(31, 'Ella Hughes', 'ella.hughes@example.com', NULL, '2023-07-20'),
(32, 'Felix Simmons', NULL, 'Fresno', '2022-08-25'),
(33, 'Gina Foster', 'gina.foster@example.com', NULL, '2021-09-30'),
(34, 'Harry Richards', NULL, 'Kansas City', '2023-10-15'),
(35, 'Ivy Patterson', 'ivy.patterson@example.com', NULL, '2022-11-20'),
(36, 'Jake Bailey', NULL, 'Atlanta', '2021-12-25'),
(37, 'Kara Morales', 'kara.morales@example.com', NULL, '2023-01-30'),
(38, 'Lance Fisher', NULL, 'Colorado Springs', '2022-02-15'),
(39, 'Mona Hawkins', 'mona.hawkins@example.com', NULL, '2021-03-20'),
(40, 'Nina Carlson', NULL, 'Miami', '2023-04-25'),
(41, 'Oscar Ellis', 'oscar.ellis@example.com', NULL, '2022-05-30'),
(42, 'Patricia Ward', NULL, 'Oakland', '2021-06-15'),
(43, 'Quentin Brooks', 'quentin.brooks@example.com', NULL, '2023-07-20'),
(44, 'Rita Cook', NULL, 'Tulsa', '2022-08-25'),
(45, 'Steven Hayes', 'steven.hayes@example.com', NULL, '2021-09-30'),
(46, 'Tessa Webb', NULL, 'New Orleans', '2023-10-15'),
(47, 'Ulysses Scott', 'ulysses.scott@example.com', NULL, '2022-11-20'),
(48, 'Victoria Powell', NULL, 'Cleveland', '2021-12-25'),
(49, 'Walter Torres', 'walter.torres@example.com', NULL, '2023-01-30'),
(50, 'Xenia Spencer', NULL, 'Tampa', '2022-02-15'),
(51, 'Yusuf Anderson', 'yusuf.anderson@example.com', NULL, '2021-03-20'),
(52, 'Zoe Cunningham', NULL, 'Anaheim', '2023-04-25'),
(53, 'Amber Olson', 'amber.olson@example.com', NULL, '2022-05-30'),
(54, 'Bradley Howell', NULL, 'St. Louis', '2021-06-15'),
(55, 'Camila Webster', NULL, 'Riverside', '2023-07-20'),
(56, 'Derek Sanchez', NULL, 'Corpus Christi', '2022-08-25'),
(57, 'Eve Burton', NULL, 'Lexington', '2021-09-30'),
(58, 'Finn Barrett', NULL, 'Henderson', '2023-10-15'),
(59, 'Gwen Shaw', 'gwen.shaw@example.com', NULL, '2022-11-20'),
(60, 'Howard Richardson', NULL, 'Saint Paul', '2021-12-25'),
(61, 'Isabel Kim', NULL, 'Cincinnati', '2023-01-30'),
(62, 'Jacob Vasquez', 'jacob.vasquez@example.com', NULL, '2022-02-15'),
(63, 'Kelsey Hunt', NULL, 'Greensboro', '2021-03-20'),
(64, 'Logan Greene', 'logan.greene@example.com', NULL, '2023-04-25'),
(65, 'Molly Wells', NULL, 'Durham', '2022-05-30'),
(66, 'Noah Pearson', 'noah.pearson@example.com', NULL, '2021-06-15'),
(67, 'Owen Meyer', NULL, 'Chula Vista', '2023-07-20'),
(68, 'Piper Aguilar', 'piper.aguilar@example.com', NULL, '2022-08-25'),
(69, 'Quincy Bishop', NULL, 'Chandler', '2021-09-30'),
(70, 'Ruby Lowe', NULL, 'Madison', '2023-10-15');

CREATE TABLE IF NOT EXISTS orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date  DATE,
amount DECIMAL(10,2),
FOREIGN KEY(customer_id) REFERENCES customers(id)
);

INSERT INTO orders (order_id, customer_id, order_date, amount) VALUES
(1, 1, '2023-01-15', 150.75),
(2, 2, '2023-02-20', 245.50),
(3, 3, NULL, 300.00),
(4, 4, '2023-04-25', NULL),
(5, 5, '2023-05-30', 120.25),
(6, 6, '2023-06-15', NULL),
(7, 7, '2023-07-20', 500.00),
(8, 8, NULL, 245.50),
(9, 9, '2023-09-30', 150.75),
(10, 10, '2023-10-15', NULL),
(11, 11, '2023-11-20', 300.00),
(12, 12, NULL, 120.25),
(13, 13, '2023-01-30', 150.75),
(14, 14, '2023-02-15', 245.50),
(15, 15, NULL, 300.00),
(16, 16, '2023-04-25', NULL),
(17, 17, '2023-05-30', 120.25),
(18, 18, '2023-06-15', NULL),
(19, 19, '2023-07-20', 500.00),
(20, 20, NULL, 245.50),
(21, 21, '2023-09-30', 150.75),
(22, 22, '2023-10-15', NULL),
(23, 23, '2023-11-20', 300.00),
(24, 24, NULL, 120.25),
(25, 25, '2023-01-30', 150.75),
(26, 26, '2023-02-15', 245.50),
(27, 27, NULL, 300.00),
(28, 28, '2023-04-25', NULL),
(29, 29, '2023-05-30', 120.25),
(30, 30, '2023-06-15', NULL),
(31, 31, '2023-07-20', 500.00),
(32, 32, NULL, 245.50),
(33, 33, '2023-09-30', 150.75),
(34, 34, '2023-10-15', NULL),
(35, 35, '2023-11-20', 300.00),
(36, 36, NULL, 120.25),
(37, 37, '2023-01-30', 150.75),
(38, 38, '2023-02-15', 245.50),
(39, 39, NULL, 300.00),
(40, 40, '2023-04-25', NULL),
(41, 41, '2023-05-30', 120.25),
(42, 42, '2023-06-15', NULL),
(43, 43, '2023-07-20', 500.00),
(44, 44, NULL, 245.50),
(45, 45, '2023-09-30', 150.75),
(46, 46, '2023-10-15', NULL),
(47, 47, '2023-11-20', 300.00),
(48, 48, NULL, 120.25),
(49, 49, '2023-01-30', 150.75),
(50, 50, '2023-02-15', 245.50),
(51, 51, NULL, 300.00),
(52, 52, '2023-04-25', NULL),
(53, 53, '2023-05-30', 120.25),
(54, 54, '2023-06-15', NULL),
(55, 55, '2023-07-20', 500.00),
(56, 56, NULL, 245.50),
(57, 57, '2023-09-30', 150.75),
(58, 58, '2023-10-15', NULL),
(59, 59, '2023-11-20', 300.00),
(60, 60, NULL, 120.25),
(61, 61, '2023-01-30', 150.75),
(62, 62, '2023-02-15', 245.50),
(63, 63, NULL, 300.00),
(64, 64, '2023-04-25', NULL),
(65, 65, '2023-05-30', 120.25),
(66, 66, '2023-06-15', NULL),
(67, 67, '2023-07-20', 500.00),
(68, 68, NULL, 245.50),
(69, 69, '2023-09-30', 150.75),
(70, 70, '2023-10-15', NULL);


CREATE TABLE IF NOT EXISTS product(
product_id INT PRIMARY KEY,
name VARCHAR(50),
category VARCHAR(50),
price DECIMAL(10,2)
);

INSERT INTO product (product_id, name, category, price) VALUES
(1, 'Laptop', 'Electronics', 999.99),
(2, 'Smartphone', 'Electronics', 799.99),
(3, 'Tablet', 'Electronics', NULL),
(4, 'Headphones', 'Electronics', 149.99),
(5, NULL, 'Furniture', 499.99),
(6, 'Chair', NULL, 199.99),
(7, 'Sofa', 'Furniture', NULL),
(8, 'Desk', 'Furniture', 299.99),
(9, 'Lamp', 'Furniture', NULL),
(10, 'Bookcase', 'Furniture', 149.99),
(11, 'Refrigerator', 'Appliances', 899.99),
(12, 'Oven', 'Appliances', NULL),
(13, 'Microwave', 'Appliances', 199.99),
(14, 'Blender', 'Appliances', NULL),
(15, 'Toaster', 'Appliances', 49.99),
(16, NULL, 'Clothing', 79.99),
(17, 'T-shirt', NULL, 29.99),
(18, 'Jeans', 'Clothing', NULL),
(19, 'Jacket', 'Clothing', 129.99),
(20, 'Shoes', 'Clothing', NULL),
(21, 'Hat', 'Clothing', 19.99),
(22, 'Watch', 'Accessories', 199.99),
(23, 'Sunglasses', 'Accessories', NULL),
(24, 'Belt', 'Accessories', 49.99),
(25, NULL, 'Accessories', 24.99),
(26, 'Scarf', 'Accessories', NULL),
(27, 'Necklace', 'Jewelry', 299.99),
(28, 'Bracelet', 'Jewelry', NULL),
(29, 'Ring', 'Jewelry', 199.99),
(30, 'Earrings', 'Jewelry', NULL),
(31, 'Brooch', 'Jewelry', 99.99),
(32, NULL, 'Toys', 49.99),
(33, 'Action Figure', NULL, 19.99),
(34, 'Doll', 'Toys', NULL),
(35, 'Puzzle', 'Toys', 24.99),
(36, 'Board Game', 'Toys', NULL),
(37, 'RC Car', 'Toys', 59.99),
(38, 'Bicycle', 'Sports', 299.99),
(39, NULL, 'Sports', 149.99),
(40, 'Soccer Ball', NULL, 29.99),
(41, 'Basketball', 'Sports', NULL),
(42, 'Tennis Racket', 'Sports', 79.99),
(43, 'Yoga Mat', 'Sports', NULL),
(44, 'Helmet', 'Safety', 49.99),
(45, 'Gloves', 'Safety', NULL),
(46, 'Knee Pads', 'Safety', 24.99),
(47, NULL, 'Safety', 19.99),
(48, 'First Aid Kit', 'Safety', NULL),
(49, 'Fire Extinguisher', 'Safety', 39.99),
(50, 'Water Bottle', 'Fitness', 19.99),
(51, 'Fitness Tracker', NULL, 149.99),
(52, 'Jump Rope', 'Fitness', NULL),
(53, NULL, 'Fitness', 29.99),
(54, 'Dumbbells', 'Fitness', NULL),
(55, 'Yoga Block', 'Fitness', 24.99),
(56, 'Hair Dryer', 'Beauty', 49.99),
(57, NULL, 'Beauty', 29.99),
(58, 'Makeup Kit', NULL, 59.99),
(59, 'Perfume', 'Beauty', NULL),
(60, 'Shampoo', 'Beauty', 14.99),
(61, NULL, 'Books', 19.99),
(62, 'Novel', NULL, 9.99),
(63, 'Textbook', 'Books', NULL),
(64, 'Magazine', 'Books', 4.99),
(65, 'Notebook', 'Books', NULL),
(66, 'Sketchbook', 'Books', 14.99),
(67, 'Pen', NULL, 2.99),
(68, 'Pencil', 'Stationery', NULL),
(69, 'Eraser', 'Stationery', 1.99),
(70, NULL, 'Stationery', 0.99);

CREATE TABLE IF NOT EXISTS OrderDetails(
order_details_id INT PRIMARY KEY,
order_id INT,
product_id INT,
quantity INT,
FOREIGN KEY(order_id) REFERENCES orders(order_id),
FOREIGN KEY(product_id) REFERENCES product(product_id)
);

INSERT INTO OrderDetails (order_details_id, order_id, product_id, quantity) VALUES
(1, 1, 1, 2),
(2, 2, 2, 1),
(3, 3, 3, 1),
(4, 4, 4, 3),
(5, 5, 5, 2),
(6, 6, 6, 1),
(7, 7, 7, 2),
(8, 8, 8, 1),
(9, 9, 9, 1),
(10, 10, 10, 2),
(11, 11, 11, 1),
(12, 12, 12, 1),
(13, 13, 13, 2),
(14, 14, 14, 1),
(15, 15, 15, 1),
(16, 16, 16, 2),
(17, 17, 17, 1),
(18, 18, 18, 1),
(19, 19, 19, 2),
(20, 20, 20, 1),
(21, 21, 21, 1),
(22, 22, 22, 2),
(23, 23, 23, 1),
(24, 24, 24, 1),
(25, 25, 25, 2),
(26, 26, 26, 1),
(27, 27, 27, 1),
(28, 28, 28, 2),
(29, 29, 29, 1),
(30, 30, 30, 1),
(31, 31, 31, 2),
(32, 32, 32, 1),
(33, 33, 33, 1),
(34, 34, 34, 2),
(35, 35, 35, 1),
(36, 36, 36, 1),
(37, 37, 37, 2),
(38, 38, 38, 1),
(39, 39, 39, 1),
(40, 40, 40, 2),
(41, 41, 41, 1),
(42, 42, 42, 1),
(43, 43, 43, 2),
(44, 44, 44, 1),
(45, 45, 45, 1),
(46, 46, 46, 2),
(47, 47, 47, 1),
(48, 48, 48, 1),
(49, 49, 49, 2),
(50, 50, 50, 1),
(51, 51, 51, 1),
(52, 52, 52, 2),
(53, 53, 53, 1),
(54, 54, 54, 1),
(55, 55, 55, 2),
(56, 56, 56, 1),
(57, 57, 57, 1),
(58, 58, 58, 2),
(59, 59, 59, 1),
(60, 60, 60, 1),
(61, 61, 61, 2),
(62, 62, 62, 1),
(63, 63, 63, 1),
(64, 64, 64, 2),
(65, 65, 65, 1),
(66, 66, 66, 1),
(67, 67, 67, 2),
(68, 68, 68, 1),
(69, 69, 69, 1),
(70, 70, 70, 2);


CREATE TABLE IF NOT EXISTS Employee(
employee_id INT PRIMARY KEY,
name VARCHAR(50),
department VARCHAR(50),
salary DECIMAL(10,2),
join_date DATE
);

INSERT INTO Employee (employee_id, name, department, salary, join_date) VALUES
(1, 'Alice Johnson', 'HR', 55000.00, '2022-01-15'),
(2, 'Bob Smith', 'IT', 62000.00, '2023-02-20'),
(3, 'Catherine Brown', 'Sales', 60000.00, '2021-03-10'),
(4, 'David Jones', 'Marketing', 70000.00, '2023-04-25'),
(5, 'Emma Wilson', 'Finance', 58000.00, '2022-05-30'),
(6, 'Frank White', 'Operations', 61000.00, '2021-06-15'),
(7, 'Grace Green', 'HR', 54000.00, '2023-07-20'),
(8, 'Henry Harris', 'IT', 62000.00, '2022-08-25'),
(9, 'Isabella Clark', 'Sales', 60000.00, '2021-09-30'),
(10, 'Jack Lewis', 'Marketing', 71000.00, '2023-10-15'),
(11, 'Karen Walker', 'Finance', 57000.00, '2022-11-20'),
(12, 'Liam Hall', 'Operations', 61000.00, '2021-12-25'),
(13, 'Mia Young', 'HR', 53000.00, '2023-01-30'),
(14, 'Nathan Allen', 'IT', 62000.00, '2022-02-15'),
(15, 'Olivia King', 'Sales', 60000.00, '2021-03-20'),
(16, 'Paul Scott', 'Marketing', 70000.00, '2023-04-25'),
(17, 'Quinn Wright', 'Finance', 58000.00, '2022-05-30'),
(18, 'Rachel Turner', 'Operations', 61000.00, '2021-06-15'),
(19, 'Samuel Adams', 'HR', 53000.00, '2023-07-20'),
(20, 'Tina Baker', 'IT', 62000.00, '2022-08-25'),
(21, 'Ursula Parker', 'Sales', 60000.00, '2021-09-30'),
(22, 'Victor Price', 'Marketing', 71000.00, '2023-10-15'),
(23, 'Wendy Sanders', 'Finance', 57000.00, '2022-11-20'),
(24, 'Xander Reed', 'Operations', 61000.00, '2021-12-25'),
(25, 'Yvonne Cruz', 'HR', 53000.00, '2023-01-30'),
(26, 'Zachary Bell', 'IT', 62000.00, '2022-02-15'),
(27, 'Anna Mitchell', 'Sales', 60000.00, '2021-03-20'),
(28, 'Blake Ross', 'Marketing', 70000.00, '2023-04-25'),
(29, 'Claire Coleman', 'Finance', 58000.00, '2022-05-30'),
(30, 'Daniel Patterson', 'Operations', 61000.00, '2021-06-15'),
(31, 'Ella Hughes', 'HR', 53000.00, '2023-07-20'),
(32, 'Felix Simmons', 'IT', 62000.00, '2022-08-25'),
(33, 'Gina Foster', 'Sales', 60000.00, '2021-09-30'),
(34, 'Harry Richards', 'Marketing', 71000.00, '2023-10-15'),
(35, 'Ivy Patterson', 'Finance', 57000.00, '2022-11-20'),
(36, 'Jake Bailey', 'Operations', 61000.00, '2021-12-25'),
(37, 'Kara Morales', 'HR', 53000.00, '2023-01-30'),
(38, 'Lance Fisher', 'IT', 62000.00, '2022-02-15'),
(39, 'Mona Hawkins', 'Sales', 60000.00, '2021-03-20'),
(40, 'Nina Carlson', 'Marketing', 70000.00, '2023-04-25'),
(41, 'Oscar Ellis', 'Finance', 58000.00, '2022-05-30'),
(42, 'Patricia Ward', 'Operations', 61000.00, '2021-06-15'),
(43, 'Quentin Brooks', 'HR', 53000.00, '2023-07-20'),
(44, 'Rita Cook', 'IT', 62000.00, '2022-08-25'),
(45, 'Steven Hayes', 'Sales', 60000.00, '2021-09-30'),
(46, 'Tessa Webb', 'Marketing', 71000.00, '2023-10-15'),
(47, 'Ulysses Scott', 'Finance', 57000.00, '2022-11-20'),
(48, 'Victoria Powell', 'Operations', 61000.00, '2021-12-25'),
(49, 'Walter Torres', 'HR', 53000.00, '2023-01-30'),
(50, 'Xenia Spencer', 'IT', 62000.00, '2022-02-15'),
(51, 'Yusuf Anderson', 'Sales', 60000.00, '2021-03-20'),
(52, 'Zoe Cunningham', 'Marketing', 70000.00, '2023-04-25'),
(53, 'Amber Olson', 'Finance', 58000.00, '2022-05-30'),
(54, 'Bradley Howell', 'Operations', 61000.00, '2021-06-15'),
(55, 'Camila Webster', 'HR', 53000.00, '2023-07-20'),
(56, 'Derek Sanchez', 'IT', 62000.00, '2022-08-25'),
(57, 'Eve Burton', 'Sales', 60000.00, '2021-09-30'),
(58, 'Finn Barrett', 'Marketing', 71000.00, '2023-10-15'),
(59, 'Gwen Shaw', 'Finance', 57000.00, '2022-11-20'),
(60, 'Howard Richardson', 'Operations', 61000.00, '2021-12-25'),
(61, 'Isabel Kim', 'HR', 53000.00, '2023-01-30'),
(62, 'Jacob Vasquez', 'IT', 62000.00, '2022-02-15'),
(63, 'Kelsey Hunt', 'Sales', 60000.00, '2021-03-20'),
(64, 'Logan Greene', 'Marketing', 70000.00, '2023-04-25'),
(65, 'Molly Wells', 'Finance', 58000.00, '2022-05-30'),
(66, 'Noah Pearson', 'Operations', 61000.00, '2021-06-15'),
(67, 'Owen Meyer', 'HR', 53000.00, '2023-07-20'),
(68, 'Piper Aguilar', 'IT', 62000.00, '2022-08-25'),
(69, 'Quincy Bishop', 'Sales', 60000.00, '2021-09-30'),
(70, 'Ruby Lowe', 'Marketing', 71000.00, '2023-10-15');

CREATE TABLE IF NOT EXISTS Student(
student_id INT PRIMARY KEY,
name VARCHAR(50),
age INT,
grade CHAR(1)
);

INSERT INTO Student (student_id, name, age, grade) VALUES
(1, 'Alice Johnson', 14, 'A'),
(2, 'Bob Smith', 15, 'B'),
(3, 'Catherine Brown', 16, 'A'),
(4, 'David Jones', 15, 'C'),
(5, 'Emma Wilson', 14, 'B'),
(6, 'Frank White', 16, 'A'),
(7, 'Grace Green', 15, 'B'),
(8, 'Henry Harris', 14, 'C'),
(9, 'Isabella Clark', 16, 'A'),
(10, 'Jack Lewis', 15, 'B'),
(11, 'Karen Walker', 14, 'A'),
(12, 'Liam Hall', 16, 'C'),
(13, 'Mia Young', 15, 'B'),
(14, 'Nathan Allen', 14, 'A'),
(15, 'Olivia King', 16, 'B'),
(16, 'Paul Scott', 15, 'C'),
(17, 'Quinn Wright', 14, 'A'),
(18, 'Rachel Turner', 16, 'B'),
(19, 'Samuel Adams', 15, 'A'),
(20, 'Tina Baker', 14, 'B'),
(21, 'Ursula Parker', 16, 'C'),
(22, 'Victor Price', 15, 'A'),
(23, 'Wendy Sanders', 14, 'B'),
(24, 'Xander Reed', 16, 'A'),
(25, 'Yvonne Cruz', 15, 'C'),
(26, 'Zachary Bell', 14, 'B'),
(27, 'Anna Mitchell', 16, 'A'),
(28, 'Blake Ross', 15, 'B'),
(29, 'Claire Coleman', 14, 'C'),
(30, 'Daniel Patterson', 16, 'A'),
(31, 'Ella Hughes', 15, 'B'),
(32, 'Felix Simmons', 14, 'A'),
(33, 'Gina Foster', 16, 'C'),
(34, 'Harry Richards', 15, 'B'),
(35, 'Ivy Patterson', 14, 'A'),
(36, 'Jake Bailey', 16, 'B'),
(37, 'Kara Morales', 15, 'C'),
(38, 'Lance Fisher', 14, 'A'),
(39, 'Mona Hawkins', 16, 'B'),
(40, 'Nina Carlson', 15, 'A'),
(41, 'Oscar Ellis', 14, 'B'),
(42, 'Patricia Ward', 16, 'C'),
(43, 'Quentin Brooks', 15, 'A'),
(44, 'Rita Cook', 14, 'B'),
(45, 'Steven Hayes', 16, 'A'),
(46, 'Tessa Webb', 15, 'C'),
(47, 'Ulysses Scott', 14, 'B'),
(48, 'Victoria Powell', 16, 'A'),
(49, 'Walter Torres', 15, 'B'),
(50, 'Xenia Spencer', 14, 'C'),
(51, 'Yusuf Anderson', 16, 'A'),
(52, 'Zoe Cunningham', 15, 'B'),
(53, 'Amber Olson', 14, 'A'),
(54, 'Bradley Howell', 16, 'B'),
(55, 'Camila Webster', 15, 'C'),
(56, 'Derek Sanchez', 14, 'A'),
(57, 'Eve Burton', 16, 'B'),
(58, 'Finn Barrett', 15, 'A'),
(59, 'Gwen Shaw', 14, 'B'),
(60, 'Howard Richardson', 16, 'C'),
(61, 'Isabel Kim', 15, 'A'),
(62, 'Jacob Vasquez', 14, 'B'),
(63, 'Kelsey Hunt', 16, 'A'),
(64, 'Logan Greene', 15, 'C'),
(65, 'Molly Wells', 14, 'B'),
(66, 'Noah Pearson', 16, 'A'),
(67, 'Owen Meyer', 15, 'B'),
(68, 'Piper Aguilar', 14, 'C'),
(69, 'Quincy Bishop', 16, 'A'),
(70, 'Ruby Lowe', 15, 'B');

CREATE TABLE IF NOT EXISTS Attendance(
attendance_id INT PRIMARY KEY,
student_id INT,
attendance_date DATE,
status VARCHAR(10),
FOREIGN KEY (student_id) REFERENCES Student(student_id)
);

INSERT INTO Attendance (attendance_id, student_id, attendance_date, status) VALUES
(1, 1, '2023-01-01', 'Present'),
(2, 2, '2023-01-01', 'Absent'),
(3, 3, '2023-01-01', 'Present'),
(4, 4, '2023-01-01', 'Present'),
(5, 5, '2023-01-01', 'Absent'),
(6, 6, '2023-01-01', 'Present'),
(7, 7, '2023-01-01', 'Present'),
(8, 8, '2023-01-01', 'Absent'),
(9, 9, '2023-01-01', 'Present'),
(10, 10, '2023-01-01', 'Present'),
(11, 11, '2023-01-01', 'Absent'),
(12, 12, '2023-01-01', 'Present'),
(13, 13, '2023-01-01', 'Present'),
(14, 14, '2023-01-01', 'Absent'),
(15, 15, '2023-01-01', 'Present'),
(16, 16, '2023-01-01', 'Present'),
(17, 17, '2023-01-01', 'Absent'),
(18, 18, '2023-01-01', 'Present'),
(19, 19, '2023-01-01', 'Present'),
(20, 20, '2023-01-01', 'Absent'),
(21, 21, '2023-01-01', 'Present'),
(22, 22, '2023-01-01', 'Present'),
(23, 23, '2023-01-01', 'Absent'),
(24, 24, '2023-01-01', 'Present'),
(25, 25, '2023-01-01', 'Present'),
(26, 26, '2023-01-01', 'Absent'),
(27, 27, '2023-01-01', 'Present'),
(28, 28, '2023-01-01', 'Present'),
(29, 29, '2023-01-01', 'Absent'),
(30, 30, '2023-01-01', 'Present'),
(31, 31, '2023-01-01', 'Present'),
(32, 32, '2023-01-01', 'Absent'),
(33, 33, '2023-01-01', 'Present'),
(34, 34, '2023-01-01', 'Present'),
(35, 35, '2023-01-01', 'Absent'),
(36, 36, '2023-01-01', 'Present'),
(37, 37, '2023-01-01', 'Present'),
(38, 38, '2023-01-01', 'Absent'),
(39, 39, '2023-01-01', 'Present'),
(40, 40, '2023-01-01', 'Present'),
(41, 41, '2023-01-01', 'Absent'),
(42, 42, '2023-01-01', 'Present'),
(43, 43, '2023-01-01', 'Present'),
(44, 44, '2023-01-01', 'Absent'),
(45, 45, '2023-01-01', 'Present'),
(46, 46, '2023-01-01', 'Present'),
(47, 47, '2023-01-01', 'Absent'),
(48, 48, '2023-01-01', 'Present'),
(49, 49, '2023-01-01', 'Present'),
(50, 50, '2023-01-01', 'Absent'),
(51, 51, '2023-01-01', 'Present'),
(52, 52, '2023-01-01', 'Present'),
(53, 53, '2023-01-01', 'Absent'),
(54, 54, '2023-01-01', 'Present'),
(55, 55, '2023-01-01', 'Present'),
(56, 56, '2023-01-01', 'Absent'),
(57, 57, '2023-01-01', 'Present'),
(58, 58, '2023-01-01', 'Present'),
(59, 59, '2023-01-01', 'Absent'),
(60, 60, '2023-01-01', 'Present'),
(61, 61, '2023-01-01', 'Present'),
(62, 62, '2023-01-01', 'Absent'),
(63, 63, '2023-01-01', 'Present'),
(64, 64, '2023-01-01', 'Present'),
(65, 65, '2023-01-01', 'Absent'),
(66, 66, '2023-01-01', 'Present'),
(67, 67, '2023-01-01', 'Present'),
(68, 68, '2023-01-01', 'Absent'),
(69, 69, '2023-01-01', 'Present'),
(70, 70, '2023-01-01', 'Present');

CREATE TABLE IF NOT EXISTS Salary(
employee_id INT,
month VARCHAR(20),
salary DECIMAL(10,2)
);

INSERT INTO Salary (employee_id, month, salary) VALUES
(1, 'January', 55000.00),
(2, 'January', 62000.00),
(3, 'January', 60000.00),
(4, 'January', 70000.00),
(5, 'January', 58000.00),
(6, 'January', 61000.00),
(7, 'January', 54000.00),
(8, 'January', 62000.00),
(9, 'January', 60000.00),
(10, 'January', 71000.00),
(11, 'January', 57000.00),
(12, 'January', 61000.00),
(13, 'January', 53000.00),
(14, 'January', 62000.00),
(15, 'January', 60000.00),
(16, 'January', 70000.00),
(17, 'January', 58000.00),
(18, 'January', 61000.00),
(19, 'January', 53000.00),
(20, 'January', 62000.00),
(21, 'January', 60000.00),
(22, 'January', 71000.00),
(23, 'January', 57000.00),
(24, 'January', 61000.00),
(25, 'January', 53000.00),
(26, 'January', 62000.00),
(27, 'January', 60000.00),
(28, 'January', 70000.00),
(29, 'January', 58000.00),
(30, 'January', 61000.00),
(31, 'January', 53000.00),
(32, 'January', 62000.00),
(33, 'January', 60000.00),
(34, 'January', 71000.00),
(35, 'January', 57000.00),
(36, 'January', 61000.00),
(37, 'January', 53000.00),
(38, 'January', 62000.00),
(39, 'January', 60000.00),
(40, 'January', 70000.00),
(41, 'January', 58000.00),
(42, 'January', 61000.00),
(43, 'January', 53000.00),
(44, 'January', 62000.00),
(45, 'January', 60000.00),
(46, 'January', 71000.00),
(47, 'January', 57000.00),
(48, 'January', 61000.00),
(49, 'January', 53000.00),
(50, 'January', 62000.00),
(51, 'January', 60000.00),
(52, 'January', 70000.00),
(53, 'January', 58000.00),
(54, 'January', 61000.00),
(55, 'January', 53000.00),
(56, 'January', 62000.00),
(57, 'January', 60000.00),
(58, 'January', 71000.00),
(59, 'January', 57000.00),
(60, 'January', 61000.00),
(61, 'January', 53000.00),
(62, 'January', 62000.00),
(63, 'January', 60000.00),
(64, 'January', 70000.00),
(65, 'January', 58000.00),
(66, 'January', 61000.00),
(67, 'January', 53000.00),
(68, 'January', 62000.00),
(69, 'January', 60000.00),
(70, 'January', 71000.00);

SELECT * FROM  customers;
SELECT * FROM  orders;
SELECT * FROM product;
SELECT * FROM OrderDetails;
SELECT * FROM Employee;
SELECT * FROM Student;
SELECT * FROM Attendance;
SELECT * FROM Salary;



SELECT * FROM customers;
SELECT * FROM orders;

-- 1. Retrieve all customers and their corresponding orders using an INNER JOIN.
SELECT 
     c.id AS customer_id,
     c.name AS customer_name,
     ord.order_id  AS order_id,
     ord.order_date,
     ord.amount
FROM 
customers AS c
INNER JOIN orders AS ord
ON c.id = ord.customer_id;

-- 2. Get all customers and their orders, showing customers even if they haven’t placed an
-- order (LEFT JOIN).

SELECT 
     c.id AS customer_id,
     c.name AS customer_name,
     ord.order_id AS order_id,
     ord.order_date,
     ord.amount
FROM customers as c
LEFT JOIN orders AS ord
ON c.id = ord.customer_id
ORDER BY c.id,ord.order_id  DESC ;

-- 3. Fetch all employees and their assigned projects, including projects that have no
-- assigned employees (RIGHT JOIN).

SELECT 
	e.employee_id AS Employee_ID,
    COALESCE(e.name ,'Unassigned') AS Employee_Name,
    e.department AS Employee_Department,
    p.project_id AS Project_ID,
    p.project_name AS project_Name
    
FROM employee as e
RIGHT JOIN projects AS p
ON e.employee_id = p.employee_id
ORDER BY e.project_id ASC;


-- 4. List all students and their assigned mentors, showing all students even if they have
-- no mentor (LEFT JOIN).

SELECT * FROM student;

SELECT 
    s.student_id AS Student_ID,
    s.name AS Student_Name,
    m.mentor_id AS Mentor_ID,
    COALESCE(m.name, 'No Mentor') AS Mentor_Name  -- Ensuring NULL mentors appear as "No Mentor"
FROM student AS s
LEFT JOIN mentors AS m
ON s.student_id = m.student_id  -- Ensure this matches your schema
ORDER BY s.student_id ASC;  -- Explicitly use "s.student_id"


-- 5. Display all customers and their orders, ensuring that both customers and orders
-- appear even if one doesn’t exist (FULL JOIN).

SELECT * FROM customers;
SELECT * FROM orders;

(SELECT 
	c.id  AS Customers_ID,
    c.name  AS Customers_Name,
    ord.order_id AS Order_ID,
    ord.order_date AS Order_Date,
    ord.amount AS Total_Amount
FROM customers AS c
LEFT JOIN orders AS ord
ON c.id = ord.customer_id)
UNION ALL
(SELECT 
	c.id  AS Customers_ID,
    c.name AS Customers_Name,
    ord.order_id AS Order_ID,
    ord.order_date AS Order_Date,
    ord.amount AS Total_Amount
FROM customers AS c
RIGHT JOIN orders AS ord
ON c.id = ord.customer_id);
    
-- 6. Find the total sales per customer (GROUP BY customer_id).

-- SELECT customer_id,COUNT(order_id) AS Total_Orders
-- FROM sales
-- GROUP BY customer_id;

-- SELECT * FROM customers;
-- SELECT * FROM orders;

SELECT 
    c.id AS Customers_ID,
    COUNT(ord.order_id) AS Total_Orders
FROM customers AS c
INNER JOIN orders AS ord
ON c.id = ord.customer_id
GROUP BY c.id;
    
    
-- 7. Get the total number of orders per product (GROUP BY product_id).
SELECT 
	p.product_id AS Product_ID,
    p.name AS Product_Name,
    COUNT(ord.order_id) AS Total_Orders
FROM product AS p
INNER JOIN orders AS ord
ON p.product_id = ord.product_id
GROUP BY p.product_id,p.name;

-- 8. Find the average salary for each department (GROUP BY department_id)

SELECT * FROM Employee;

SELECT department,AVG(salary) AS Average_Salary
FROM Employee
GROUP BY department;


SELECT * FROM customers;
SELECT * FROM orders;
-- 9. Retrieve customers who have placed more than 2 orders (HAVING
-- COUNT(order_id) > 2).

SELECT 
	c.id AS Customer_ID,
    c.name AS Customer_Name,
    COUNT(ord.order_id) AS TOTAL_Orders
FROM customers AS c
INNER JOIN orders AS ord
ON c.id = ord.customer_id
GROUP BY c.id,c.name
HAVING COUNT(ord.order_id) >2
ORDER BY Total_Orders DESC;

-- 10. List products where the total quantity sold is greater than 5 (HAVING
-- SUM(quantity) > 5).

SELECT * FROM product;
SELECT * FROM OrderDetails;

SELECT 
	p.product_id AS Product_ID,
    p.name AS Product_Name,
    SUM(od.quantity) AS Total_Quantity
FROM product AS P
INNER JOIN OrderDetails AS od
ON p.product_id = od.product_id
GROUP BY p.product_id,p.name
HAVING SUM(od.quantity)>5
ORDER BY Total_Quantity DESC;


-- 11. Retrieve employees who earn more than the average salary
SELECT ROUND(AVG(salary),2) FROM Employee;
SELECT salary FROM Employee WHERE salary> 60757.14;

-- using subsquerie syntax

SELECT * FROM Employee 
WHERE salary >(
SELECT ROUND(AVG(salary),2)
FROM Employee
);

-- 12. Find customers who have never placed an order using a subquery

SELECT * FROM customers;
SELECT * FROM orders WHERE order_id IS NULL;

-- using subquery

SELECT * FROM
customers WHERE 
id NOT IN (
SELECT DISTINCT(customer_id) FROM orders
WHERE customer_id IS NOT  NULL);


-- 13. Get the most expensive product in each category using a subquery.
SELECT * FROM product;

SELECT * FROM
product AS P 
WHERE price = (
SELECT MAX(price) FROM 
product WHERE category = p.category
);

SELECT * FROM Employee;
-- 14. List all employees who work in the same department as 'John Doe'.

SELECT * FROM 
Employee WHERE department_id = (
SELECT department_id FROM Employee
WHERE name = 'john Doe'
)
AND name <> 'john Doe'
;


-- 15. Fetch the names of students who scored higher than the average score in the exam
SELECT * FROM student;

SELECT name 
FROM student
WHERE marks>(
SELECT AVG(marks) 
FROM student);
















