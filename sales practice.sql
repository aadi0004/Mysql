create database sales;
use sales;
select * from sales_c;
alter table sales_c modify sales_date date;


-- 1 get all transaction done for beauty category in the month of december
select * from sales_c where categoryProduct = 'Beauty' and month(sales_date) = 12;

-- Q2 Get the total sales done for each category in each month
select categoryProduct,sum(total_sale) as total_sales ,month(sales_date) from sales_c 
group by categoryProduct, month(sales_date)
order by month(sales_date),categoryProduct;

-- Q3 find the maximum , minium , average age for people buying beauty products
select max(age) max_age,min(age) min_age ,avg(age) avg_age from sales_c where categoryProduct= 'Beauty';

-- Q4 GEt number of transaction done by each user in each category
select customer_id ,categoryProduct,count(customer_id) as 'total transaction' from sales_c 
group by customer_id , categoryProduct
order by customer_id;

select * from sales_c;

-- Q5 Find the best selling month for each year along with the average sales for each month
select max(total_sale) from sales_c group by month(sales_date), year(sales_date);

-- Q6 Get the top 3 and the bottom 3 customer based on their average sales
( SELECT customer_id, AVG(total_sale) AS avg_sales
FROM sales_c
GROUP BY customer_id
ORDER BY avg_sales DESC
LIMIT 3
 )
union all
(
	SELECT customer_id, AVG(total_sale) AS avg_sales
	FROM    sales_c
	GROUP BY   customer_id
	ORDER BY avg_sales ASC
	LIMIT 3);
    


-- Q7 Get the number of unique customer who purchased product for each category
select count(distinct(customer_id)) from sales_c 
where categoryProduct='Beauty' and categoryProduct='Clothing' and categoryProduct='Electronics'
-- group by customer_id;
;
select count(distinct(customer_id)) as customer,categoryProduct from sales_c group by categoryProduct;


select * from sales_c;

alter table sales_c modify time time;


-- Q8 how many orders are placed from morning to 1 pm 
select count(id) as 'total orders' from sales_c where sales_c.time > '07:00:00' and time < '13:00:00';

-- how many orders are placed in lunch time from 1pm to 3 pm
select count(id) as 'total orders' from sales_c where sales_c.time > '13:00:00' and time < '15:00:00';

-- how many orders are placed in evening time after 5 pm
select count(id) as 'total orders' from sales_c where sales_c.time > '17:00:00' and time < '19:00:00';


