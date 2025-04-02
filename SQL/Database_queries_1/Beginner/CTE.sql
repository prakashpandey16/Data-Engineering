USE e_commerce;

SELECT * FROM Customers;

-- 1. Standalone Aggregation CTE: Find the total number of orders placed by each customer  
WITH CTE_total_sales AS  
(  
    SELECT  
        customer_id,  
        COUNT(customer_id) AS totalOrdersByCustomers  
    FROM Orders  
    GROUP BY customer_id  
),  

-- 2. Standalone Aggregation CTE: Find the last order date for each customer  
CTE_last_order_date AS  
(  
    SELECT  
        customer_id,  
        MAX(order_date) AS last_order_date  
    FROM Orders  
    GROUP BY customer_id  
),  

-- 3. Nested Ranking CTE: Rank customers based on total orders (depends on CTE_total_sales)  
CTE_rank_customers AS  
(  
    SELECT  
        customer_id,  
        totalOrdersByCustomers,  
        RANK() OVER(ORDER BY totalOrdersByCustomers DESC) AS customer_rank  
    FROM CTE_total_sales  -- Uses a previous CTE, making it a nested CTE  
)  

-- 4. Final Query: Fetch customer details along with their total order count, last order date, and rank  
SELECT  
    c.customer_id,  
    c.name AS customer_name,  
    COALESCE(cte.totalOrdersByCustomers, 0) AS totalOrdersByCustomers,  -- If no orders, show 0  
    COALESCE(cte1.last_order_date, '1900-01-01') AS last_order_date,  -- Default date for no orders  
    COALESCE(cte2.customer_rank, RANK() OVER(ORDER BY 0 DESC)) AS customer_rank  -- Rank customers even if no orders  
FROM customers AS c  
LEFT JOIN CTE_total_sales AS cte  
ON c.customer_id = cte.customer_id  
LEFT JOIN CTE_last_order_date AS cte1  
ON c.customer_id = cte1.customer_id  
LEFT JOIN CTE_rank_customers AS cte2  
ON c.customer_id = cte2.customer_id  
ORDER BY c.customer_id;






