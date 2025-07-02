use marketing_sales;

-- Inner Join
select * from orders;
select * from customers;

select * from 
orders o inner join customers c 
on
o.customer_id = c.customer_id; 

select * from 
products p inner join order_details od
on
p.product_id = od. product_id;


select * from products;

select * from 
campaigns c 
inner join 
orders o 
on 
c.campaign_id = o.campaign_id;




