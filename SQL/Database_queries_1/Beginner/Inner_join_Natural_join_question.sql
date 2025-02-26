USE practice_problem;


CREATE TABLE IF NOT EXISTS vendors(
vend_id CHAR(10) NOT NULL,
vend_name VARCHAR(50) NOT NULL,
vend_address VARCHAR(70) NOT NULL,
vend_city VARCHAR(40) NOT NULL,
vend_state VARCHAR(50) NOT NULL,
vend_zip CHAR(10),
vend_Country VARCHAR(50),
PRIMARY KEY(vend_id)
);

INSERT INTO vendors (vend_id, vend_name, vend_address, vend_city, vend_state, vend_zip, vend_Country) VALUES
-- USA Vendors
('V001', 'Acme Supplies', '123 Main St', 'New York', 'New York', '10001', 'USA'),
('V002', 'Global Tech', '456 Oak Ave', 'Los Angeles', 'California', '90001', 'USA'),
('V003', 'Innovate Ltd', '789 Pine Rd', 'Chicago', 'Illinois', '60601', 'USA'),
('V004', 'Prime Solutions', '321 Maple St', 'Houston', 'Texas', '77001', 'USA'),
('V005', 'Alpha Industries', '654 Cedar Dr', 'Phoenix', 'Arizona', '85001', 'USA'),
-- UK Vendors
('V006', 'NextGen Corp', '25 High St', 'London', 'England', 'SW1A 1AA', 'UK'),
('V007', 'Tech Pioneers', '17 Greenway Rd', 'Manchester', 'England', 'M1 1AE', 'UK'),
('V008', 'Fusion Systems', '43 Victoria St', 'Birmingham', 'England', 'B1 1AA', 'UK'),
('V009', 'Vertex Enterprises', '88 King St', 'Liverpool', 'England', 'L1 1AA', 'UK'),
('V010', 'Summit Traders', '12 Park Rd', 'Edinburgh', 'Scotland', 'EH1 1AA', 'UK'),
-- Canada Vendors
('V011', 'Quantum Solutions', '789 Yonge St', 'Toronto', 'Ontario', 'M5B 2H1', 'Canada'),
('V012', 'Horizon Tech', '345 Bay St', 'Vancouver', 'British Columbia', 'V6B 1A1', 'Canada'),
('V013', 'Synergy Works', '567 Jasper Ave', 'Edmonton', 'Alberta', 'T5J 1A1', 'Canada'),
('V014', 'Pinnacle Group', '876 St. Laurent Blvd', 'Montreal', 'Quebec', 'H2X 1A1', 'Canada'),
('V015', 'Infinity Supplies', '321 Elgin St', 'Ottawa', 'Ontario', 'K1P 1A1', 'Canada'),
-- Australia Vendors
('V016', 'Swift Solutions', '90 George St', 'Sydney', 'New South Wales', '2000', 'Australia'),
('V017', 'Elite Enterprises', '45 Collins St', 'Melbourne', 'Victoria', '3000', 'Australia'),
('V018', 'Nova Systems', '67 Adelaide St', 'Brisbane', 'Queensland', '4000', 'Australia'),
('V019', 'Crest Technologies', '23 Hindley St', 'Adelaide', 'South Australia', '5000', 'Australia'),
('V020', 'Atlas Manufacturing', '78 St Georges Terrace', 'Perth', 'Western Australia', '6000', 'Australia'),
-- India Vendors
('V021', 'Keystone Solutions', '12 MG Road', 'Bengaluru', 'Karnataka', '560001', 'India'),
('V022', 'Visionary Tech', '33 Connaught Place', 'New Delhi', 'Delhi', '110001', 'India'),
('V023', 'Summit Innovations', '89 Park Street', 'Kolkata', 'West Bengal', '700016', 'India'),
('V024', 'OmniCorp', '77 Mount Road', 'Chennai', 'Tamil Nadu', '600002', 'India'),
('V025', 'Everest Global', '41 Bandra Kurla Complex', 'Mumbai', 'Maharashtra', '400051', 'India'),
-- Germany Vendors
('V026', 'Stratus Solutions', '5 Friedrichstraße', 'Berlin', 'Berlin', '10117', 'Germany'),
('V027', 'Zenith Enterprises', '22 Marienplatz', 'Munich', 'Bavaria', '80331', 'Germany'),
('V028', 'Echo Systems', '33 Zeil', 'Frankfurt', 'Hesse', '60313', 'Germany'),
('V029', 'AstroTech', '14 Königstraße', 'Stuttgart', 'Baden-Württemberg', '70173', 'Germany'),
('V030', 'Nexus Corp', '67 Jungfernstieg', 'Hamburg', 'Hamburg', '20095', 'Germany');



CREATE TABLE IF NOT EXISTS products(
prod_id CHAR(10) NOT NULL,
vend_id CHAR(10),
prod_name VARCHAR(100) NOT NULL,
prod_price DECIMAL(10,2) NOT NULL,
prod_desc TEXT,
PRIMARY KEY(prod_id),
FOREIGN KEY(vend_id) REFERENCES vendors(vend_id)
);



INSERT INTO products (prod_id, vend_id, prod_name, prod_price, prod_desc) VALUES
-- Products from USA Vendors
('P001', 'V001', 'Office Chair', 129.99, 'Ergonomic office chair with lumbar support.'),
('P002', 'V002', 'Wireless Mouse', 29.99, 'High-precision wireless mouse with ergonomic design.'),
('P003', 'V003', 'Mechanical Keyboard', 79.99, 'RGB backlit mechanical keyboard with tactile switches.'),
('P004', 'V004', 'Gaming Monitor', 249.99, '27-inch gaming monitor with 144Hz refresh rate.'),
('P005', 'V005', 'USB-C Docking Station', 99.99, 'Multiport docking station with HDMI, USB, and Ethernet support.'),
-- Products from UK Vendors
('P006', 'V006', 'Smartphone Stand', 19.99, 'Adjustable aluminum stand for smartphones and tablets.'),
('P007', 'V007', 'Bluetooth Headphones', 59.99, 'Noise-canceling Bluetooth headphones with deep bass.'),
('P008', 'V008', 'Portable SSD', 149.99, '1TB high-speed external SSD with USB-C support.'),
('P009', 'V009', 'Webcam HD 1080p', 39.99, 'Full HD 1080p webcam with built-in microphone.'),
('P010', 'V010', 'Wireless Charging Pad', 24.99, 'Fast wireless charging pad for Qi-enabled devices.'),
-- Products from Canada Vendors
('P011', 'V011', 'Smartwatch', 199.99, 'Fitness smartwatch with heart rate and sleep monitoring.'),
('P012', 'V012', 'Action Camera', 299.99, '4K waterproof action camera with stabilization.'),
('P013', 'V013', 'Portable Bluetooth Speaker', 79.99, 'Waterproof Bluetooth speaker with deep bass.'),
('P014', 'V014', 'Electric Kettle', 34.99, '1.7L stainless steel electric kettle with auto shut-off.'),
('P015', 'V015', 'Coffee Maker', 89.99, 'Programmable coffee maker with 12-cup capacity.'),
-- Products from Australia Vendors
('P016', 'V016', 'Smart LED Bulb', 15.99, 'Wi-Fi enabled LED bulb with color-changing features.'),
('P017', 'V017', 'Robot Vacuum Cleaner', 399.99, 'Smart robot vacuum with auto-charging feature.'),
('P018', 'V018', 'Electric Toothbrush', 49.99, 'Rechargeable electric toothbrush with multiple modes.'),
('P019', 'V019', 'Air Purifier', 199.99, 'HEPA air purifier for large rooms with smart sensor.'),
('P020', 'V020', 'Smart Door Lock', 179.99, 'Keyless smart door lock with fingerprint scanner.'),
-- Products from India Vendors
('P021', 'V021', 'Wireless Earbuds', 69.99, 'True wireless earbuds with noise cancellation.'),
('P022', 'V022', 'Power Bank 20000mAh', 39.99, 'Fast-charging power bank with dual USB ports.'),
('P023', 'V023', 'Fitness Band', 49.99, 'Smart fitness band with step counter and sleep tracker.'),
('P024', 'V024', 'Laptop Cooling Pad', 29.99, 'Cooling pad with dual fans for gaming laptops.'),
('P025', 'V025', 'Digital Drawing Tablet', 119.99, 'Graphics tablet with stylus for digital art.'),
-- Products from Germany Vendors
('P026', 'V026', 'Mechanical Watch', 349.99, 'Luxury mechanical watch with sapphire crystal.'),
('P027', 'V027', 'Smart Thermostat', 129.99, 'Wi-Fi smart thermostat with app control.'),
('P028', 'V028', 'Portable Projector', 299.99, 'Mini projector with Full HD resolution and Wi-Fi support.'),
('P029', 'V029', 'Drone with Camera', 499.99, '4K drone with GPS and obstacle avoidance.'),
('P030', 'V030', 'Electric Scooter', 699.99, 'Foldable electric scooter with long battery life.');



SELECT * FROM products;
SELECT * FROM vendors;


-- 1) Write SQL query to retrieve the product ID, product name, and
-- vendor name from the "Products" table and "Vendors" table, sorted
-- in ascending order by product ID?

SELECT 
	prod_id AS product_id,
    prod_name AS product_name,
    vend_name AS vendor_name
FROM products NATURAL JOIN vendors
ORDER BY prod_id ASC;


-- 2) Write SQL query to retrieve the product ID, product name, vendor
-- name, and vendor country for products sold by vendors in the USA,
-- sorted by product ID?
SELECT 
    p.prod_id AS product_id,
    p.prod_name AS product_name,
    v.vend_name AS vendor_name,
    v.vend_country AS vendor_country
FROM products AS p
INNER JOIN vendors AS v
ON p.vend_id = v.vend_id
WHERE UPPER(v.vend_country) = 'USA'
ORDER BY p.prod_id ASC;



-- 3) Write SQL query to retrieve the product ID, product name, vendor
-- name, and product price from the "Products" table, joined with the
-- "Vendors" table, where the product price is less than 5, and the
-- results are sorted by the product ID? (Use Natural Join)

SELECT 
    prod_id AS product_id,
    prod_name AS product_name,
    vend_name AS vendor_name,
    prod_price AS product_price
FROM products NATURAL JOIN vendors
WHERE prod_price < 5 
ORDER BY prod_id ASC;


-- 4) Write SQL query to retrieve the product ID, vendor ID, and vendor
-- city for all products, sorted by the vendor ID?

SELECT 
    p.prod_id AS product_id,
    v.vend_id AS vendor_id,
    v.vend_city AS vendor_city
FROM products AS p
JOIN vendors AS v ON p.vend_id = v.vend_id
ORDER BY v.vend_id ASC;


-- 5) Write SQL query to retrieve vendor name and calculates the total
-- amount of products sold by each vendor as “total_amount”. Sorts the
-- results in ascending order based on the total amount?


SELECT 
    v.vend_name AS vendor_name,
    COUNT(*) AS total_amount
FROM products AS p
JOIN vendors AS v ON p.vend_id = v.vend_id
GROUP BY v.vend_name
ORDER BY total_amount ASC;



-- 6) Write SQL query to retrieve vendor name and calculate total amount
-- including 5% GST for each vendor's products as
-- “total_amount_GST_5”? Can you provide the result in ascending
-- order based on the total amount?

SELECT 
    v.vend_name AS vendor_name,
    SUM(p.prod_price * 1.05) AS total_amount_GST_5
FROM products AS p
JOIN vendors AS v ON v.vend_id = p.vend_id
GROUP BY v.vend_name
ORDER BY total_amount_GST_5 ASC;


-- 7) Write SQL query to retrieve the product ID, vendor ID, product name,
-- vendor name, and product price from the "Products" table, joined
-- with the "vendors" table, where the vendor ID ends with '01' and the
-- product price is greater than 4?


SELECT 
    p.prod_id AS product_id,
    v.vend_id AS vendor_id,
    p.prod_name AS product_name,
    v.vend_name AS vendor_name,
    p.prod_price AS product_price
FROM products AS p
JOIN vendors AS v ON p.vend_id = v.vend_id
WHERE v.vend_id LIKE '%01'
AND p.prod_price > 4
ORDER BY v.vend_id, p.prod_id;


	