--Calculate the difference between the largest and smallest order quantities for product id ‘100.’---

SELECT  max (quantity) - min (quantity) AS DIFF
FROM order_details
WHERE product_id = '100'
