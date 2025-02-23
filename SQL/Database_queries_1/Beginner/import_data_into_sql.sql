-- How to  import data into sql

CREATE DATABASE IF NOT EXISTS Data_1;
USE Data_1;
CREATE TABLE IF NOT EXISTS customers
(
id INT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50),
city VARCHAR(50),
sign_up DATE
);

-- inserting data into table using csv file
LOAD DATA INFILE 'C:\Users\praka\OneDrive\Desktop\Data Engineering\SQL\Database_queries_1\Beginner\Customers_Data.csv'
INTO TABLE customers
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\n'
IGNORE 1 ROWS;



SELECT * FROM customers;

 
