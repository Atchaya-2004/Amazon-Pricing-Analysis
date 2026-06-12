USE project_1;

CREATE TABLE amazon_products (
    product_name VARCHAR(500),
    category VARCHAR(500),
    actual_price DECIMAL(10,2),
    discounted_price DECIMAL(10,2),
    discount_percentage DECIMAL(5,2),
    rating DECIMAL(3,1),
    rating_count INT
);
SELECT COUNT(*) FROM amazon_products;
SHOW TABLES;
SELECT COUNT(*) FROM amazon_products_new;
SELECT * FROM amazon_products_new LIMIT 10;
DESCRIBE amazon_products_new;
ALTER TABLE amazon_products_new
CHANGE COLUMN `ï»¿product_name` product_name TEXT;

SELECT COUNT(*) AS Total_Products
FROM amazon_products_new;
SELECT AVG(rating) AS Average_Rating
FROM amazon_products_new;
SELECT product_name, discount_percentage
FROM amazon_products_new
ORDER BY discount_percentage DESC
LIMIT 10;
SELECT product_name, actual_price
FROM amazon_products_new
ORDER BY actual_price DESC
LIMIT 10;
SELECT category, COUNT(*) AS Product_Count
FROM amazon_products_new
GROUP BY category;