SELECT c.customer_name, o.order_date, o.total_amount, avg_order.avg_total_amount
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN (
    SELECT customer_id, AVG(total_amount) AS avg_total_amount
    FROM orders
    GROUP BY customer_id
) avg_order ON c.customer_id = avg_order.customer_id
WHERE c.city = 'New York';
