--Display customer names for customers who are in the segment ‘Consumer’ or ‘Corporate.’ How many customers are there in total?--



SELECT  customer_id, customer_name
FROM customers
WHERE customer_segment = 'Corporate' OR customer_segment = 'Consumer'