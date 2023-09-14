--What’s the most profitable product category on average in Iowa across all years?--

SELECT product_category, AVG (order_profits)
FROM product p 
LEFT JOIN order_details od
ON od.product_id = p.product_id
LEFT JOIN orders o 
ON o.order_id = od.order_id
WHERE shipping_state = 'Iowa'
GROUP BY 1
ORDER BY 2 DESC 