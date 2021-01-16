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
select * from customers where last_name REGEXP '[i]e'
-- this will give thr lastname which have e in name and i before e (anywhere).
-- we could use same ecpression to find at the end as well e.g. e[i]
select * from customers where last_name REGEXP '[a-h]e'
-- this represents the range of characters present in last name having e andy characters before e from a to h
-- so use ^ for beginning , $ for end, | for logical or, [abcd] and [a-f] for range
-- Exercise
select * from customers where first_name REGEXP 'ELKA|AMBUR'
select * from customers where last_name REGEXP 'EY$|ON$'
select * from customers where last_name REGEXP '^MY|SE'
select * from customers where last_name REGEXP 'B[r|u]'

-- IS NULL
select * from customers where phone IS NULL
-- can be used to find values as select * from customers where phone IS NOT NULL to find not null values
-- Exercise to find order which is not shipped
select * from orders where shipped_date IS NULL

-- ORDERBY
select * from customers order by points
-- exercise
select * from order_items where order_id=2 order by quantity*unit_price DESC

-- LIMIT
select * from customers limit 3
-- lets say we have website with pagination
-- page 1 : 1-3
-- page 2 : 4-6
-- page 3 : 7-9
-- and we want to retrieve data from page 3 skipping pages 1 and 2
select * from customers limit 6,3
-- this will skip first 6 rows and would show next 3 rows where 6 is the offset value
-- Ex to find loyal customers whith max points
select * from customers order by points DESC limit 3
