use marketing_sales;

select * from customers c left join orders o 
on c.customer_id = o.customer_id;

select * from customers;

select * from products p left join order_details od 
on p.product_id = od.product_id;

select * from campaigns c left join leads l on 
c.campaign_id = l.campaign_id;

select * from campaigns c right join leads l on 
c.campaign_id = l.campaign_id;

select * from  leads l right join campaigns c on 
c.campaign_id = l.campaign_id;


