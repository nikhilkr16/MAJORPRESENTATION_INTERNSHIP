-- Tables to use
-- customers, orders, order_items, sellers, products, payments, reviews, geolocations, product_category
use olist_project;
-- A. Check table size & structure
SELECT COUNT(*) AS total_customers FROM customers;
SELECT * FROM customers LIMIT 5;

SELECT COUNT(*) AS total_orders FROM orders;
SELECT * FROM orders LIMIT 5;

-- B. Check for missing/null values
SELECT COUNT(*) - COUNT(customer_id) AS null_customers FROM customers;
SELECT COUNT(*) - COUNT(order_id) AS null_orders FROM orders;


-- C. Standardize timestamps
ALTER TABLE orders
MODIFY order_purchase_timestamp DATETIME;


-- 1. Orders & Revenue Metrics

-- 1.1 Total Orders, Revenue, and Average Order Value

SELECT 
    COUNT(*) AS total_orders,
    SUM(payment_value) AS total_revenue,
    AVG(payment_value) AS avg_order_value
FROM orders o
JOIN payments p ON o.order_id = p.order_id;

-- 1.2 Monthly Orders & Revenue Trend

SELECT 
    DATE_FORMAT(order_purchase_timestamp, '%Y-%m') AS month,
    COUNT(*) AS monthly_orders,
    SUM(payment_value) AS monthly_revenue,
    AVG(payment_value) AS avg_order_value
FROM orders o
JOIN payments p ON o.order_id = p.order_id
GROUP BY month
ORDER BY month;

-- 1.3 Order Status Distribution

SELECT customer_id, COUNT(order_id) AS orders_count
FROM orders
GROUP BY customer_id
ORDER BY orders_count DESC;





