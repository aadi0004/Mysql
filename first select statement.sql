
use sakila;

show tables;

select * from actor;

select actor_id,first_name,actor_id+10 from actor;

select actor_id,first_name,'asd' from actor;

select first_name,actor_id from actor;

select *,first_name from actor;

select * from actor where actor_id=2;

select * from actor where actor_id<5;

select first_name,last_name from actor where actor_id=2;

-- between

select * from actor 
where actor_id between 2 and 7;

select * from actor where actor_id in (2,7);

select * from actor where first_name in ('nick','ed');

select * from actor where actor_id =2 or actor_id=7;

select * from actor where actor_id >50 and first_name='nick';

-- like operator

select * from actor where first_name ='ed';

select * from actor where first_name like 'ed';

-- % (0 or more charachter)
-- if starts with 'e'
select * from actor where first_name like 'e%';

-- if ends with 'e'
select * from actor where first_name like '%e';

-- if there is 'e'
select * from actor where first_name like '%e%';

select * from actor 
where first_name like 'e%' or first_name like 't%';   -- starts with e or t

select * from actor where first_name like '_e%';  -- use _ for secound/third... char

select * from actor where first_name like '%t_'; -- secound last

-- concat method
select concat(first_name, last_name) from actor;




