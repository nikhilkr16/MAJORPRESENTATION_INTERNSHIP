-- 7.Operational / Supply Chain Metrics
-- 7.1 Average Delivery Time (overall)
SELECT 
    ROUND(AVG(DATEDIFF(order_delivered_customer_date, order_purchase_timestamp)),2) AS avg_delivery_days
FROM orders
WHERE order_delivered_customer_date IS NOT NULL;



-- 7.2 Average Delivery Time by Seller
SELECT 
    s.seller_id,
    s.seller_city,
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)),2) AS avg_delivery_days
FROM sellers s
JOIN order_items oi ON s.seller_id = oi.seller_id
JOIN orders o ON oi.order_id = o.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY s.seller_id, s.seller_city
ORDER BY avg_delivery_days ASC;

-- 7.3 Late / Delayed Orders (vs estimated date)
SELECT 
    COUNT(*) AS delayed_orders,
    ROUND(COUNT(*) * 100.0 / (SELECT COUNT(*) FROM orders WHERE order_estimated_delivery_date IS NOT NULL), 2) AS delayed_percentage
FROM orders
WHERE order_delivered_customer_date > order_estimated_delivery_date;


-- 7.4 Delivery Performance by City
SELECT 
    c.customer_city,
    ROUND(AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)),2) AS avg_delivery_days,
    ROUND(SUM(CASE WHEN o.order_delivered_customer_date > o.order_estimated_delivery_date THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS delayed_percentage
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY c.customer_city
ORDER BY delayed_percentage DESC
LIMIT 10;

-- 7.5 Fast-moving vs Slow-moving Categories
-- Fast movers = high sales volume; Slow movers = low volume.
-- Sort DESC for fast movers, ASC for slow movers.
SELECT 
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    COUNT(oi.order_id) AS total_orders,
    SUM(oi.price) AS total_revenue
FROM order_items oi
JOIN products p ON oi.product_id = p.product_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
GROUP BY category_english
ORDER BY total_orders DESC;



