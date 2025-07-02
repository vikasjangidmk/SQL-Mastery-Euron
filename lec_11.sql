use marketing_sales;

select * from campaigns c left join leads l on c.campaign_id = l.campaign_id
union
select * from campaigns c right join leads l on c.campaign_id = l.campaign_id;

-- Full Outer Join = Left Join + Right Join
-- In the My SQL Workbench we have not Full outer Join Keyword so for this we can use union keyword

