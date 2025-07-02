use marketing_sales;

select * from products;

select * from customers c inner join orders o 
on c.customer_id = o.customer_id;

select * from customers c inner join orders o 
on c.customer_id = o.customer_id
inner join order_details od on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id;

select * from customers c inner join orders o 
on c.customer_id = o.customer_id
inner join order_details od on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id
where p.product_name = "Premium CRM";

select * from orders o inner join order_details od on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id
where p.product_name = "Premium CRM";


select * from customers where customer_id in
(select o.customer_id from orders o inner join order_details od on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id
where p.product_name = "Premium CRM");











