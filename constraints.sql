create database regex;

use regex;
create table employee(eid int, ename varchar(20) , manager_id int);

insert into employee values (10,'aman', null) , 
(20,'abhishek',30),
(30,'naina',10), (40,'abhishek',30);

select * from employee;

select e.eid, e.ename, e.manager_id, mgr.eid, mgr.ename
 from employee as e join employee as mgr 
 on e.manager_id =mgr.eid;


use sakila;

--  when column name same 
select * from orders natural join product;

use regex;
create table test (eid int);
insert into test values(200);
insert into test values(null);

select * from test;
drop table test;

						-- not null
                        
create table test (eid int not null); 
insert into test values(200);
-- insert into test values(null);

						-- unique (can add multiple null values)

create table test1 (eid int unique);
insert into test1 values(200);
insert into test1 values(null);
insert into test1 values();

select * from test1;
		
					-- default 
                    
create table test2 (eid int default 0, name varchar(20));
insert into test2(eid,name) values(200,'aman');
insert into test2(eid,name) values(null,'abhishek');
insert into test2(name) values('abhishek');
select * from test2;

			-- is null (to check null value)
            
select * from test2 where eid is null;

			-- primary key 
            
create table test3 (eid int primary key auto_increment, name varchar(20));
insert into test3(eid,name) values(200,'ashu');
insert into test3(name) values('aadi');
insert into test3(eid,name) values(null,'ashu');
select * from test3;

			-- check 
            
create table test4 (eid int check (eid>10),
 name varchar(20));
insert into test4(eid,name) values(12,'ashu');
-- insert into test4(eid,name) values(1,'aadi');

-- to find error row and name 
create table test5 (eid int, name varchar(20),
	constraint regex_test_eid_chk check (eid>10));
insert into test5(eid,name) values(12,'ashu');
-- insert into test5(eid,name) values(5,'ashu');

drop table test5;
create table test6 (eid int, name varchar(20),
	constraint regex_test_eid_chk check (eid>10), 
    constraint regex_name_uk unique(name));
insert into test5(eid,name) values(12,'ashu');

