create database task2;
CREATE TABLE customers (
    CustomerID int IDENTITY(1,1) PRIMARY KEY,
	FirstName varchar(255) NOT NULL,
    LastName varchar(255),
    City varchar(255)
);
create table orders(
orderID int IDENTITY(1,1) PRIMARY KEY,
CustomerID int not null FOREIGN KEY REFERENCES customers,
 orders_qty int
);
create table Products(
product_ID int IDENTITY(1,1) PRIMARY KEY,
orderID int not null  FOREIGN KEY REFERENCES orders,
name_product varchar(255),
price int
);
select * from customers;
select * from orders;
select * from Products;


insert into customers (FirstName,LastName,City)
values('sohaib','alrousan','irbid'),
('ahmad','odat','irbid');

insert into orders(CustomerID,orders_qty)
values(1,2),(1,5),(2,4),(2,8);

insert into Products (orderID,name_product,price)
values(1,'lego',30),(2,'bread',0.50);

--drop table Products;

 select *
 from customers
 join orders on customers.CustomerID =orders.orderID
 join Products on orders.orderID=Products.product_ID;

 select customers.FirstName,orders.orders_qty
 from customers
 Full outer join orders on customers.CustomerID=orders.orderID