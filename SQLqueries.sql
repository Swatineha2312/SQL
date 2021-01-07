-- select statment
-- USE sql_inventory;
-- SELECT name,unit_price,(unit_price*1.1) AS newprice FROM products ;

-- select clause
-- USE sql_store;
-- SELECT distinct state from customers;

-- where clause
 USE sql_store;
-- SELECT * FROM customers where state='VA';
-- select * from customers where customer_id=1 ;
-- SELECT * from customers where state <> 'VA'; -- this gives details of all states except VA
-- select * from customers where birth_date>'1990-01-01'; -- date is also presented in inverted col
-- SELECT * from orders where order_date>='2019-01-01'; -- to check the orders placed in that year
