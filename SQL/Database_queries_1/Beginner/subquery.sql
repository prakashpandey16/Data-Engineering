USE e_commerce;

-- SELECT * FROM customers;
-- SELECT * FROM departments;
-- SELECT * FROM  employee_projects;
-- SELECT * FROM employees;
-- SELECT * FROM orders;
-- SELECT * FROM products;
-- SELECT * FROM projects;


SELECT * FROM products;


SELECT 
	product_id,
    name,
    category,
    price
FROM products
WHERE price >(SELECT AVG(price) FROM products);


--  Rank Customers based on their total amount of Sales

SELECT * FROM customers;
SELECT * FROM orders;


    



SELECT
*,
RANK() OVER(ORDER BY TotalAmountByCustomer DESC) AS customerRankByTotalSales
FROM
(
SELECT
customer_id,
SUM(total_amount) AS TotalAmountByCustomer
FROM orders
GROUP by customer_id
)t;


SELECT * FROM products;

-- Subquery with Select Clause

--  Show the productId,product Name,price,And the total Numbers of orders

SELECT
	product_id,
    name AS product_name,
    price AS product_price,
    (SELECT COUNT(*) FROM orders) AS TotalOrders
FROM products;



-- Subquery with Join clause
-- Show all customer details and find the total orders for each customers

SELECT * FROM customers;

SELECT
 customer_id,
 COUNT(*) AS totalOrder 
FROM orders
GROUP BY customer_id; 


SELECT
c.*,
o.totalOrders
FROM
customers AS c
LEFT JOIN
( SELECT
  customer_id,
  COUNT(*) AS totalOrders
  FROM orders
  GROUP BY customer_id) AS o
  ON c.customer_id = o.customer_id;


-- subquery with where clause
-- find the products that have price a price higher then avg price of all products


SELECT 
product_id,
name,
category
FROM products
WHERE price > (SELECT AVG(price) FROM products);  


-- Subquery with IN operator

--  Show the Details of order made by customers in Germany
SELECT
*
FROM orders
WHERE customer_id IN (SELECT customer_id FROM customers WHERE country = 'Germany');


-- Subquery with any or all operator

--  find female employees whose salary is greater then any male employee salary

SELECT
employee_id,
name,
salary,
gender FROM employees
WHERE gender = 'F' 
AND salary > ANY(SELECT salary FROM employees WHERE gender = 'M');


-- correlated query and Non correlated query

-- show all customer details and find the total order of each customers

SELECT
*,
(SELECT COUNT(*) FROM orders AS o WHERE o.customer_id = c.customer_id) AS totalOrder
FROM customers AS c;


-- Subquery with Exists operator

-- show all the details of orders made by customers in Germany

SELECT
*
FROM orders AS o
WHERE EXISTS(
			   SELECT 1
               FROM customers AS c
               WHERE country = 'Germany'
               AND c.customer_id = o.customer_id);
 