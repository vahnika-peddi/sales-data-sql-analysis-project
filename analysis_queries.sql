SELECT SUM(amount) AS total_sales
FROM sales;

SELECT product, SUM(amount) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

SELECT category, SUM(amount) AS category_sales
FROM sales
GROUP BY category;

SELECT customer, SUM(amount) AS total_spent
FROM sales
GROUP BY customer
ORDER BY total_spent DESC;

SELECT month(order_date) AS month,
SUM(amount) AS monthly_sales
FROM sales
GROUP BY month;

SELECT *
FROM sales
ORDER BY amount DESC
limit 1;

SELECT *
FROM sales
WHERE category = 'electronics';

SELECT *
FROM sales
WHERE amount > 30000;

SELECT avg(amount)as average_sales
FROM sales;

SELECT COUNT(*)as total_orders
FROM sales;

SELECT DISTINCT customer
FROM sales;

SELECT category,
       sum(amount)as total_sales
FROM sales
GROUP BY category
HAVING sum(amount) > 50000;

SELECT product,
       amount,
       CASE
       WHEN amount >= 50000 THEN 'high'
       WHEN amount >= 20000 THEN 'medium'
       ELSE 'low'
END AS sales_level
FROM sales;
