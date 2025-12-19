-- Create products table
   CREATE TABLE sales (
   order_date varchar(50),
   product varchar(50),
   quantity INT,
   price INT,
   region varchar(50)
   );

--INSERT data in Sales table
    INSERT INTO sales VALUES
    ('2024-01-01', 'Laptop', 2, 50000, 'North'),
   ('2024-01-02', 'Phone', 5, 20000, 'South'),
   ('2024-01-03', 'Tablet', 3, 15000, 'East'),
   ('2024-01-04', 'Laptop', 1, 50000, 'West'),
   ('2024-01-05', 'Phone', 4, 20000, 'North');

--View all data
SELECT * FROM sales;

--Total sales per product:
SELECT product, SUM(quantity * price) AS total_sales
FROM sales
GROUP BY product;

-- Sales by region
SELECT region, COUNT(*) AS orders
FROM sales
GROUP BY region;

-- Filter Laptop sales
SELECT * FROM sales
WHERE product = 'Laptop';

-- Sort by price
SELECT * FROM sales
ORDER BY price DESC;

-- Create products table
CREATE TABLE products (
  product varchar(50),
  category varchar(100)
);

-- Insert product categories
INSERT INTO products VALUES
('Laptop', 'Electronics'),
('Phone', 'Electronics'),
('Tablet', 'Electronics');

-- Join sales with products to get category-wise sales
SELECT s.product, p.category, SUM(s.quantity * s.price) AS total_sales
FROM sales s
JOIN products p
ON s.product = p.product
GROUP BY s.product, p.category;



   

     
