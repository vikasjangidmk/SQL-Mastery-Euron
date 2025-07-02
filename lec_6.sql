use zara;

select * from products;

select product_id, promotion, url,sku from products;

select product_id as id, promotion as pr, url,sku as s from products;

select name, price from products
order by price asc;

select name, price from products
order by price desc;

select * from products limit 5;

select * from products limit 5 offset 3;

select name, price , price * .90 as discounted_price from products;

select brand, name, concat(name, '-', brand) as combined_name from products;

