--What is the most popular product in that category across all states in 2016?--

SELECT product_name, COUNT (order_date)
FROM product p 
LEFT JOIN order_details od
ON od.product_id = p.product_id
LEFT JOIN orders o 
ON o.order_id = od.order_id
WHERE DATE_PART ('year', order_date) = '2016' AND product_category = 'Furniture'
GROUP BY 1
ORDER BY 2 DESC 