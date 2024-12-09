-- functions

-- string functions

use sakila;
select * from actor;

-- concat, concat_ws, substr, lpad , trim

select concat("Mr ",first_name,' ' ,last_name) from actor;

-- automatic takes space
select concat_ws(" ", "Mr ",first_name,last_name) from actor;

-- data from secound values

select first_name, substr(first_name,2) from actor;

-- only three char from 2 char
select first_name, substr(first_name,2,3) from actor;

-- negative
select first_name, substr(first_name,-2) from actor;

-- to check position of char
select first_name, instr(first_name,'L') from actor;

-- searching position
select first_name, locate('E', first_name) from actor;

-- searching position from a range
select first_name, locate('e',first_name,3) from actor;

-- finding length only for english 
select first_name, length(first_name) from actor;

-- finding length 
select first_name, char_length(first_name) from actor;


-- dummy (dual table)
select 10+2 from dual;
select "  hello   " from dual;

-- removing whitespace from start and last
select trim("  hello   ") from dual;
-- removing whitespace from start and last but not from middle

select trim("  hel  lo   ") from dual;

-- removing whitespace only from last
select trim(trailing ' ' from " hello   ") from dual;

-- removing specific char from last
select trim(trailing 'l' from " hello xll") from dual;

-- lpad , rpad
-- find fix length or add to make fix length
-- lpad for left side add and rpad for right side add 
select first_name, lpad(first_name,6,'@') from actor;

select first_name, rpad(first_name,6,'@') from actor;


-- numeric functions

# round, truncate, floor, mod, pow, ceil

select round(12.6) from dual;

-- round off from decimal num
select round(12.64231) from dual;
select round(12.6423,2) from dual;

-- rounding before decimal point 
select round(12.6423,-1) from dual;
select round(66.6423,-1) from dual;

-- first digit work convert to 0 or 100
select round(66.6423,-2) from dual;

select round(662.6423,-3) from dual;

-- truncate
select truncate(66.6423,1) from dual;
select truncate(66.6423,2) from dual;

select truncate(66.6423,-1) from dual;

-- floor
select floor(10.999), ceil(10.911) from dual;


-- basis gate function
-- what is groupby 
-- what are advantage and disadvantages of using rdbms
-- 



