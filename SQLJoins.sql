-- Inner join -- Joining tables from same db e.g.
 USE sql_store
SELECT order_id, orders.customer_id, first_name,last_name 
FROM orders 
JOIN customers
  ON orders.customer_id=customers.customer_id

SELECT order_id, o.customer_id, first_name,last_name 
FROM orders o
JOIN customers c
 ON o.customer_id=c.customer_id

-- Ex to join two table in same db
SELECT order_id, oi.product_id, quantity, oi.unit_price
FROM order_items oi
JOIN products p
 ON oi.product_id=p.product_id

-- Joins among different db
-- Lets say we are currently in sql_store db and we need to join with sql_inventory db
SELECT * 
FROM order_items oi
JOIN sql_inventory.products p
  ON oi.product_id=p.product_id

-- But if we are in sql_inventory db and need to join sql_store db then
SELECT * 
FROM sql_store.order_items oi
JOIN products p
 ON oi.product_id=p.product_id

-- self join with same employee table 
SELECT e.employee_id, e.first_name, m.first_name AS manager 
FROM employees e
JOIN employees m
 ON e.reports_to=m.employee_id
