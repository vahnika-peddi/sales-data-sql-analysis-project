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
SELECT strftime('%m', order_date) AS month,
SUM(amount) AS monthly_sales
FROM sales
GROUP BY month;