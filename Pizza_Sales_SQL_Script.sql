--CREATE DATABASE & TABLE

DROP TABLE  IF EXISTS pizza_sales;
CREATE TABLE  IF NOT EXISTS pizza_sales (
	pizza_id int,
	order_id int,
	pizza_name_id varchar(50),
	quantity int,
	order_date date,
	unit_price numeric(10,2),
	total_price numeric(10,2),
	pizza_size varchar (5),
	pizza_category varchar (50),
	pizza_ingredients text,
	pizza_name varchar(50)
);

select*from pizza_sales;

--COPYING DATA FROM SOURCE

COPY pizza_sales
FROM 'D:\Tables_for_tableau & Power BI\1-Beginner Level\02 Pizza Sales Dashboard\Datasert\pizza_sales.csv'
DELIMITER ','
CSV HEADER;

-- QUERIES

SELECT sum(total_price) as revenue
from pizza_sales;

