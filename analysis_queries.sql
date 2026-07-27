-- Total Sales
SELECT SUM(amount) AS total_sales
FROM sales;

-- Top Selling Products
SELECT product, SUM(amount) AS total_revenue
FROM sales
GROUP BY product
ORDER BY total_revenue DESC;

-- Category Wise Sales
SELECT category, SUM(amount) AS total_sales
FROM sales
GROUP BY category;

-- Top Customers
SELECT customer, SUM(amount) AS total_spent
FROM sales
GROUP BY customer
ORDER BY total_spent DESC;

-- Monthly Sales
SELECT month(order_date) AS month,
SUM(amount) AS monthly_sales
FROM sales
GROUP BY month(order_date);

-- Highest Sales
SELECT *
FROM sales
ORDER BY amount DESC
limit 1;

-- Electronics Products
SELECT *
FROM sales
WHERE category = 'electronics';

-- Sales Above 30000
SELECT *
FROM sales
WHERE amount > 30000;

-- Average sales
SELECT avg(amount)as average_sales
FROM sales;

-- Total orders
SELECT COUNT(*)as total_orders
FROM sales;

-- Distinct Customers
SELECT DISTINCT customer
FROM sales;

-- Category sales above 50000
SELECT category,
       sum(amount)as total_sales
FROM sales
GROUP BY category
HAVING sum(amount) > 50000;

-- sales level using case
SELECT product,
       amount,
       CASE
       WHEN amount >= 50000 THEN 'high'
       WHEN amount >= 20000 THEN 'medium'
       ELSE 'low'
END AS sales_level
FROM sales;
