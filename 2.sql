SELECT customer_id,
COUNT(DISTINCT(order_date)) AS Number_of_days
FROM sales
GROUP BY customer_id;
