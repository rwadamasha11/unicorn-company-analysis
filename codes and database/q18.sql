--Display the number of duplicate products based on their product manufacturer.           




SELECT product_manufacturer, count ( distinct product_name)
FROM product
GROUP BY 1 
ORDER BY 2