
CREATE TABLE sales (
  order_id INT,
  order_date DATE,
  product VARCHAR(100),
  category VARCHAR(50),
  region VARCHAR(50),
  sales FLOAT,
  quantity INT
);

-- Total Sales
SELECT SUM(sales) AS total_sales FROM sales;

-- Region-wise Sales
SELECT region, SUM(sales) AS total_sales
FROM sales
GROUP BY region;

-- Top 5 Products by Sales
SELECT product, SUM(sales) AS revenue
FROM sales
GROUP BY product
ORDER BY revenue DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(order_date) AS month, SUM(sales) AS monthly_sales
FROM sales
GROUP BY month
ORDER BY month;
