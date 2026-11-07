-- SHOP DATABASE - Ali Hassan
CREATE TABLE customers (
  customer_id INT PRIMARY KEY,
  first_name VARCHAR(50),
  city VARCHAR(50)
);

CREATE TABLE products (
  product_id INT PRIMARY KEY,
  product_name VARCHAR(50),
  category VARCHAR(50),
  price INT,
  stock INT
);

CREATE TABLE orders (
  order_id INT PRIMARY KEY,
  customer_id INT,
  product_id INT,
  quantity INT,
  total_amount INT,
  order_date DATE
);

INSERT INTO customers (customer_id, first_name, city) VALUES
(1, 'Ali Hassan', 'Karachi'),
(2, 'Ahmed', 'Lahore'),
(3, 'Sara', 'Islamabad'),
(4, 'Bilal', 'Karachi');

INSERT INTO products (product_id, product_name, category, price, stock) VALUES
(1, 'Laptop', 'Electronics', 150000, 10),
(2, 'Shirt', 'Clothing', 2000, 50),
(3, 'Mobile', 'Electronics', 80000, 20);

INSERT INTO orders (order_id, customer_id, product_id, quantity, total_amount) VALUES
(1, 1, 1, 1, 150000),
(2, 2, 2, 2, 4000),
(3, 1, 3, 1, 80000);

-- CLIENT REPORT - Pura Data Ek Saath
SELECT 
c.first_name AS Customer_Name,
c.city AS City,
p.product_name AS Product,
p.category AS Category,
o.quantity AS Qty,
o.total_amount AS Total_Paisa
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
JOIN products p ON o.product_id = p.product_id;
