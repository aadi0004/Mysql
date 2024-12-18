-- TCL ==> Transaction control language

-- Transaction =>  Any logical task
-- ddl , dml, dcl command

-- dml task / start transaction =>> transaction start 
-- ddl/ dcl / commit rollaback 	=>> Transcation end

select @@autocommit;
use regex;
create table tushar (id int); 
insert into tushar values (23);
select * from tushar;

-- seting autocommit to 0

set @@autocommit=0;
select @@autocommit;

-- only show data but not saved everywhere 
insert into tushar values (89);
select * from tushar;

-- to save pending taskes
commit;

-- undo all pending task
insert into tushar values (84);
select * from tushar;
rollback;

-- if use DDL command in between then all pending commands will be saved

insert into tushar values (1221);
delete from tushar where id=23;
create table xyzz (id int);
select * from tushar;
rollback;

-- now all records is saved can not rollback


-- savepoint
insert into tushar values (43378);
savepoint regex_insert;
delete from tushar where id=89;

select * from tushar;
rollback to regex_insert;