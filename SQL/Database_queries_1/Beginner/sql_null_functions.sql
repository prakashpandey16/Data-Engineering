CREATE DATABASE IF NOT EXISTS null_data;
USE null_data;

-- Create Tables
CREATE TABLE Customers (
    CustomerID INT PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    City VARCHAR(255),
    Country VARCHAR(255)
);

CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    CustomerID INT,
    OrderDate DATE,
    TotalAmount DECIMAL(10, 2),
    FOREIGN KEY (CustomerID) REFERENCES Customers(CustomerID)
);

CREATE TABLE Products (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(255),
    Category VARCHAR(255),
    Price DECIMAL(10, 2)
);

CREATE TABLE OrderDetails (
    OrderDetailID INT PRIMARY KEY,
    OrderID INT,
    ProductID INT,
    Quantity INT,
    FOREIGN KEY (OrderID) REFERENCES Orders(OrderID),
    FOREIGN KEY (ProductID) REFERENCES Products(ProductID)
);


-- Customers Table (10 rows, some with NULLs)
INSERT INTO Customers (CustomerID, FirstName, LastName, City, Country) VALUES
(1, 'John', 'Doe', 'New York', 'USA'),
(2, 'Jane', 'Smith', 'London', 'UK'),
(3, 'David', NULL, 'Paris', 'France'),
(4, 'Sarah', 'Jones', NULL, 'Japan'),
(5, 'Michael', 'Brown', 'Sydney', NULL),
(6, 'Emily', NULL, NULL, 'Germany'),
(7, 'Kevin', 'Wilson', 'Toronto', 'Canada'),
(8, 'Jessica', 'Garcia', 'Madrid', 'Spain'),
(9, NULL, 'Rodriguez', 'Rome', 'Italy'),
(10, 'Ashley', 'Martinez', NULL, NULL);

-- Orders Table (10 rows, some with NULLs)
INSERT INTO Orders (OrderID, CustomerID, OrderDate, TotalAmount) VALUES
(101, 1, '2023-10-26', 150.00),
(102, 2, '2023-10-25', 200.50),
(103, 1, '2023-10-24', 75.25),
(104, 3, '2023-10-23', NULL),
(105, 4, NULL, 120.75),
(106, 5, '2023-10-21', 50.00),
(107, 6, NULL, NULL),
(108, 7, '2023-10-19', 80.80),
(109, 8, '2023-10-18', 250.00),
(110, 9, '2023-10-17', NULL);

-- Products Table (10 rows, some with NULLs)
INSERT INTO Products (ProductID, ProductName, Category, Price) VALUES
(201, 'Laptop', 'Electronics', 1200.00),
(202, 'Mouse', 'Electronics', 25.00),
(203, 'Keyboard', NULL, 50.00),
(204, 'T-Shirt', 'Clothing', NULL),
(205, 'Jeans', 'Clothing', 60.00),
(206, 'Book', NULL, 15.00),
(207, 'Pen', 'Stationery', NULL),
(208, 'Notebook', 'Stationery', 5.00),
(209, NULL, 'Electronics', 80.00),
(210, 'Socks', NULL, NULL);

-- OrderDetails Table (10 rows, some with NULLs)
INSERT INTO OrderDetails (OrderDetailID, OrderID, ProductID, Quantity) VALUES
(301, 101, 201, 1),
(302, 101, 202, 2),
(303, 102, 204, 3),
(304, 103, 203, 1),
(305, 104, 201, NULL),
(306, 104, 205, 1),
(307, 105, 202, 4),
(308, 106, 207, NULL),
(309, 107, NULL, 2),
(310, NULL, 209, 1);

SELECT * FROM customers;
SELECT * FROM products;
SELECT * FROM orders;
SELECT * FROM orderDetails;

-- what is difference between count(*) and count(1) ans 

-- Select all records from the orderDetails table to inspect data  
SELECT * FROM orderDetails;  

-- Calculate the average quantity, handling NULL values  
SELECT  
    orderDetailID, -- Selecting the unique identifier for each order detail  
    Quantity, -- Selecting the original quantity value  
    COALESCE(Quantity, 0) AS NewQuantity, -- Replacing NULL values with 0  
    AVG(Quantity) OVER() AS Avg_Quanity, -- Calculating the average of Quantity (NULLs ignored)  
    AVG(COALESCE(Quantity, 0)) OVER() AS Avg_NewQuantity -- Calculating the average with NULLs replaced by 0  
FROM orderDetails;



-- Display the fullname of customers in a single field
-- by merging firstname and lastname
-- and add 10 bonus points in score of each customers

-- Select all records from the customers table to inspect data  
SELECT * FROM customers;  

-- Merge first name and last name into a single field and add 10 bonus points to the score  
SELECT  
    CustomerID, -- Selecting unique customer ID  
    firstName, -- Selecting the first name  
    lastName, -- Selecting the last name  
    Score, -- Selecting the original score  
    
    -- Handling NULL values in firstName and lastName  
    COALESCE(firstName, 'unknown') AS first_name, -- If firstName is NULL, replace with 'unknown'  
    COALESCE(lastName, 'unknown') AS last_name, -- If lastName is NULL, replace with 'unknown'  

    -- Concatenating firstName and lastName into a single full name field  
    CONCAT_WS(" ", COALESCE(firstName, ''), COALESCE(lastName, '')) AS full_name,  
    -- CONCAT_WS() automatically skips NULLs, but we ensure no NULLs using COALESCE()  

    -- Handling NULL values in Score  
    COALESCE(Score, 0) AS Score_without_null, -- If Score is NULL, replace with 0  
    COALESCE(Score, 0) + 10 AS Score_plus10 -- Adding 10 bonus points to Score  
FROM customers;


-- IFNULL with joins 

CREATE TABLE tableA (
    id INT,
    name VARCHAR(50)
);

CREATE TABLE tableB (
    id INT,
    value VARCHAR(50)
);


INSERT INTO tableA (id, name) VALUES 
(NULL, 'Alice'), 
(2, 'Bob'), 
(3, 'Charlie'), 
(4, 'David'), 
(NULL, 'Eve'), 

(6, 'Frank'), 
(7, 'Grace'), 
(8, 'Hannah'), 
(9, 'Ivy'), 
(10, 'Jack');

INSERT INTO tableB (id, value) VALUES 
(1, 'Value1'), 
(NULL, 'Value2'), 
(3, 'Value3'), 
(4, 'Value4'), 
(5, 'Value5'), 
(6, 'Value6'), 
(NULL, 'Value7'), 
(8, 'Value8'), 
(9, 'Value9'), 
(10, 'Value10');

 
 -- IFNULL with joins 
 
SELECT * FROM tableA;
SELECT * FROM tableB;

SELECT 
IFNULL(a.id,0) AS ID,
a.name,
b.value
FROM tableA AS a
INNER JOIN tableB AS b
ON IFNULL(A.id,0) = IFNULL(b.id,0);

-- sort the products from lowest to highest price
-- with null values appearing last 
SELECT * FROM products; 

-- Method 1: Using COALESCE() to Replace NULL with a Large Value
SELECT
    productID,
    COALESCE(productName, 'n/a') AS product_name,  -- Replace NULL product names with 'n/a'
    COALESCE(price, 999999) AS price               -- Replace NULL prices with a high value
FROM products
ORDER BY COALESCE(price, 999999);  -- Sort prices in ascending order, placing NULLs last


-- Method 2: Using CASE to Separate NULL Values


SELECT
    productID,
    COALESCE(productName, 'n/a') AS product_name,  -- Replace NULL product names with 'n/a'
    price,
    CASE 
        WHEN price IS NULL THEN 1 ELSE 0 
    END AS flag  -- Flag column: 1 for NULL prices, 0 for non-NULL prices
FROM products
ORDER BY 
    CASE WHEN price IS NULL THEN 1 ELSE 0 END,  -- First, sort NULL values last (1 comes after 0)
    price;  -- Then, sort by price in ascending order


SELECT
    orderId, 
    sales, 
    quantity, 
    -- Calculate price per unit by dividing sales by quantity
    -- Using NULLIF(quantity, 0) to prevent division by zero errors
    sales / NULLIF(quantity, 0) AS price  
FROM sales;

/*
Why Use NULLIF()? 

1. Prevents Division by Zero Errors
   - If quantity = 0, dividing sales / 0 would cause an error in MySQL.
   - NULLIF(quantity, 0) returns NULL instead of zero, avoiding this issue.

2. Ensures Query Reliability
   - Without NULLIF(), queries might fail if quantity contains zeros.
   - This function ensures the query executes safely.

3. Handles Special Cases Gracefully
   - Instead of breaking, it returns NULL, which can be handled in reporting or further processing.

Example Output:

| orderId | sales  | quantity | price  |
|---------|--------|----------|--------|
| 101     | 500.00 | 5        | 100.00 |
| 102     | 300.00 | 3        | 100.00 |
| 103     | 200.00 | 0        | NULL   | ❌ (Prevents error)

✅ Best Practice: Always use NULLIF(quantity, 0) when performing division to avoid runtime errors.
*/


-- uses of is null and not null
-- both return boolean values true or false based on condtions
-- SYNTAX -> VALUE IS NULL 
-- -- VALUE IS NOT NULL  


-- identitfy customers who have no Country
SELECT
* 
FROM customers
WHERE country IS NULL;

-- identitfy customers who have Country
SELECT
* 
FROM 
customers
WHERE country IS NOT NULL;


-- LEFT ANTI JOIN AND RIGHT ANTI JOIN 

-- list all details for customers who have not placed any order

-- List all details for customers who have not placed any orders
SELECT 
    c.*, 
    o.orderId
FROM customers AS c
LEFT JOIN orders AS o 
ON c.customer_id = o.customer_id
WHERE o.orderId IS NULL;  


-- WHAT is NULL,BLANKSPACE AND EMPTY STRING.
--  NULL -> IS NOTHING IT HAS NOTHING VALUE
--  '' IS A BLANK STRING OR EMPTY STRING
-- ' ' IS A BLANK SPACE  

WITH orders AS(
SELECT 1 Id,'A' category UNION
SELECT 2, NULL  UNION
SELECT 3,  ''  UNION
SELECT 4, '  '
)

SELECT
*,
LENGTH(category) AS categoryLength,
LENGTH(TRIM(category)) AS policy1
FROM orders;


-- WHAT IS A DATA POLICY 
WITH orders AS(
SELECT 1 Id,'A' category UNION
SELECT 2, NULL  UNION
SELECT 3,  ''  UNION
SELECT 4, '  '
)

SELECT
*,
TRIM(category) AS policy1,
NULLIF(TRIM(category),'') AS policy2,
COALESCE(NULLIF(TRIM(category),''),'unknown') AS policy3
FROM orders;  
   