-- 5. Payment & Transaction Metrics
-- 5.1 Most Used Payment Types
SELECT 
    payment_type,
    COUNT(order_id) AS total_orders,
    SUM(payment_value) AS total_revenue
FROM payments
GROUP BY payment_type
ORDER BY total_orders DESC;


-- 5.2 Average Payment Value by Type
SELECT 
    payment_type,
    AVG(payment_value) AS avg_payment_value,
    SUM(payment_value) AS total_revenue
FROM payments
GROUP BY payment_type
ORDER BY avg_payment_value DESC;








-- 5.3 Installment Analysis (specific to Olist dataset)
SELECT 
    payment_installments,
    COUNT(order_id) AS total_orders,
    AVG(payment_value) AS avg_order_value,
    SUM(payment_value) AS total_revenue
FROM payments
GROUP BY payment_installments
ORDER BY payment_installments;
