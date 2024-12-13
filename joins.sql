create database REGEX;
CREATE TABLE PRODUCT(PID int, PNAME varchar(20),PRICE int );

INSERT INTO PRODUCT VALUES (10,"TV",100),(20,"mobile",140),(30,"gyser",200),(40,"yash",90);
INSERT INTO PRODUCT VALUES (50,"charger",100);
select * FROM PRODUCT;

CREATE TABLE ORDERS(OID int, CITY varchar(20),PRODUCT_ID INT);

INSERT INTO ORDERS VALUES (101,"JAIPUR",10),(101,"GOA",20),(103,"UK",30),(104,"SHIMLA",40),(105,"KERALA",80);

SELECT * FROM ORDERS;

-- all cross join will be m number of data on table 1 and n number of data in table 2 then this will be m * n 

select o.oid,o.city ,o.product_id, pid,p.pname,p.price 
from orders as o join product as p
where o.product_id = p.pid;

select o.oid,o.city ,o.product_id, pid,p.pname,p.price 
from orders as o inner join product as p
on o.product_id = p.pid;

select o.oid,o.city ,o.product_id, pid,p.pname,p.price 
from orders as o left join product as p
on o.product_id = p.pid;

select o.oid,o.city ,o.product_id, pid,p.pname,p.price 
from orders as o right join product as p
on o.product_id = p.pid;


use sakila;
select * from actor;
select * from film_actor;


-- get actor id full name of actor the film id and last update column from these two tables-- 

select a.actor_id, concat_ws(" ", a.first_name,a.last_name ) as full_name, f.film_id,f.last_update
from actor as a join film_actor as f
on a.actor_id=f.actor_id;

select a.actor_id, concat_ws(" ", a.first_name,a.last_name ) as full_name, f.film_id,f.last_update
from actor as a   join film_actor as f
on a.actor_id=f.actor_id;


-- pk fk ck
-- 1. what is self join and how it is differnt from outer join
-- what are constring and why we use it
-- 3. what is the diff bw joins and set operations

-- sql zoo 1,2,3,5