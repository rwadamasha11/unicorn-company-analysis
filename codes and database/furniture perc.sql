
----Calculate the percent of products that are within the category ‘Furniture.’ 




with t1 AS 
(
SELECT count (product_category) AS total
FROM product
)

,t2 AS 
(
    SELECT count (product_category) AS furniture_total
    FROM product
    WHERE product_category = 'Furniture'
)

(t2.furniture_total/cast(t1.total as float) *100
FROM t1,t2