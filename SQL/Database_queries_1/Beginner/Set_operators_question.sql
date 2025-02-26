USE practice_problem;


CREATE TABLE IF NOT EXISTS product_jan
( prod_id INT NOT NULL,
 prod_name VARCHAR(45) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 quantity INT NOT NULL,
 expiry_date DATE NOT NULL,
 PRIMARY KEY(prod_id)
);

INSERT INTO product_jan (prod_id, prod_name, price, quantity, expiry_date) VALUES
(1, 'Apple', 50.00, 100, '2025-12-31'),
(2, 'Banana', 20.00, 150, '2025-11-30'),
(3, 'Orange', 30.00, 120, '2025-10-15'),
(4, 'Milk', 60.00, 80, '2025-09-20'),
(5, 'Bread', 40.00, 90, '2025-08-25'),
(6, 'Butter', 100.00, 50, '2025-07-15'),
(7, 'Cheese', 150.00, 60, '2025-06-10'),
(8, 'Eggs', 70.00, 200, '2025-05-05'),
(9, 'Chicken', 250.00, 40, '2025-04-30'),
(10, 'Fish', 300.00, 30, '2025-03-20'),
(11, 'Rice', 80.00, 300, '2026-02-10'),
(12, 'Wheat Flour', 75.00, 280, '2026-01-15'),
(13, 'Sugar', 90.00, 250, '2026-12-05'),
(14, 'Salt', 25.00, 400, '2026-11-30'),
(15, 'Oil', 200.00, 100, '2026-10-20'),
(16, 'Soap', 50.00, 150, '2026-09-15'),
(17, 'Shampoo', 120.00, 90, '2026-08-05'),
(18, 'Toothpaste', 80.00, 110, '2026-07-25'),
(19, 'Detergent', 150.00, 70, '2026-06-30'),
(20, 'Hand Sanitizer', 180.00, 60, '2026-05-20');
  

CREATE TABLE IF NOT EXISTS product_feb
( prod_id INT NOT NULL,
 prod_name VARCHAR(45) NOT NULL,
 price DECIMAL(10,2) NOT NULL,
 quantity INT NOT NULL,
 expiry_date DATE NOT NULL,
 PRIMARY KEY(prod_id)
);
  
  
  INSERT INTO product_feb (prod_id, prod_name, price, quantity, expiry_date) VALUES
(1, 'Mango', 80.00, 100, '2025-12-31'),
(2, 'Grapes', 60.00, 120, '2025-11-20'),
(3, 'Papaya', 45.00, 90, '2025-10-10'),
(4, 'Tomato', 30.00, 200, '2025-09-25'),
(5, 'Potato', 25.00, 300, '2025-08-30'),
(6, 'Onion', 40.00, 250, '2025-07-20'),
(7, 'Milk', 65.00, 80, '2025-06-15'),
(8, 'Curd', 55.00, 70, '2025-05-10'),
(9, 'Paneer', 180.00, 50, '2025-04-05'),
(10, 'Chicken', 260.00, 40, '2025-03-25'),
(11, 'Fish', 320.00, 35, '2025-02-15'),
(12, 'Sugar', 95.00, 270, '2026-01-10'),
(13, 'Salt', 28.00, 350, '2026-12-05'),
(14, 'Tea', 220.00, 60, '2026-11-30'),
(15, 'Coffee', 300.00, 50, '2026-10-20'),
(16, 'Butter', 110.00, 45, '2026-09-10'),
(17, 'Cheese', 160.00, 55, '2026-08-15'),
(18, 'Biscuit', 40.00, 140, '2026-07-05'),
(19, 'Soft Drink', 55.00, 130, '2026-06-30'),
(20, 'Hand Wash', 150.00, 90, '2026-05-25');


SELECT * FROM product_jan;
SELECT * FROM product_feb;



-- 1) Write an SQL query to retrieve all the products from both tables
-- where the quantity sold is greater than 5 in January and February

(SELECT * FROM product_jan WHERE quantity>5)
UNION ALL
(SELECT * FROM product_feb WHERE quantity>5);
  
  
-- 2) Write an SQL query to retrieve the common records from the two
-- tables, i.e., the products that were sold in both January and February.

SELECT p1.prod_id AS product_id,
	   p1.prod_name AS product_name,
       p1.quantity AS product_quantity,
       p1.expiry_date AS product_expiry_date
FROM product_jan as p1
INNER JOIN  product_feb AS p2
ON P1.prod_id = p2.prod_id;



-- 3) Write an SQL query to find the common product names that were
-- sold in both January and February, along with their respective
-- quantities, prices, and total sales

SELECT 
	p1.prod_name AS product_name,
    p1.quantity AS jan_Quantity,
    p1.price AS jan_price,
    p1.price * p1.quantity  AS jan_total_sales,
	p2.quantity AS feb_Quantity,
    p2.price AS feb_price,
    p2.price * p2.quantity  AS feb_total_sales
FROM product_jan AS p1
INNER JOIN product_feb AS P2
ON P1.prod_name = p2.prod_name;

-- 4) Write an SQL query to retrieve the products that were sold in January for price less than 30 but were not sold in February

SELECT 
	p1.prod_id AS product_id,
    p1.prod_name AS product_name,
    p1.quantity AS product_quantity,
    p1.price AS product_price,
    p1.expiry_date AS product_expiry_date
FROM product_jan AS P1
LEFT JOIN product_feb AS P2
ON p1.prod_id = p2.prod_id
WHERE p1.price <30
AND P2.prod_id IS NULL;
    
    
-- 5) Write an SQL query to retrieve the details of products sold in either
-- January or February, with a price between 10 and 50. The query
-- should return all columns from the matching rows in both tables.

SELECT * FROM product_jan
WHERE price BETWEEN 10 AND 50
UNION
SELECT * FROM product_feb
WHERE price BETWEEN 10 AND 50;




-- 6) Write an SQL query to retrieve the total sales for each month and
-- display the results as a union of two rows, where the first row
-- represents the total sales for January and the second row represents
-- the total sales for February. The column names should be "Month"
-- for the month name and "total_sales" for the sum of prices.
(SELECT 'January' AS month_name ,SUM(price*quantity) AS total_sales FROM product_jan)
UNION 
(SELECT 'February' AS month_name ,SUM(price * quantity) AS total_sales FROM product_feb);

