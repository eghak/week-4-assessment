-- ARTIST TABLE
-- Add 3 new artists to the artist table using INSERT. (It’s already created.)
insert into artist (name)
values ('John Adams'),
('Steve Reich'),
('John Cage');

-- Select 5 artists in alphabetical order.
Select * from artist
order by name asc limit 5;


-- EMPLOYEE TABLE
-- List all employee first and last names only that live in Calgary.
select last_name, first_name, city from employee
where city = 'Calgary'; 

-- Find everyone that reports to Nancy Edwards (Use the ReportsTo column). You will need to query the employee table to find the Id for Nancy Edwards
select employee_id from employee
where first_name = 'Nancy' and last_name = 'Edwards';

select * from employee
where reports_to = 2;

-- Count how many people live in Lethbridge.
select * from employee
where city = 'Lethbridge';


-- INVOICE TABLE
-- Count how many orders were made from the USA.
select count ('USA') from invoice;

-- Find the largest order total amount.
select max(total) from invoice;

-- Find the smallest order total amount.
select min(total) from invoice;

-- Find all orders bigger than $5.

select * from invoice
where total > 5;

-- Count how many orders were smaller than $5.
select count (total) from invoice
where total < 5;

-- Get the total sum of the orders.
select sum(total) from invoice


-- JOIN QUERIES (VARIOUS TABLES)
-- Get all invoices where the unit_price on the invoice_line is greater than $0.99.
select i.invoice_id, il.unit_price
from invoice i
join invoice_line il
on i.invoice_id = il.invoice_id
where il.unit_price > 0.99;

-- Get the invoice_date, customer first_name and last_name, and total from all invoices.
select i.invoice_date, c.first_name, c.last_name, i.total
from invoice i
join customer c
on i.customer_id = c.customer_id;


-- Get the customer first_name and last_name and the support rep’s first_name and last_name from all customers. Note that support reps are on the employee table.
select c.first_name, c.last_name, e.first_name AS support_first, e.last_name AS support_last
from customer c
join employee e
on c.customer_id = e.employee_id
where e.title = 'Slaes Support Agent'

-- Get the album title and the artist name from all albums.
select al.title, ar.name
from album al
join artist ar
on al.artist_id = ar.artist_id;

-- Make sure to add and commit your SQL file to the respository for this assessment on Github.