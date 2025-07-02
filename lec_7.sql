use zara;

select * from products;

select * from products
where  promotion = 'yes';

select * from products
where  promotion = 'yes' and seasonal = 'yes';

select * from products
where price between 50 and 100;

select product_category, count(*) from products group by product_category;

select product_position, count(*) from products group by product_position;

select product_category, count(*) as total_product, avg(price) from products group by product_category;

select product_position, count(*) as total_product, avg(price) from products group by product_position;

select product_position, count(*) as total_position, avg (price) as acg_p,
min(sales_volume) as min_sales, max(sales_volume) as max_sales, sum(sales_volume) as total_sales
from products group by product_position;

select promotion, count(*) as count_prod_prom from products
group by promotion;

select brand , count(*) from products
group by brand;

select section, count(*) as prod_buy  from products
group by section;

select section from products group by section;

select section, sum(sales_volume) from products group by section;

select section, sum(sales_volume) as total_sales from products 
group by section
having total_sales > 100000;

select section from products
where seasonal = 'yes';

select section, count(*)as section_count from products
where seasonal = 'yes'
group by section;







