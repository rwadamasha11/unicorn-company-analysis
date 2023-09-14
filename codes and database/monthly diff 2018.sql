--How widely did monthly profits vary in 2018?--

SELECT month, prof, 
LEAD (prof,1,0) OVER (ORDER BY month), LEAD (prof,1,0) OVER (ORDER BY month) - prof as diff
FROM
(
SELECT  DATE_PART ('Month',order_date) AS month, SUM (order_profits) AS prof
FROM orders o 
JOIN order_details od
ON o.order_id = od.order_id
WHERE DATE_PART ('Year',order_date) = '2018'
GROUP BY 1
ORDER BY 2 
)  t1