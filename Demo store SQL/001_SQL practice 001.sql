create database practice_1;
use practice_1;

CREATE TABLE `customer` 
(
  `customer_id` INT NOT NULL,
  `cust_name` VARCHAR(45) NOT NULL,
  `age` INT NOT NULL,
  `city` CHAR(30) NULL,
  `salary` INT NULL,
  PRIMARY KEY (`customer_id`)
  );


-- inserting values in Tables
INSERT INTO customer
(customer_id , cust_name , age, city, salary)
VALUES
(1, 'Sam', 26, 'Delhi', 9000);
INSERT INTO customer
(customer_id , cust_name , age, city, salary)
VALUES
(2, 'Ram', 19, 'Bangalore', 11000),
(3, 'Pam', 31, 'Mumbai', 6000),
(4, 'Jam', 42, 'Pune', 10000);


-- Update a row
update customer
set cust_name = 'Xam',  age = 32
where customer_id = 4;


-- Alter tables
alter table customer
add column test int;

show columns from customer;

alter table customer
drop column test ;
show columns from customer;

alter table customer
modify column city varchar(45);

-- Delete a row in Db
delete from customer
where customer_id = 3;
select * from customer;


-- Deletiing a table drop deletes whole table/ Truncate empties the table same syntax.
create table dummy 
(
col_1 int not null,
col_2 float,
col_3 int, 
primary key (col_1)
) ;

create table dummy_2 
(
col_1 int not null primary key,
col_2 float,
col_3 int
) ;

 drop table dummy_2;


-- Creating a dummy table for further practice
CREATE TABLE classroom
(
rollno
int8 PRIMARY KEY,
name_ varchar(50)
NOT NULL,
house char(12)
NOT NULL,
grade char(1)
);
INSERT INTO classroom
(rollno , name_, house, grade)
VALUES
(01 , 'Rahul', 'Earth', 'B'),
(02, 'Sara', 'Water', 'A'),
(03, 'Tom', 'Fire', 'C'),
(04, 'Kate', 'Air', 'A'),
(05, 'Jake', 'Earth', 'B'),
(06, 'Emma', 'Water', 'A'),
(07, 'John', 'Fire', 'C'),
(08, 'Lily', 'Air', 'A'),
(09, 'Mark', 'Earth', 'B'),
(10, 'Mia', 'Water', 'A'),
(11, 'David', 'Fire', 'C'),
(12, 'Sophie', 'Air', 'A'),
(13, 'Mike', 'Earth', 'B'),
(14, 'Emily', 'Water', 'A'),
(15, 'Adam', 'Fire', 'C'),
(16, 'Olivia', 'Air', 'A');

select * from classroom;

select distinct house from classroom;


select * from classroom
where house = 'Air';


select name_ from classroom 
where grade ='A';

select name_ , house from classroom 
where grade ='A';


-- Order by
select * from classroom
where grade = 'B'
order by name_ desc
limit 3;

