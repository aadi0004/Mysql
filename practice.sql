use employees;
select * from employees;
select * from dept_emp;
select * from titles where title ='Manager';

select emp_no,first_name,hire_date
 from employees where hire_date in
 ( select from_date from dept_emp 
 where emp_no=employees.emp_no) ;

-- name birthdate, empno 
select * from titles where title ='Manager';

select emp_no, first_name,birth_date from employees
where emp_no in (select emp_no from titles where emp_no=employees.emp_no and title ='Manager');

select e.emp_no, first_name,title from employees as e
join titles where 
e.emp_no =titles.emp_no and title='Manager' ;

-- emp no , firstname, for those emp where hiring date of emp is greater then 
-- the oldest date of from date column 
select * from employees;
select * from dept_emp;

select emp_no, first_name from employees
where hire_date >  any(select min(from_date) from dept_emp group by emp_no )
;

-- empno ,firstname, hiredate un emp ka who working as assitant engineer and 
-- unka hiring date < for same emp working on manager position
select * from employees;
select * from titles;

select e.emp_no,e.first_name , e.hire_date from employees e
join titles 
on e.emp_no = titles.emp_no
where titles.title='Assistant Engineer' and 
hire_date< any 
(select hire_date from employees
join titles using(emp_no) where titles.title= 'Manager' )
;

SELECT e.emp_no, e.first_name, e.hire_date
FROM employees e
JOIN titles t ON e.emp_no = t.emp_no
WHERE t.title = 'Assistant Engineer'
  AND e.hire_date < ANY (
      SELECT e2.hire_date
      FROM employees e2
      JOIN titles t2 ON e2.emp_no = t2.emp_no
      WHERE t2.title = 'Manager'
  );


-- assignments
-- views in sql 
-- uses of views
-- indexes and why they are helpful

