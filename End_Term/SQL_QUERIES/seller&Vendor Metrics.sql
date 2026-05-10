-- Seller & Vendor Metrics

-- 4.1 Top-performing Sellers (by revenue, by order count)
-- Revenue by seller
SELECT 
    s.seller_id,
    s.seller_city,
    SUM(pmt.payment_value) AS total_revenue,
    COUNT(DISTINCT oi.order_id) AS total_orders
FROM sellers s
JOIN order_items oi 
    ON s.seller_id = oi.seller_id
JOIN payments pmt 
    ON oi.order_id = pmt.order_id
GROUP BY s.seller_id, s.seller_city
ORDER BY total_revenue DESC
LIMIT 10;


-- 4.2 Average Delivery Time per Seller
SELECT 
    s.seller_id,
    s.seller_city,
    AVG(DATEDIFF(o.order_delivered_customer_date, o.order_purchase_timestamp)) AS avg_delivery_days
FROM sellers s
JOIN order_items oi 
    ON s.seller_id = oi.seller_id
JOIN orders o 
    ON oi.order_id = o.order_id
WHERE o.order_delivered_customer_date IS NOT NULL
GROUP BY s.seller_id, s.seller_city
ORDER BY avg_delivery_days;

-- 4.3 Seller Ratings (avg review score per seller)

SELECT 
    s.seller_id,
    s.seller_city,
    AVG(r.review_score) AS avg_rating,
    COUNT(r.review_id) AS total_reviews
FROM sellers s
JOIN order_items oi 
    ON s.seller_id = oi.seller_id
JOIN reviews r 
    ON oi.order_id = r.order_id
GROUP BY s.seller_id, s.seller_city
ORDER BY avg_rating DESC;

-- 4.4 sellers Needing Improvement (low revenue + low rating)
SELECT 
    s.seller_id,
    s.seller_city,
    SUM(pmt.payment_value) AS total_revenue,
    AVG(r.review_score) AS avg_rating
FROM sellers s
JOIN order_items oi 
    ON s.seller_id = oi.seller_id
JOIN payments pmt 
    ON oi.order_id = pmt.order_id
JOIN reviews r 
    ON oi.order_id = r.order_id
GROUP BY s.seller_id, s.seller_city
HAVING SUM(pmt.payment_value) < 5000   -- low revenue threshold (adjust as needed)
   AND AVG(r.review_score) < 3.0       -- low rating
ORDER BY total_revenue ASC, avg_rating ASC;
