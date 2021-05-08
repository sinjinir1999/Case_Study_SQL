  SELECT customer_id,
  (SELECT MIN(order_date)
  FROM
  sales AS s2
  WHERE s1.customer_id=s2.customer_id)
  AS first_order_date
  FROM sales AS s1
  GROUP BY customer_id;
