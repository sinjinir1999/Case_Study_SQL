WITH CTE_Rides AS
(SELECT MONTHNAME(created_AT) AS month_name,
YEAR(created_at) AS year_name,
COUNT (*) AS rides
FROM ride_details
GROUP BY month_name,year_name)
SELECT CONCAT(CAST(month_name AS CHAR), CAST(year_name AS CHAR)) AS month_year, rides
FROM CTE_Rides;
