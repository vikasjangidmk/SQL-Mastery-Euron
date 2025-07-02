use marketing_sales;


select c.customer_name,o.order_id,o.order_date ,od.quantity ,od.unit_price,p.product_name
from customers c inner join orders o on c.customer_id=o.customer_id
inner join order_details od  on o.order_id = od.order_id
inner join products p on od.product_id = p.product_id;

SELECT c.campaign_name, l.lead_name, l.status,
       o.order_id, o.order_date, o.total_amount
FROM campaigns c
LEFT JOIN leads l ON c.campaign_id = l.campaign_id
LEFT JOIN orders o ON c.campaign_id = o.campaign_id;


