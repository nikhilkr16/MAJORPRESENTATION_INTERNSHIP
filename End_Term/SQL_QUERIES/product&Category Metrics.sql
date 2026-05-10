
-- Product & Category Metrics
-- 3.1 Top-selling Categories
use olist_project;
SELECT 
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
GROUP BY category_english
ORDER BY total_orders DESC;



-- 3.2 Revenue per Category
SELECT 
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    SUM(pmt.payment_value) AS total_revenue
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
JOIN payments pmt 
    ON oi.order_id = pmt.order_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
GROUP BY category_english
ORDER BY total_revenue DESC;
-- 3.3 Low-selling / Slow-moving Products
SELECT 
    p.product_id,
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    COUNT(oi.order_id) AS total_orders
FROM order_items oi
JOIN products p 
    ON oi.product_id = p.product_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
GROUP BY p.product_id, category_english
ORDER BY total_orders ASC
LIMIT 10;






