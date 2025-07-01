SET SQL_SAFE_UPDATES = 0;

SET SQL_SAFE_UPDATES = 1; -- (optional) turn it back on for safety


select * from products
where sales_volume > 1000;

select * from products;

delete from products 
where sales_volume < 1500;


truncate table products;


select * from products;

delete from products;

