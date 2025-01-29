use regex;

create table product (pid int primary key , pname varchar(20), price int);
insert into product(pid,pname,price) values(200,'tv',1200);
insert into product(pid,pname,price) values(201,'mobile',4000);
insert into product(pid,pname,price) values(203,'gyser',1200);

select * from product;

create table orders(oid int , city varchar(20), product_id int ,
foreign key (product_id) references product(pid));


insert into orders(oid,city,product_id) values(10,'jaipur',200),
(11,'delhi',201),(13,'ajmer',203);

-- can not add if pk value is not present for fk
-- insert into orders(oid,city,product_id) values(10,'jaipur',2000);

select * from orders;



			-- DDL  ===> Data Defination Language
            
-- create , drop, truncate , alter


create table asd(id int , name varchar(20));
insert into asd values (20,'aadi');
insert into asd(name) values ('aadi');
select * from asd;
-- insert DML operation


 -- updating column value
update asd set name = 'xyz' where id = 10;

-- deleting a row
delete from asd where id is null;

update asd 
set id=11 
where name='aadi';

-- delete table 
drop table test4;

-- truncate (only delete data)
truncate test3;
select * from test3;


create table companies(id int);
insert into companies values (11,'232332');
select * from companies;




							-- add table column
alter table companies
add column phone varchar(15);

-- add column without null value
alter table companies
add column emp_count int not null;

-- delete column
alter table companies
drop column emp_count;


							-- rename table (DDL)

rename table companies to newcompany;
-- select * from companies; (now not exists)
select * from newcompany;

alter table newcompany rename to companies;
select * from companies;

-- rename column
alter table companies
rename column id to ids;

select * from companies;

alter table companies add primary key (ids);

insert into companies values(12,'454556');
desc companies;

select * from companies;

-- creating unique column
alter table companies
add constraint regex_company_uk unique (phone);


-- changing datatype
ALTER TABLE  companies modify ids double;
desc companies;

-- change column name and datatype both 
ALTER TABLE  companies change ids newid varchar(20);
desc companies;

select * from companies;


-- drop delete and truncate m difference
--  ==> delete is DML operation , where condition is given , delete can be rollback / undo
--  ==> drop DDL delete data and table/structure both , can not undo 
--  ==> truncate DDL , drop data and structure and recreate structure , can not rollback

-- 2 highest salary from user  
use sakila;
select * from sakila.payment;

select max(amount) from payment;
select max(amount) from payment where amount<11.99;

select max(amount) from payment where amount<(select max(amount) from payment);



-- leetcode
--  select complete
--  not borring movie in aggrregate
