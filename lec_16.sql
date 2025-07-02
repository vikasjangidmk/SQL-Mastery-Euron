-- Create the database
CREATE DATABASE Customer;

-- Use the database
USE customer;

-- Create the table
CREATE TABLE customers (
    customer_id INT PRIMARY KEY,
    name VARCHAR(100),
    city VARCHAR(50),
    country VARCHAR(50),
    age INT,
    total_spent DECIMAL(10, 2)
);

-- Insert data into the table
INSERT INTO customers (customer_id, name, city, country, age, total_spent) VALUES
(1, 'Alice', 'Delhi', 'India', 28, 1200.50),
(2, 'Bob', 'Mumbai', 'India', 35, 2200.00),
(3, 'Charlie', 'Bangalore', 'India', 30, 1800.75),
(4, 'David', 'New York', 'USA', 40, 3000.00),
(5, 'Eva', 'Los Angeles', 'USA', 45, 4500.20),
(6, 'Frank', 'Berlin', 'Germany', 38, 2100.90),
(7, 'Grace', 'Munich', 'Germany', 25, 800.00);

select * from customers;



select avg(age) as avg_age from customers;


with avg_age_cte as (
select avg(age) as avg_age from customers)
select name, age from customers join avg_age_cte on customers.age > avg_age_cte.avg_age;

WITH top_five_cte AS (
    SELECT * 
    FROM customers 
    ORDER BY total_spent DESC 
    LIMIT 5
)
SELECT * FROM top_five_cte;


with country_count as (
select country, count(*) as total_cust from customers group by country)
select * from country_count;


