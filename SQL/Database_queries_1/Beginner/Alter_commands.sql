USE subquery_data;

CREATE TABLE product_data (
 prod_id char(10) NOT NULL,
 prod_name VARCHAR(100) NOT NULL,
 price decimal(8,2) NOT NULL,
 quantity INT,
 PRIMARY KEY (prod_id)
);

INSERT INTO Product_data(prod_id, prod_name, price, quantity)
VALUES('BR01', '8 inch teddy bear', 5.99, 8),
('BR02', '12 inch teddy bear', 8.99,12),
('BR03', '18 inch teddy bear', 11.99, 18),
('BNBG01', 'Fish bean bag toy', 3.49, 7),
('BNBG02', 'Bird bean bag toy', 3.49, 20),
('BNBG03', 'Rabbit bean bag toy', 3.49, 9),
('RGAN01', 'Raggedy Ann', 4.99, 15),
('RYL01', 'King doll', 9.49, 12),
('RYL02', 'Queen doll', 9.49, 26);

SELECT * FROM product_data;

-- 1) Add a new column named “description” of type VARCHAR(255) to an
-- existing table named products?

ALTER TABLE product_data
ADD description VARCHAR(255);

-- view desc of table
DESC product_data; 

-- 2) In products table rename “prod_id” column name to “product_id”.

ALTER TABLE product_data
RENAME COLUMN prod_id TO product_id;

-- 3) How can you modify the data type of the “prod_name” column from
-- char to varchar(25) in the products table?

ALTER TABLE product_data
MODIFY COLUMN prod_name VARCHAR(25);


-- 4) Add a constraint to the products table, ensuring that the quantity
-- column contain values less than 10.

SELECT * FROM product_data;

ALTER TABLE product_data
ADD CONSTRAINT check_quantity CHECK(quantity < 30);


-- 5) Delete a column named “quantity” from the products table
ALTER TABLE product_data
DROP COLUMN quantity;


-- 6) Suppose you have a table named products with a column named
-- price. How do you set a default value of '20' for the price column?

ALTER TABLE product_data
MODIFY price INT DEFAULT 20;

-- 7) Increase the maximum length of product_id column from 10 to 15.
ALTER TABLE product_data
MODIFY price VARCHAR(15);


-- 8) Rename “products” table to “product_details”
ALTER TABLE product_data
RENAME TO product_details;

SELECT * FROM product_details;
