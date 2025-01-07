use demo_db;
show tables;
select * from order_lines;
select * from orders;
select * from products;
select * from invoices;
-- find out the top 3 product id based on the num of quantity sold
select product_id, sum(quantity) as quantity from order_lines 
group by product_id 
order by quantity desc limit 3;

-- get order date , product_id product_name, and order_id which ahs been sold in the multiples of two
				-- select  date(order_date) as order_date , order_lines.product_id , product_name ,order_id from orders join order_lines 
				--  join products on  orders.id = order_lines.id
				--  and   products.product_id = order_lines.product_id
				--  WHERE order_lines.quantity % 2 = 0
				
select  date(order_date) as order_date , order_lines.product_id , product_name ,order_id from orders 
JOIN order_lines ON orders.id = order_lines.order_id
JOIN products  ON order_lines.product_id = products.product_id
 WHERE order_lines.quantity % 2 = 0;

-- get the brand name, order value , product name. for each product sold
select * from brands;
SELECT brands.brand, (ol.quantity * p.price) AS order_value, p.product_name                                       
FROM order_lines ol
JOIN products p ON ol.product_id = p.product_id
JOIN orders o ON ol.order_id = o.id
join brands on brands.product_id= p.product_id;    
    

-- SELECT SUBSTRING_INDEX(p.product_name, ' ', 1) AS brand_name, (ol.quantity * p.price) AS order_value, p.product_name                                       
-- FROM order_lines ol
-- JOIN products p ON ol.product_id = p.product_id
-- JOIN orders o ON ol.order_id = o.id;            



select * from order_lines;
select * from orders;
select * from products;
select * from invoices;
select time(orders.order_date) from orders
;
-- get the average order value for each order which has been placed after every half an hour
select avg(orders.order_value), ol.product_id from orders
join order_lines ol on orders.id = ol.id
where time(orders.order_date)> order_date + interval 30 minute
group by ol.product_id, orders.id;

select p.product_id,avg(p.price*ol.quantity ) as average  from products p 
join order_lines ol on p.product_id = ol.product_id
join orders
where time(orders.order_date)> order_date + interval 30 minute
group by product_id;

 

select time(orders.order_date)> order_date + interval 30 minute from orders;

select * from order_lines;
select * from orders;
select * from products;
select * from invoices;


-- get order id , num of quantity sold , the month and the total price for each brands
SELECT 
    o.id AS order_id,
    SUM(ol.quantity) AS total_quantity_sold,
    monthname(o.order_date) as order_month,
    b.brand,
    SUM(ol.quantity * p.price) AS total_price
FROM orders o
JOIN order_lines ol ON o.id = ol.order_id
JOIN products p ON ol.product_id = p.product_id
join brands b on b.product_id = p.product_id
GROUP BY o.id, order_month, b.brand
ORDER BY order_month, b.brand;



-- read csv in sql
-- write 10 que and ans
