USE practice_problem;

-- SELECT * FROM  customers;
-- SELECT * FROM  orders;
-- SELECT * FROM product;
-- SELECT * FROM OrderDetails;
-- SELECT * FROM Employee;
-- SELECT * FROM Student;
-- SELECT * FROM Attendance;
-- SELECT * FROM Salary;


SELECT * FROM Employee;
-- Question:
-- Write an SQL query to categorize employees' salaries into three groups:

-- 'High' if salary is ≥ 70,000,
-- 'Medium' if salary is ≥ 60,000 but < 70,000,
-- 'Low' if salary is < 60,000.
-- Then, calculate the total salary for each category and display the result in ascending order of total salary.


SELECT 
category,
SUM(salary) AS TotalSalaryByCategory
FROM
(
SELECT
employee_id,
salary,
name,
CASE WHEN salary >= 70000 THEN 'High'
	 WHEN salary >=60000 THEN 'Medium'
     ELSE 'Low'
END Category
FROM Employee
)t
GROUP BY category
ORDER BY TotalSalaryByCategory ;

-- Retrieve employee details with gender displayed as full text 

SELECT * FROM Employee;

SELECT
employee_id,
name,
department,
salary,
CASE
WHEN gender = 'M' THEN 'Male'
WHEN gender = 'F' THEN 'Female'
ELSE 'Unknown'
END gender
FROM Employee;


SELECT * FROM customers;

-- Retrive customers details with abbreviated country code
SELECT 
cust_id,
first_name,
last_name,
country,
CASE
WHEN country = 'Germany' THEN 'DE'
WHEN country = 'Usa' THEN 'USA'
ELSE 'n/a'
END countryAbbr
FROM customers;
 
 --  Quick form of case statement 
 
SELECT 
    cust_id,
    first_name,
    last_name,
    country,
    CASE country
        WHEN 'Germany' THEN 'DE'
        WHEN 'India' THEN 'IND'
        WHEN 'Usa' THEN 'US'
        ELSE 'n/a'
    END AS countryAbbr
FROM customers;

-- Find the avg score of customers and treat nulls as 0
-- additionally provide details such as customer_id,name

SELECT 
    customer_id, 
    name, 
    score, 

    -- Replacing NULL values with 0
    CASE 
        WHEN score IS NULL THEN 0 
        ELSE score 
    END AS scoreClean,

    -- Average score (excluding NULLs)
    AVG(score) OVER() AS AvgScore, 

    -- Average score treating NULLs as 0
    AVG(CASE 
            WHEN score IS NULL THEN 0 
            ELSE score 
        END) OVER() AS AvgScoreClean 

FROM customers;


-- COUNT how many times each customers has made an order with sales greater than 30

SELECT
    customer_id,
    
    -- Count orders where sales > 30
    SUM(CASE 
            WHEN sales > 30 THEN 1 
            ELSE 0 
        END) AS TotalOrdersHigh,

    -- Total number of orders (ensuring non-null sales values)
    COUNT(sales) AS TotalOrders 

FROM orders  -- Assuming orders table, not customers
GROUP BY customer_id;
