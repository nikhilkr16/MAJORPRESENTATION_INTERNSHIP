-- 6. Customer Satisfaction Metrics
-- 6.1 Review Score Distribution
SELECT 
    review_score,
    COUNT(order_id) AS total_orders,
    ROUND(COUNT(order_id) * 100.0 / (SELECT COUNT(*) FROM reviews), 2) AS percentage
FROM reviews
GROUP BY review_score
ORDER BY review_score DESC;

-- 6.2 Low-rated Products (for improvement)
SELECT 
    p.product_id,
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    AVG(r.review_score) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM reviews r
JOIN order_items oi 
    ON r.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
GROUP BY p.product_id, category_english
HAVING AVG(r.review_score) < 3
ORDER BY avg_rating ASC, total_reviews DESC
LIMIT 10;

-- 6.3 Revenue vs Ratings (Correlation check at category level)
SELECT 
    COALESCE(pc.product_category_name_english, 'Unknown') AS category_english,
    ROUND(AVG(r.review_score), 2) AS avg_rating,
    SUM(pmt.payment_value) AS total_revenue
FROM reviews r
JOIN order_items oi 
    ON r.order_id = oi.order_id
JOIN products p 
    ON oi.product_id = p.product_id
LEFT JOIN product_category pc 
    ON p.product_category_name = pc.product_category_name
JOIN payments pmt 
    ON oi.order_id = pmt.order_id
GROUP BY category_english
ORDER BY avg_rating ASC;

