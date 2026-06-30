

-- 1. Who is The senioor most employee based on job title ?

select * from employee
order by levels desc
limit 1

-- 2. Which countries have the most Invoices ?

select count(*) as c, billing_country 
from invoice
group by billing_country
order by c desc;

3. What are top 3 values of total invoices ?

select total as top_Invoices
from invoice
order by total desc
limit 3

-- 4. Which city has the best customers? we would like to throw a promotional music Festival in 
-- 	city we made the most money. Write a query that returns one cityr that has the highest sum of invoices totals.
-- 	Return both the city name ans sum of all invoice totals

select sum(total) as invoice_total, billing_city 
from invoice
group by billing_city 
order by invoice_total desc
limit 10

-- 5. who is the best customer? The customer who has spent the most money will be declared the best 
-- 	customer. write a query that reutrns the person who has spend the most money .

select customer.customer_id, customer.first_name, customer.last_name, sum(invoice.total) as total
from customer
join invoice on customer.customer_id = invoice.customer_id
group by customer.customer_id
order by total desc
limit 1

