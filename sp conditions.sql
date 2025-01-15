use sakila;


use sakila;

drop procedure create_name_list;

Delimiter $$

create procedure create_name_list()
Begin
	declare empname varchar(100) default " ";
    declare done bool default false;
    -- decalre cursor for employee name
    
    Declare cur cursor for 
    select first_name from sakila.actor where actor_id <5;
    
    
    declare continue handler 
		for not found set done = true;
    -- open cursor
    
    open cur;
    
    process_name : loop
    
		fetch cur into empname;
		if done = true then
			leave process_name;
		end if;
        select empname;
    
    end loop;
    
    close cur;
    
    end $$
DELIMITER ;

call create_name_list;

1. what is sql
2. sql lang and types
3. where and having
4. aggreagate function
5. join =>> self,left,right,full join
6. subquery > secound highest
7. corelated subquery
8. delete ,drop, truncate => difference
9. windows vs group 
	rank, dence_rank, row_number
    lag,lead
10. views
11. indexing >> benifitice
12. stored procedure
13. diff between and triggers
14. what is normalizations
 