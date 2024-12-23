use sakila;

create table employees(id int primary key auto_increment,
dept varchar(20), salary int);

insert into employees(dept,salary) values
('hr',300),('hr',100),
('marketing',70),('marketing',50),
('marketing',200), ('marketing',400),('marketing',200),
('marketing',600),
('dsa',150),('dsa',120),('dsa',50),('dsa',500),('dsa',90);

select * from employees;

-- window functions
-- aggregating ==>  calculations
-- har ek row k sath dikhenge

select sum(salary) from employees;

select * , (select sum(salary) from employees) from employees;

select * ,
 sum(salary) over() from employees;
 
select * ,
 sum(salary) over(partition by dept) from employees; 

select * ,
 sum(salary) over(order by salary) from employees;
 
 select * ,
 sum(salary) over(partition by dept order by salary) from employees;

select * ,
 rank() over(order by salary desc) from employees;
 
 select * ,
 rank() over(order by salary desc) ,
 dense_rank() over(order by salary desc)
 from employees;


select *,
 rank() over(order by salary desc),
  dense_rank() over(order by salary desc)  ,
  row_number() over(order by salary desc)
from employees;

select *, lead(salary,1) over() from employees;

select *, lead(salary,1) 
over(partition by dept) from employees;

select *, lead(salary,2,300) 
over(partition by dept) from employees;

select dept,salary, sum(salary) over (order by salary) from employees;

select *, 
rank() over(order by salary desc) as sal from employees
limit 2,1;
-- 2 skipeed and 3 selected