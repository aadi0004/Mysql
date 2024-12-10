# date function

select current_date(),curtime(),current_timestamp() from dual;

-- add 2 date
select now(), adddate(now(),2) from dual;

-- add 2 months
select now(), adddate(now(), interval 2 month ) from dual;

select now(), addtime(now(),2) from dual;

select datediff(now(),'2024-11-28') from dual;

select last_day(now()) from dual;

select month(now()) from dual;

-- %a = week name, %m = month ,%M = month name ,
-- %c = month , %h = number of hour
select date_format( now(),"current day is %a %M %c %h") from dual;


-- multi-row functions

use sakila;
select * from payment;

select distinct(customer_id) from payment;

-- cannot read blank 
select sum(amount),count(amount) from payment;

-- also count space or blank column or row value
select sum(amount), count(*) from payment;

select avg(amount) from payment;

select sum(amount) from payment where customer_id=1;

-- jo column group by m likhenge bo hi select k sath likhenge
-- only can use with aggregate functions

select customer_id,sum(amount),count(*) from payment group by customer_id;

-- 1. how many customer has been handled by which staff

select * from payment;
select count(customer_id),staff_id from payment group by staff_id;

-- 2. total num of payments , total amount spent and total num of customer 
-- served in each month 

select count(payment_id),sum(amount),count(customer_id),month(payment_date) from payment 
group by month(payment_date);
-- having count(*)>2000; 
--

-- when filter data normaly then we can use where 
-- cann not use where when there is not physical data

-- only can use with having clause

select * from address;
select count(address2) from address;
select count(address_id) from address;


-- 1. get the each district name the toatal district present and
-- the sum of city_id for each district
select district,sum(city_id),count(district) from address
group by district;