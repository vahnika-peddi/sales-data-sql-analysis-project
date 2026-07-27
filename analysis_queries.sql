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

-- Highest Sales
select *
from sales
order by amount desc
limit 1;

-- Electronics Products
select *
from sales
where category = 'electronics';

-- Sales Above 30000
select *
from sales
where amount > 30000

-- Average sales
select avg(amount)as average_sales
from sales;

-- Total orders
select count(*)as total_orders
from sales;

-- Distinct Customers
select distinct customer
from sales;

-- Category sales above 50000
select category,
       sum(amount)as total_sales
from sales
group by category
having sum(amount) > 50000;

-- sales level using case
select product,
       amount,
       case
       when amount >= 50000 then 'high'
       when amount >= 20000 then 'medium'
       else 'low'
