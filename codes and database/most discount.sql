--Which customer got the most discount in the data? (in total amount)--




SELECT c.customer_id, t1.original - od.order_sales AS discount_amt
FROM  (
SELECT order_sales/ (1-order_discount) AS original, order_id
FROM order_details
) as t1
JOIN order_details od
ON od.order_id = t1.order_id
JOIN orders o 
ON o.order_id = od.order_id
JOIN customers c
ON c.customer_id = o.customer_id
ORDER BY 2 DESC








