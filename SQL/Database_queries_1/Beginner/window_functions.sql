USE e_commerce;

-- SELECT * FROM customers;
-- SELECT * FROM departments;
-- SELECT * FROM  employee_projects;
-- SELECT * FROM employees;
-- SELECT * FROM orders;
-- SELECT * FROM products;
-- SELECT * FROM projects;


-- 1. Retrieve the top 3 highest-paid employees in each department using RANK().


SELECT 
employee_id,
name,
department,
salary
FROM 
(
SELECT
employee_id,
name,
department,
salary,
RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS departmentSalaryRank
FROM 
employees
)t 
WHERE departmentSalaryRank <= 3;


-- 2. Assign a unique ranking to employees based on salary within each department using
-- DENSE_RANK().

SELECT
employee_id,
name,
department,
salary,
DENSE_RANK() OVER(PARTITION BY department ORDER BY salary DESC) AS SalaryRankByDepartment
FROM
employees;


-- 3. Number all employees in ascending order of salary using ROW_NUMBER(),
-- partitioned by department.

SELECT
employee_id,
name,
department,
salary,
ROW_NUMBER() OVER(PARTITION BY department ORDER BY salary) SalaryRankByDepartment
FROM 
employees;

-- 4. Show the previous salary for each employee using LAG().

SELECT
employee_id,
name,
salary,
LAG(salary) OVER(ORDER BY salary)  AS previous_salary
FROM employees;


-- 5. Show the next salary for each employee using LEAD().

SELECT
employee_id,
name,
salary,
LEAD(salary) OVER(ORDER BY salary) AS NextSalary
FROM employees;

-- 6. Divide employees into 4 salary groups using NTILE(4).
SELECT
employee_id,
name,
salary,
NTILE(4) OVER(ORDER BY salary) SalaryPartitions
FROM 
employees;

-- 7. Calculate the running total of salaries for each department using SUM() as a window
-- function.

SELECT
employee_id,
name,
salary,
department,
SUM(salary) OVER(PARTITION BY department ORDER BY salary ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS RunningSum
FROM 
employees;

-- 8.Find the average salary for the past 3 employees in the order of their hire date


SELECT * FROM employees;

SELECT
name,
salary,
hire_date,
AVG(salary) OVER(ORDER BY hire_date ROWS BETWEEN 2 PRECEDING AND CURRENT ROW ) AS AvgSalaryByPastThreeEmployees
FROM employees;

-- ALTERNATIVE  
SELECT 
    name,
    salary,
    hire_date,
    AVG(salary) OVER (
        ORDER BY hire_date 
        RANGE BETWEEN INTERVAL '2' MONTH PRECEDING AND CURRENT ROW
    ) AS AvgSalaryByPastThreeEmployees
FROM employees;


-- 9.Display the highest salary in each department using MAX() as a window function

SELECT 
name,
department,
MAX(salary) OVER(PARTITION BY department) AS MaxSalaryByDepartment
FROM employees;

-- 10 . Show the percentage contribution of each employee’s salary to the department's total salary.


SELECT
name,
department,
salary,
SUM(salary) OVER(PARTITION BY department) AS TotalSalaryByDepartment,
(salary * 100)/ SUM(salary) OVER(PARTITION BY department) AS  Employee_Contribution_Department_salary_percentage
FROM employees;


-- 11. Rank products based on sales within each category, skipping duplicate ranks.

SELECT * FROM products;

SELECT 
p.product_name ,
p.category,
od.sales,
RANK() OVER(PARTITION BY category ORDER BY od.sales DESC) AS RankBySalesOfProducts
FROM products AS p
LEFT JOIN OrderItems AS od
ON p.product_id = od.product_id;


-- 12 Assign a category to employees as ‘Senior’, ‘Mid-Level’, or ‘Junior’ based on their RANK().

SELECT * FROM employees;

SELECT
    employee_id,
    name,
    department,
    Company_experience,
    RANK() OVER (ORDER BY Company_experience DESC) AS RankByCompanyExperience,
    CASE 
        WHEN Company_experience > 5 THEN 'Senior'
        WHEN Company_experience > 3 THEN 'Mid-Level'
        ELSE 'Junior'
    END AS Employee_Experience_category
FROM (
    SELECT
        employee_id,
        name,
        department,
        TIMESTAMPDIFF(YEAR, hire_date, CURRENT_DATE()) AS Company_experience
    FROM employees
) AS experience_data;


-- 13.Show the cumulative number of employees hired over time using COUNT().

SELECT 
hire_date,
COUNT(*) OVER(ORDER BY hire_date ASC) AS EmployeesHiredOverTime
FROM employees;


SELECT
YEAR(hire_date) AS Hire_year,
COUNT(*) AS employee_count,
SUM(COUNT(*)) OVER(ORDER BY YEAR(hire_date)) Cumlative_employees_hired
FROM employees
GROUP BY YEAR(hire_date)
ORDER BY Hire_year;






--  14.Calculate the difference between an employee’s salary and the department's average salary.

SELECT
name,
department,
salary,
ROUND(AVG(salary) OVER(PARTITION BY department),2) AS AvgSalaryByDepartment,
salary - AVG(salary) OVER(PARTITION BY department) AS DiffByEmployeeSalaryAndDepartmentAvgSalary
FROM employees;

-- 15.Get the median salary of employees in each department.

-- solve using cte




 

