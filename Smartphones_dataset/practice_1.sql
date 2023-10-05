create database smartphones;
use smartphones;
-- Imported data from a csv sheet

select count(*) from smartphones;

-- Selecting specific columns (filtering columns)
select brand_name, model, os from smartphones;

-- Alias/ renaming columns in output
select brand_name as Brand, os as OS from smartphones;




-- Calculating mathematic expressions 

-- (ppi = sqrt of ht2+width2/scrren size) pixels per inch
select model,
sqrt(resolution_width*resolution_width+resolution_height*resolution_height)/screen_size as ppi
from smartphones;

-- Rating by 10 instead of 100
select model, rating/10 as Rating
from smartphones;



-- Adding a CONSTANT new column to whole dataset for readabalility
-- ex adding a smaartphone column to each output
select model, rating/10 as Rating, 'Smart Phone' as 'Type'
from smartphones;


-- Unnique values from the dataset
-- Fetchig all barndnames
select distinct(brand_name) as 'All Brands'
from smartphones;

-- Different OS
select distinct(os) as 'OS' 
from smartphones;

-- Processors
select distinct(processor_brand) as 'Processors' 
from smartphones;



-- Combinations of elements

-- Unique brand x processor names
select distinct brand_name,processor_brand 
from smartphones; -- All possible combos





-- WHERE clause ( Filteirng rows)
-- Fetch all samsung phones

select * from smartphones
where brand_name = 'samsung';

-- Price > 50000
select * from smartphones
where price >= 50000;

-- Between 15000 and 40000

select * from smartphones
where price > 15000 and  price < 40000;

select * from smartphones
where price between 15000 and 40000;

-- Price >40k and rating >80

select * from smartphones 
where price >40000 and rating > 80;

-- All samsung phones with ram >6 gb
select * from smartphones
where ram_capacity > 6 and brand_name ='samsung';

-- All samsung phones with snapdragon
select * from smartphones
where processor_brand ='snapdragon' and brand_name ='samsung';

-- Names of brands who manufacture phones > 50000
select distinct( brand_name)
from smartphones 
where price>50000;

-- In and Not In
-- Finding elements of a desired list
-- Lets say filter out phones where processor is either of snapdragon or exynos

select * from smartphones
where processor_brand ='snapdragon' or processor_brand = 'exynos'; -- simple way

-- Efficietn mwthod using in/not in
select * from smartphones
where processor_brand in ('snapdragon' , 'exynos');

-- Not in does the opposite
select * from smartphones
where processor_brand not in ('snapdragon' , 'exynos');

-- UPDATE 
select * from smartphones
where processor_brand = 'dimensity';

-- We ant to replace dimensity by mediatek
 update smartphones
 set processor_brand = 'mediatek'
 where processor_brand = 'dimensity';
 
select * from smartphones
where processor_brand = 'mediatek';