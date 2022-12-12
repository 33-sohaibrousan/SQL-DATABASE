create database  task1;

CREATE TABLE customers (
    PersonID int,
	FirstName varchar(255),
    LastName varchar(255),
    Address varchar(255),
    City varchar(255)
);
create table orders(
id int,
account_id int,
standard_qty int
);
create table Products(
id int,
name_product varchar,
region_id int
);
create table Employees(
id int,
account_id int,
region_id int,
email varchar,
age int
);
