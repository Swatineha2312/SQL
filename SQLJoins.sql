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
-- Joins among different db.Lets say we are currently in sql_store db and we need to join with sql_inventory db
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
-- joining multiple tables
SELECT 
o.order_id,
o.order_date,
c.first_name,
c.last_name,
os.name AS status
FROM orders o
JOIN customers c
 ON o.customer_id=c.customer_id
JOIN order_statuses os
 ON o.status=os.order_status_id
-- Exercise to join 3 tables payment,payment_method and clients to give the payment details of clients
USE sql_invoicing;
SELECT 
p.client_id,
c.name,
c.phone,
p.date,
p.amount,
p.invoice_id,
p.payment_method AS payment_method_id,
p.payment_id,
pm.name AS payment_method
FROM payments p
JOIN payment_methods pm
 ON  p.payment_method=pm.payment_method_id
JOIN clients c
 ON p.client_id=c.client_id
-- Comppound join
USE sql_store;
SELECT *  
FROM order_items oi
JOIN order_item_notes oin
  ON oi.order_id=oin.order_id
  AND oi.product_id=oin.product_idorder_item_notes
 
