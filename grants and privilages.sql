-- permission (priveleges) 

-- types of permission: 
-- 1. Authentication
-- 2. Authorization

-- user ==> username (password)
-- create managmnent

use regex;
create user bob identified by 'bob'; 
# username@hostname

select current_user();

-- check permission
select * from mysql.user;
select * from mysql.user where user= 'bob1';

create user 'sammy' identified by 'password';
create user 'sammy'@'192.16.10.1' identified by 'password' ;

drop user 'sammy'@'192.168.10.1';
drop user 'sammy'@'192.16.10.1';
 
 
use sakila;
create table test(id int);
insert into sakila.test values(10),(20);

select * from test;
		
        
        -- grant
        
GRANT ALL privileges on sakila.test to bob;	

select * from mysql.user;
flush privileges;
show grants for 'bob';

-- remove all privileges

revoke all privileges on sakila.test from bob;
show grants for bob;

alter table sakila.test add column name1 varchar(20);
select * from sakila.test;

grant select(id) on sakila.test to bob;

show grants for 'bob';

select * from sakila.staff;
-- changing user password

flush privileges;

-- locking user
alter user 'bob' account lock;

-- to unlock
alter user 'bob' account unlock;

create role sales1;
grant select on sakila.* to sales1;

create user "aman9" identified by "aman9";

grant sales1 to bob;
flush privileges;

show grants for bob;
set default role all to bob;


-- windows function?
 -- windows vs group by function ?
 -- subquery
 -- correlated subqueries
 
 -- RDBMS, DBMS, TYPES OF DBMS 
 -- MYSQL VS SQL
 -- DATA TYPES IN SQL
 -- NORMALIZATION ==> READ