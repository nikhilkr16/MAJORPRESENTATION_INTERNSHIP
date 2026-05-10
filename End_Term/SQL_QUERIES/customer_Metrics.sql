-- 2. Customer Metrics
-- Tables to use
-- customers, orders, order_items, sellers, products, payments, reviews, geolocations, product_category


-- 2.1 Top (10) Cities by Order Volume
SELECT c.customer_city, COUNT(o.order_id) AS total_orders
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_city
ORDER BY total_orders DESC
LIMIT 10;

-- 2.2 Repeat vs New Customers
SELECT  COUNT(order_id) AS orders_count
FROM orders
GROUP BY (SELECT  COUNT(order_id) AS orders_count
FROM orders)
ORDER BY orders_count DESC;

-- 2.3 Average Orders per Customer
SELECT AVG(order_count) AS avg_orders_per_customer
FROM (
    SELECT customer_id, COUNT(order_id) AS order_count
    FROM orders
    GROUP BY customer_id
) AS customer_orders;
