SELECT customer_id, SUM(price) AS total_price
FROM sales
JOIN menu
USING(product_id)
GROUP BY customer_id;
