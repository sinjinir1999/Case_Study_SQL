WITH Most_Purchased_Product AS

(SELECT product_id, COUNT(product_id) AS total_count
FROM sales JOIN menu
USING (product_id)
GROUP BY product_id
ORDER BY total_count DESC
LIMIT product_id)

SELECT product-name
FROM menu
JOIN Most_Purchased_Product
USING(product_id);
