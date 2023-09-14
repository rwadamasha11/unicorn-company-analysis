--Show the product_subcategory and the total number of products in the subcategory.
--Show the order from most to least products and then by product_subcategory name ascending.



SELECT  product_subcategory AS sub , count (product_name) AS total_products
FROM product 
GROUP BY 1 
ORDER BY 2 DESC, 1