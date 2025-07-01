use zara;

select * from products;

select name,price from products;

select name as Productname, price as ProductPrice from products;

select * from products 
where promotion = 'yes';

select * from products 
where product_position = 'Front of Store';

select * from products 
where price > 100 ;

select * from products 
where price > 100 and promotion = 'yes';

select * from products 
where price > 100 or seasonal = 'yes';

select * from products 
where not promotion = 'yes';

select * from products 
where  promotion != 'yes';


select * from products 
where name like '%jack%';

select * from products 
where description like '%slim fit%';

select * from products 
where section in ('man','women');

select * from products 
where terms in ('shoes','jeans');

select * from products 
where price between 100 and 150;

select * from products 
where name is null;

select * from products 
where product_category is null;

select * from products 
order by price asc;

select * from products 
order by price desc;

select * from products 
products limit 4;

select * from products 
limit 10;

select * from products 
order by price asc
limit 5;

select count(*) from products;

select * from products;

select avg(price) from products;

select min(price) from products;

select max(price) from products;

select * from products;

select terms, count(*)  from products
group by terms;

SET SQL_SAFE_UPDATES = 0;

UPDATE products 
SET promotion = 'yes'  
WHERE price > 100;

SET SQL_SAFE_UPDATES = 1; -- (optional) turn it back on for safety



