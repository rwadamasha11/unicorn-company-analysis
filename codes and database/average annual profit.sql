--What’s the average annual profit for that city across all years?--

select  avg (order_profits)
from order_details od
LEFT JOIN orders o
ON o.order_id = od.order_id
WHERE shipping_city = 'Lebanon'