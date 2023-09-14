--What is the distribution of customer types in the data?

SELECT customer_segment , COUNT (customer_segment)
FROM customers
GROUP BY  1 