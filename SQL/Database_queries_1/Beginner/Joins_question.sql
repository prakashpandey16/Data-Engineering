USE joins_data;

-- 1. Retrieve a list of all employees along with their department names

SELECT 
    e.emp_id AS employee_id,
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    e.manager_id AS employee_manager_id,
    d.dept_id AS department_id,
    COALESCE(d.dept_name, 'No Department') AS department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;

-- 2. Get a list of all orders along with customer names.

SELECT * FROM orders;
SELECT * FROM customers;

SELECT
	o.order_id AS order_id,
    c.customer_id AS customer_id,
    COALESCE(c.customer_name,'No Customer Name') AS customer_name,
    o.order_date AS order_date
FROM orders AS o
LEFT JOIN customers AS C
ON c.customer_id = o.customer_id;

-- 3. Show all employees, including those who don’t belong to any department
SELECT 
    e.emp_id AS employee_id,
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    e.manager_id AS employee_manager_id,
    d.dept_id AS department_id,
    COALESCE(d.dept_name, 'No Department') AS department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id;


-- 4. Retrieve all departments and show employees working in them, including
-- departments with no employees.
SELECT * FROM departments;
SELECT * FROM employees;

SELECT 
    d.dept_id AS department_id,
    d.dept_name AS department_name,
    COALESCE(e.emp_name, 'No Employees') AS employee_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.dept_id = e.dept_id
ORDER BY d.dept_id ASC;


-- 5. List all employees and their managers
SELECT * FROM employees;

SELECT 
    e1.emp_id AS employee_id,
    e1.emp_name AS employee_name,
    e1.salary AS employee_salary,
    e1.manager_id AS manager_id,
    COALESCE(e2.emp_name, 'No Manager') AS manager_name
FROM employees AS e1
LEFT JOIN employees AS e2
ON e1.manager_id = e2.emp_id;

-- 6. Retrieve the list of customers who have never placed an order

SELECT * FROM customers;
SELECT * FROM  orders;

SELECT 
	c.customer_id AS customer_id,
    COALESCE(c.customer_name,'No Customer') AS customer_name
FROM customers AS c
LEFT JOIN orders AS o
ON c.customer_id = o.customer_id
WHERE o.customer_id IS NULL;

-- 7. List products that have never been ordered.

SELECT * FROM products;
SELECT * FROM order_details;

SELECT 
	p.product_id AS product_id,
    p.product_name AS product_name
FROM products AS p
LEFT JOIN order_details as o
ON p.product_id = o.product_id
WHERE o.product_id IS NULL;


-- 8. Retrieve a list of employees along with their department name and location

SELECT * FROM employees;
SELECT * FROM departments;
SELECT * FROM locations;

SELECT
	e.emp_id AS employee_id,
    e.emp_name AS employee_name,
    d.dept_name AS department_name,
    l.location_name AS location_name
FROM employees AS e
LEFT JOIN departments as d
ON e.dept_id = d.dept_id
LEFT JOIN locations AS l
ON d.location_id = l.location_id;
    
-- 9. Find employees who have the same salary as their manager.

SELECT * FROM employees;

SELECT 
    e1.emp_id AS employee_id,
    e1.emp_name AS employee_name,
    e1.salary AS employee_salary,
    e2.emp_id AS manager_id,
    e2.emp_name AS manager_name,
    e2.salary AS manager_salary
FROM employees AS e1
INNER JOIN employees AS e2 
ON e1.manager_id = e2.emp_id
WHERE e1.salary = e2.salary;

-- 10. Retrieve the order details including product name, category name, and supplier
-- name.

SELECT * FROM products;
SELECT * FROM categories;
SELECT * FROM suppliers;

SELECT 
    p.product_name AS product_name,
    c.category_name AS category_name,
    s.supplier_name AS supplier_name
FROM products p
INNER JOIN categories c ON p.category_id = c.category_id
INNER JOIN suppliers s ON p.supplier_id = s.supplier_id;


-- SELECT COUNT(*) FROM employees CROSS JOIN departments;
-- SELECT COUNT(*) FROM employees CROSS JOIN departments CROSS JOIN products;
-- it is same as cartesian product of two sets 

-- 11. Find customers who have placed orders in every available month.

SELECT * FROM customer;
SELECT * FROM orders;

SELECT 
	c.customer_id AS customer_id,
    c.customer_name AS customer_name,
    o.order_id AS order_id,
    o.order_total AS order_price,
    o.order_date AS order_date
FROM customer AS c
INNER JOIN orders AS o
ON o.customer_id = c.customer_id
GROUP BY o.order_date;

    
-- 11. Find customers who have placed orders in every available month.

SELECT * FROM customers;
SELECT * FROM orders;

SELECT 
	c.customer_name AS customer_name,
    c.customer_id AS customer_id
FROM customers AS c
INNER JOIN orders AS o
ON c.customer_id = o.customer_id
GROUP BY customer_id,customer_name
HAVING COUNT(DISTINCT MONTH(o.order_date)) = (SELECT COUNT(DISTINCT MONTH(order_date)) FROM orders);



-- 12. Retrieve a list of employees and their salaries, including those who don’t belong to
-- any department, and departments with no employees.

SELECT * FROM employees;
SELECT * FROM departments;

(SELECT
    e.emp_name AS employee_name,
    e.salary AS employee_salary,
    d.dept_name AS department_name
FROM employees AS e
LEFT JOIN departments AS d
ON e.dept_id = d.dept_id)

UNION

(SELECT
    NULL AS employee_name,
    NULL AS employee_salary,
    d.dept_name AS department_name
FROM departments AS d
LEFT JOIN employees AS e
ON d.dept_id = e.dept_id
WHERE e.emp_id IS NULL);

-- 13. Find the total sales for each category along with category names

SELECT * FROM categories;
SELECT * FROM orders;

SELECT 
	c.category_name AS category_name,
    COALESCE(SUM(o.total_amount),0) AS total_sales
FROM categories AS c
LEFT JOIN  orders AS o
ON c.category_id = o.category_id
GROUP BY category_name
ORDER BY total_sales DESC;

-- 14. Retrieve the employees who have the highest salary in their department.

SELECT  * FROM employees;
SELECT * FROM departments;

SELECT 
    e.emp_name AS employee_name,
    d.dept_name AS department_name,
    e.salary AS max_employee_salary
FROM employees AS e
JOIN departments AS d
ON e.dept_id = d.dept_id 
WHERE e.salary = (
    SELECT MAX(e2.salary) 
    FROM employees AS e2 
    WHERE e2.dept_id = e.dept_id
);


-- 15. Get customers who have never ordered, along with customers who placed their last
-- order more than a year ago.

SELECT * FROM customers;
SELECT * FROM orders;










