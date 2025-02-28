USE subquery_data;

SELECT * FROM product;
SET SQL_SAFE_UPDATES = 0;

-- 1) Increase the price of all products by 10%.
SELECT * FROM product;

UPDATE product
SET price = price + price * 0.1;


-- 2) Set the price of all products with a quantity less than 10 to 5.99.
UPDATE product
SET price = 5.99 
WHERE quantity < 10;

-- 3) Double the price of products with a quantity between 15 and 50.

SELECT * FROM product;

UPDATE product
SET price = price*2
WHERE quantity BETWEEN 15 AND 50;

-- 4) Update the product name for a specific product with product_id
-- 'RGAN01’ to a new name, “Barbie Doll” and also update price to 6.99.

UPDATE product
SET prod_name = 'Barbie Doll' ,price = 6.99
WHERE prod_id = 'RGAN01';

-- 5) Increase the price by 5% for products with a name containing the
-- word “toy”

UPDATE product
SET price = price * 1.05
WHERE name LIKE '%toy%';

-- 6) Add a prefix "SALE: " to the beginning of the product name for all
-- products.

SELECT * FROM product;

UPDATE product
SET product_name = CONCAT('SALE: ',product_name);


-- 7) Decrease the stock quantity by 1 for products with quantity more
-- than 10.

UPDATE product
SET prod_quantity = prod_quantity -1 
WHERE quantity > 10;

