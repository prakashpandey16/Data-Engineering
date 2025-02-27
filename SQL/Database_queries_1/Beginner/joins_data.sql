CREATE DATABASE IF NOT EXISTS joins_data;

USE joins_data;

CREATE TABLE employees (
    emp_id INT PRIMARY KEY,
    emp_name VARCHAR(100),
    dept_id INT,
    manager_id INT,
    salary DECIMAL(10,2),
    FOREIGN KEY (dept_id) REFERENCES departments(dept_id),
    FOREIGN KEY (manager_id) REFERENCES employees(emp_id)
);

CREATE TABLE departments (
    dept_id INT PRIMARY KEY,
    dept_name VARCHAR(100),
    location_id INT,
    FOREIGN KEY (location_id) REFERENCES locations(location_id)
);

CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(100)
);

CREATE TABLE orders (
    order_id INT PRIMARY KEY,
    customer_id INT,
    order_date DATE,
    FOREIGN KEY (customer_id) REFERENCES customers(customer_id)
);


CREATE TABLE products (
    product_id INT PRIMARY KEY,
    product_name VARCHAR(100),
    category_id INT,
    supplier_id INT,
    FOREIGN KEY (category_id) REFERENCES categories(category_id),
    FOREIGN KEY (supplier_id) REFERENCES suppliers(supplier_id)
);

CREATE TABLE order_details (
    order_id INT,
    product_id INT,
    quantity INT,
    price DECIMAL(10,2),
    PRIMARY KEY (order_id, product_id),
    FOREIGN KEY (order_id) REFERENCES orders(order_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id)
);

CREATE TABLE categories (
    category_id INT PRIMARY KEY,
    category_name VARCHAR(100)
);

CREATE TABLE suppliers (
    supplier_id INT PRIMARY KEY,
    supplier_name VARCHAR(100)
);

CREATE TABLE locations (
    location_id INT PRIMARY KEY,
    location_name VARCHAR(100)
);


INSERT INTO locations (location_id, location_name) VALUES
(1, 'Jaipur'),
(2, 'Mumbai'),
(3, 'Delhi'),
(4, 'Bangalore'),
(5, 'Kolkata'),
(6, 'Chennai'),
(7, 'Hyderabad'),
(8, 'Pune'),
(9, 'Ahmedabad'),
(10, 'Surat'),
(11, 'Lucknow'),
(12, 'Kanpur'),
(13, 'Nagpur'),
(14, 'Indore'),
(15, 'Bhopal'),
(16, 'Vadodara'),
(17, 'Visakhapatnam'),
(18, 'Patna'),
(19, 'Ludhiana'),
(20, 'Agra'),
(21, 'Nashik'),
(22, 'Meerut'),
(23, 'Faridabad'),
(24, 'Ghaziabad'),
(25, 'Rajkot'),
(26, 'Varanasi'),
(27, 'Amritsar'),
(28, 'Allahabad'),
(29, 'Jabalpur'),
(30, 'Coimbatore');


INSERT INTO departments (dept_id, dept_name, location_id) VALUES
(101, 'Marketing', 1),
(102, 'Sales', 2),
(103, 'Engineering', 3),
(104, 'HR', 4),
(105, 'Finance', 5),
(106, 'Operations', 6),
(107, 'Research & Development', 7),
(108, 'Customer Service', 8),
(109, 'Legal', 9),
(110, 'IT', 10),
(111, 'Product Development', 11),
(112, 'Quality Assurance', 12),
(113, 'Training', 13),
(114, 'Analytics', 14),
(115, 'Public Relations', 15),
(116, 'Administration', 16),
(117, 'Facilities', 17),
(118, 'Security', 18),
(119, 'Logistics', 19),
(120, 'Supply Chain', 20),
(121, 'Design', 21),
(122, 'Content', 22),
(123, 'Communications', 23),
(124, 'Innovation', 24),
(125, 'Strategy', 25),
(126, 'Planning', 26),
(127, 'Support', 27),
(128, 'Maintenance', 28),
(129, 'Testing', 29),
(130, 'Consulting', 30);

INSERT INTO employees (emp_id, emp_name, dept_id, manager_id, salary) VALUES
(1, 'John Smith', 102, NULL, 60000.00),
(2, 'Alice Johnson', 101, 1, 55000.00),
(3, 'Bob Williams', 103, 1, 70000.00),
(4, 'Charlie Brown', 104, 2, 50000.00),
(5, 'Diana Miller', 105, 3, 65000.00),
(6, 'Eva Davis', 102, 4, 62000.00),
(7, 'Frank Wilson', 101, 5, 58000.00),
(8, 'Grace Moore', 103, 6, 72000.00),
(9, 'Henry Taylor', 104, 7, 52000.00),
(10, 'Ivy Anderson', 105, 8, 68000.00),
(11, 'Jack Thomas', 106, 9, 75000.00),
(12, 'Kelly White', 107, 10, 80000.00),
(13, 'Liam Harris', 108, 11, 53000.00),
(14, 'Mia Martin', 109, 12, 90000.00),
(15, 'Noah Clark', 110, 13, 85000.00),
(16, 'Olivia Lewis', 111, 14, 78000.00),
(17, 'Peter Baker', 112, 15, 60000.00),
(18, 'Quinn Green', 113, 16, 57000.00),
(19, 'Ryan King', 114, 17, 71000.00),
(20, 'Sophia Wright', 115, 18, 63000.00),
(21, 'Thomas Lopez', 116, 19, 66000.00),
(22, 'Uma Hill', 117, 20, 59000.00),
(23, 'Victor Scott', 118, 21, 54000.00),
(24, 'Wendy Adams', 119, 22, 69000.00),
(25, 'Xavier Nelson', 120, 23, 73000.00),
(26, 'Yara Carter', 121, 24, 77000.00),
(27, 'Zack Phillips', 122, 25, 61000.00),
(28, 'Ava James', 123, 26, 56000.00),
(29, 'Caleb Gray', 124, 27, 79000.00),
(30, 'Zara Bell', 125, 28, 82000.00);

INSERT INTO customers (customer_id, customer_name) VALUES
(1, 'Reliance Retail'),
(2, 'Croma'),
(3, 'Amazon'),
(4, 'Flipkart'),
(5, 'D-Mart'),
(6, 'Big Bazaar'),
(7, 'Spencer\'s Retail'),
(8, 'More Retail'),
(9, 'Aditya Birla Retail'),
(10, 'Future Retail'),
(11, 'Shoppers Stop'),
(12, 'Lifestyle'),
(13, 'Pantaloons'),
(14, 'Westside'),
(15, 'Trent Limited'),
(16, 'Tata CLiQ'),
(17, 'Nykaa'),
(18, 'Myntra'),
(19, 'Ajio'),
(20, 'Purplle'),
(21, 'Health & Glow'),
(22, 'Apollo Pharmacy'),
(23, 'Netmeds'),
(24, 'Pharmeasy'),
(25, '1mg'),
(26, 'Medlife'),
(27, 'BookMyShow'),
(28, 'PVR Cinemas'),
(29, 'INOX Movies'),
(30, 'Carnival Cinemas');

INSERT INTO orders (order_id, customer_id, order_date) VALUES
(1001, 1, '2024-01-15'),
(1002, 2, '2024-02-20'),
(1003, 3, '2024-03-25'),
(1004, 4, '2024-04-10'),
(1005, 5, '2024-05-18'),
(1006, 6, '2024-06-22'),
(1007, 7, '2024-07-01'),
(1008, 8, '2024-07-15'),
(1009, 9, '2024-08-02'),
(1010, 10, '2024-08-29'),
(1011, 11, '2024-09-10'),
(1012, 12, '2024-09-25'),
(1013, 13, '2024-10-05'),
(1014, 14, '2024-10-19'),
(1015, 15, '2024-11-01'),
(1016, 16, '2024-11-12'),
(1017, 17, '2024-11-28'),
(1018, 18, '2024-12-05'),
(1019, 19, '2024-12-16'),
(1020, 20, '2024-12-29'),
(1021, 21, '2025-01-03'),
(1022, 22, '2025-01-09'),
(1023, 23, '2025-01-17'),
(1024, 24, '2025-01-25'),
(1025, 25, '2025-02-02'),
(1026, 26, '2025-02-08'),
(1027, 27, '2025-02-14'),
(1028, 28, '2025-02-20'),
(1029, 29, '2025-02-26'),
(1030, 30, '2025-03-04');


INSERT INTO categories (category_id, category_name) VALUES
(1, 'Electronics'),
(2, 'Clothing'),
(3, 'Home Appliances'),
(4, 'Books'),
(5, 'Groceries'),
(6, 'Furniture'),
(7, 'Beauty & Personal Care'),
(8, 'Sports & Outdoors'),
(9, 'Toys & Games'),
(10, 'Automotive'),
(11, 'Jewelry'),
(12, 'Watches'),
(13, 'Bags & Luggage'),
(14, 'Shoes'),
(15, 'Home Decor'),
(16, 'Kitchen & Dining'),
(17, 'Pet Supplies'),
(18, 'Baby Products'),
(19, 'Health & Nutrition'),
(20, 'Stationery'),
(21, 'Musical Instruments'),
(22, 'Software'),
(23, 'Video Games'),
(24, 'Movies & TV Shows'),
(25, 'Music'),
(26, 'Art Supplies'),
(27, 'Craft Supplies'),
(28, 'Gardening'),
(29, 'Tools & Home Improvement'),
(30, 'Industrial & Scientific');


INSERT INTO suppliers (supplier_id, supplier_name) VALUES
(1, 'Samsung'),
(2, 'Levi\'s'),
(3, 'Whirlpool'),
(4, 'Penguin Books'),
(5, 'Hindustan Unilever'),
(6, 'Godrej Interio'),
(7, 'L\'Oreal'),
(8, 'Adidas'),
(9, 'Mattel'),
(10, 'Bosch'),
(11, 'Tanishq'),
(12, 'Titan'),
(13, 'American Tourister'),
(14, 'Nike'),
(15, 'HomeTown'),
(16, 'Cello'),
(17, 'Pedigree'),
(18, 'Johnson & Johnson'),
(19, 'Nestle Health Science'),
(20, 'Classmate'),
(21, 'Yamaha'),
(22, 'Microsoft'),
(23, 'Sony Interactive Entertainment'),
(24, 'Warner Bros.'),
(25, 'Universal Music Group'),
(26, 'Faber-Castell'),
(27, 'Pidilite Industries'),
(28, 'TrustBasket'),
(29, 'Stanley Black & Decker'),
(30, 'Thermo Fisher Scientific');


INSERT INTO products (product_id, product_name, category_id, supplier_id) VALUES
(201, 'Smartphone', 1, 1),
(202, 'Jeans', 2, 2),
(203, 'Refrigerator', 3, 3),
(204, 'Novel', 4, 4),
(205, 'Soap', 5, 5),
(206, 'T-Shirt', 2, 2),
(207, 'Microwave', 3, 3),
(208, 'Mystery Book', 4, 4),
(209, 'Laptop', 1, 1),
(210, 'Detergent', 5, 5),
(211, 'Sofa Set', 6, 6),
(212, 'Shampoo', 7, 7),
(213, 'Running Shoes', 8, 8),
(214, 'Action Figure', 9, 9),
(215, 'Car Battery', 10, 10),
(216, 'Gold Necklace', 11, 11),
(217, 'Wrist Watch', 12, 12),
(218, 'Suitcase', 13, 13),
(219, 'Sneakers', 14, 14),
(220, 'Wall Clock', 15, 15),
(221, 'Dinner Set', 16, 16),
(222, 'Dog Food', 17, 17),
(223, 'Baby Lotion', 18, 18),
(224, 'Protein Powder', 19, 19),
(225, 'Notebook', 20, 20),
(226, 'Guitar', 21, 21),
(227, 'Operating System', 22, 22),
(228, 'Console', 23, 23),
(229, 'Blu-ray Movie', 24, 24),
(230, 'Pop Music CD', 25, 25);


INSERT INTO order_details (order_id, product_id, quantity, price) VALUES
(1001, 201, 10, 55000.00),
(1001, 209, 5, 80000.00),
(1002, 202, 20, 2500.00),
(1002, 206, 15, 1000.00),
(1003, 203, 8, 20000.00),
(1003, 207, 12, 8000.00),
(1004, 204, 30, 300.00),
(1004, 208, 25, 450.00),
(1005, 205, 50, 50.00),
(1005, 210, 40, 120.00),
(1006, 211, 2, 35000.00),
(1006, 215, 1, 7000.00),
(1007, 212, 100, 150.00),
(1007, 219, 5, 3000.00),
(1008, 213, 7, 4500.00),
(1008, 226, 1, 12000.00),
(1009, 214, 15, 500.00),
(1009, 221, 3, 5000.00),
(1010, 216, 1, 600000.00),
(1010, 229, 20, 200.00),
(1011, 217, 4, 15000.00),
(1011, 205, 60, 50.00),
(1012, 218, 6, 8000.00),
(1012, 210, 50, 120.00),
(1013, 219, 10, 3000.00),
(1013, 208, 30, 450.00),
(1014, 220, 8, 1200.00),
(1014, 207, 15, 8000.00),
(1015, 221, 5, 5000.00),
(1015, 206, 25, 1000.00);

--  categories
-- customers
-- departments
-- employees
-- locations
-- order_details
-- orders
-- products
-- suppliers
