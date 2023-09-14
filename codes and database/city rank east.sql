--What was the rank of each city in the East region in 2015?--

SELECT city, amt , RANK() OVER (ORDER BY amt desc)
FROM
(
SELECT shipping_city as city, sum (quantity) as amt
FROM order_details od
LEFT JOIN orders o
ON o.order_id = od.order_id
WHERE date_part ('Year',order_date)='2015' AND shipping_region = 'East'
GROUP BY 1
order by 2 desc
) R1
ORDER BY 2 DESC