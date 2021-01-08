-- select statment
USE sql_inventory;
SELECT name,unit_price,(unit_price*1.1) AS newprice FROM products ;

-- select clause
USE sql_store;
SELECT distinct state from customers;

-- where clause
USE sql_store;
SELECT * FROM customers where state='VA';
select * from customers where customer_id=1 ;
SELECT * from customers where state <> 'VA'; -- this gives details of all states except VA
select * from customers where birth_date>'1990-01-01'; -- date is also presented in inverted col
SELECT * from orders where order_date>='2019-01-01'; -- to check the orders placed in that year


-- AND OR NOT
USE sql_store;
select * from order_items where order_id=6 AND (unit_price*quantity)>30;
select * from order_items where unit_price<=8 OR quantity <=4
select *  from order_items where NOT quantity=4;

-- IN operator
select * from customers where state IN ('VA','FL','GA') 
-- above rather than using select * from customers where state ='VA' OR 'FL' OR 'GA'
select * from products where quantity_in_Stock IN (49,38,72);

-- Between opt
select * from customers where birth_date between '1990-01-01' AND '2000-01-01'

-- Like opt
select * from customers where address like '%TRAIL%' or '%AVENUE%' AND phone like '%9';
select * from customers where phone like '%9'

-- REGEXP
select * from customers where last_name REGEXP '^field|mac$|rose'
-- this gives regular expression where ^ means to fetch last_name which starts with field
-- $ means to fetch the last_name which ends with mac



