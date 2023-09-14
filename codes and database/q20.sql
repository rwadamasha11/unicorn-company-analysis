--Show the product_id(s), the sum of quantities, where the total sum of its product quantities is greater than or equal to 100.



SELECT product_id, quantity 
FROM order_details
WHERE quantity >=100
ORDER BY 1