--Show the total spent by customers from low to high

select distinct customer_id, sum (order_sales) as total_profit 
from order_details od
join orders o
on o.order_id = od.order_id
group by 1 
order by 2 

