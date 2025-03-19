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