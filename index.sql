use regex;
drop table employees;
CREATE TABLE employees (
    employee_id int,
    first_name varchar(50),
    last_name varchar(50),
    device_serial varchar(15),
    salary int
);
INSERT INTO employees VALUES
    (1, 'John', 'Smith', 'ABC123', 60000),
    (2, 'Jane', 'Doe', 'DEF456', 65000),
    (3, 'Bob', 'Johnson', 'GHI789', 70000),
    (4, 'Sally', 'Fields', 'JKL012', 75000),
    (5, 'Michael', 'Smith', 'MNO345', 80000),
    (6, 'Emily', 'Jones', 'PQR678', 85000),
    (7, 'David', 'Williams', 'STU901', 90000),
    (8, 'Sarah', 'Johnson', 'VWX234', 95000),
    (9, 'James', 'Brown', 'YZA567', 100000),
    (10, 'Emma', 'Miller', 'BCD890', 105000),
    (11, 'William', 'Davis', 'EFG123', 110000),
    (12, 'Olivia', 'Garcia', 'HIJ456', 115000),
    (13, 'Christopher', 'Rodriguez', 'KLM789', 120000),
    (14, 'Isabella', 'Wilson', 'NOP012', 125000),
    (15, 'Matthew', 'Martinez', 'QRS345', 130000),
    (16, 'Sophia', 'Anderson', 'TUV678', 135000),
    (17, 'Daniel', 'Smith', 'WXY901', 140000),
    (18, 'Mia', 'Thomas', 'ZAB234', 145000),
    (19, 'Joseph', 'Hernandez', 'CDE567', 150000),
    (20, 'Abigail', 'Smith', 'FGH890', 155000);
    
    
select * from employees;

explain select * from employees where salary= 100000;

create index emp_sal on employees(salary);
desc employees;
explain select * from employees where salary= 100000;

show indexes from employees;

drop index emp_sal on employees;

-- two index 
create index emp_sal_f on employees(salary,first_name);


explain select * from employees where salary < 90000;
explain select * from employees where salary= 900000 and first_name = 'james'

-- what is the diff b/w clustred index and non clustred index