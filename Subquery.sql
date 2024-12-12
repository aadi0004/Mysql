use sakila;

-- arranging asc or desc order
select * from address
order by district,city_id desc;

-- as function for rename column
select customer_id,sum(amount) as "total_amount"  from payment
group by customer_id order by total_amount desc;


-- subqueries

select * from payment where amount=(select amount from payment where payment_id=3
);

-- get payment_id staffid rental_id and amount only for that payment 
-- where the rental id is greater than rental id of payment id 4


select payment_id,staff_id,rental_id, amount from payment 
where rental_id > 
 (select rental_id from payment where payment_id=4);
 
 -- get payment_id amount ,10% increment in amount for those 
 -- payment where the month of payment date is equal to the
 -- month of payment id 5
 
 select payment_id,amount,amount+(amount*0.1) as increment from payment 
 where month(payment_date) = (select month(payment_date) from payment where payment_id = 5);


-- get customer_id and the total number of payment done by each customer 
-- only for those whose total number of payment should be greater then 
-- the total number of payments done by customer id 2

-- select * from payment;
-- select customer_id ,count(payment_id) as total from payment  group by customer_id ;
-- select count(payment_id) from payment where customer_id=2 group by customer_id ;

select customer_id ,count(payment_id) as total from payment group by customer_id having count(payment_id)>
(select count(payment_id) from payment where customer_id=2 group by customer_id )
;

-- 1. what is multirow subquery ( in any and all operator)
-- 2. what is corelated subquery  imp
