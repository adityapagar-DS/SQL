create database company_db;
use company_db;

create table customers (
customerNumber int primary key,
customerName varchar(100),
country varchar(50),
creditLimit decimal(10,2)
);

create table products (
productCode varchar(20) primary key,
ProductName varchar(50),
ProductLine varchar(50),
buyprice decimal(10,2)
);

create table orders (
OrderNumber int primary key,
CustomerNumber int,
OrderDate date,
Status varchar(20)
);

create table orderdetails (
orderNumber int,
productCode varchar(50),
quantityOrdered int,
priceEach decimal(10,2),
primary key (orderNumber, productcode),
foreign key (orderNumber) references orders(ordernumber),
foreign key (productCode) references products(productCode)
);


insert into customers values
(1,'Aditya Traders','India',120000),
(2,'Global Corp','USA',85000),
(3,'Euro Auto','Germany',50000),
(4,'Classic Cars Co','UK',25000);

insert into products values
('P1','Mustang 1965','Classic Cars',55.00),
('P2','BMW Bike 2020','Motorcycles',75.00),
('P3','Vintage Mercedes','Vintage Cars',60.00);

insert into orders values
(101,1,'2025-08-01','Shipped'),
(102,2,'2025-08-05','On Hold'),
(103,3,'2025-08-10','Shipped');

insert into orderdetails values
(101,'P1',5,60.00),
(101,'P2',2,80.00),
(102,'P3',1,65.00),
(103,'P1',3,60.00);

