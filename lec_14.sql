use marketing_sales;

select * from customers limit 5;

alter table customers add column state varchar(100);
alter table customers add column city varchar(100);

UPDATE customers SET city = 'New York', state = 'NY' WHERE customer_id = 1;
UPDATE customers SET city = 'New York', state = 'NY' WHERE customer_id = 2;
UPDATE customers SET city = 'Boston', state = 'MA' WHERE customer_id = 3;
UPDATE customers SET city = 'Chicago', state = 'IL' WHERE customer_id = 4;
UPDATE customers SET city = 'Chicago', state = 'IL' WHERE customer_id = 5;

select * from customers;

select * from customers c1
join
customers c2;


select * from customers c1 join customers c2
on c1.city = c2.city;

select * from customers c1 join customers c2
on c1.city = c2.city
and
c1.state = c2.state
and
c1.customer_id < c2.customer_id;

