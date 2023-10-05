-- Functions
use smartphones;

-- aggregate functions ( gives o/p based on whole column) min max sum avg count
-- scalar functions (gives o/p for each row0) ex round, upper, sqrt,etc

-- Aggregate functions( summarises a column of the dataset)

-- Find max and min price of smartphone
select max(price) from smartphones;
select min(price) from smartphones;

select max(ram_capacity) from smartphones;
select min(ram_capacity) from smartphones;

-- find the cost of costliest samsung phone
select max(price) from smartphones
where brand_name ='samsung';
-- o/p will be cost to fetch detials use the cost retrieved 
select * from smartphones
where brand_name = 'samsung' and price = 110999;


-- Find avg ratinf of apple phones
select avg(rating) from smartphones
where brand_name = 'apple'; -- 79.1095
select max(rating) from smartphones
where brand_name = 'apple'; -- 86
select min(rating) from smartphones
where brand_name = 'apple'; -- 61

-- for one plus
select avg(rating) from smartphones
where brand_name = 'oneplus'; -- 82.4045

-- avg price of apple phones
select avg(price) from smartphones
where brand_name = 'apple'; -- 90908.5238
select round(avg(price),0) from smartphones
where brand_name = 'apple'; -- 90909


-- Count find no of oneplus phones
select count(*) from smartphones
where brand_name = 'oneplus'; -- 37
select count(*) from smartphones
where brand_name = 'samsung'; -- 103

-- Count distinct Find number of brands in out dataset
select count(distinct(brand_name)) from smartphones; -- 43
select distinct(brand_name) from smartphones; -- gieves list of distinct brand names





-- Scalar functions round, absolute etc 
-- o/p will be for each row here



-- (ppi = sqrt of ht2+width2/scrren size) pixels per inch
select model,
sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size as ppi
from smartphones; -- sample values 525.9210168998101

-- round to 2 digits
select model,
round(sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size, 2) as ppi
from smartphones; -- sample values 525.92