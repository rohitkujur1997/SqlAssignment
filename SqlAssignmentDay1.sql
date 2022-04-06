/*Assignment Day1*/

/*1.Desgin the above database with following table by applying Primary key and Foreign key*/
--Create new database using it
use Assignment;
--Create Customer table with id as Primary Key
Create table Customer(
Id int Primary key,
FirstName nvarchar(40),
LastName nvarchar(40),
City nvarchar(40),
Country nvarchar(40),
Phone nvarchar(20),
);
create index IndexCustomerName on Customer(FirstName);--Creating Index for Customer table
--Create Order table with id as Primary Key, CustomerId as foreign Key
Create table [Order](
Id int Primary key,
OrderDate datetime,
OrderNumber nvarchar(10),
CustomerId int foreign key references Customer(Id),
TotalAmmount decimal(12,2)
);
create index IndexOrderCustomerId on [Order](CustomerId);--Creating index for Order table
create index IndexOrderOrderDate on [Order](OrderDate);--Creating index for Order table
--Create Product table with id as Primary Key
Create table Product(
Id int Primary key,
ProductName nvarchar(50),
UnitPrice decimal(12,2),
Package nvarchar(30),
IsDiscontinued bit
);
create index IndexProductSupplierId on Product(Id);--Creating index for Product table
create index IndexProductName on Product(ProductName);--Creating index for Product table
--Create OrderItem table with id as Primary Key, OrderId and Product as foreign Key
Create table OrderItem (
Id int Primary key,
OrderId int foreign key references [Order](Id),
ProductId int foreign key references Product(Id),
UnitPrice decimal(12,2),
Quntity int
);
create index IndexOrderItemOrderId on [OrderItem](OrderId) ;--Creating index for OrderItem table
create index IndexOrderItemProductId on [OrderItem](ProductId) ;--Creating index for OrderItem table

/*2.Insert Records in all tables*/
--insert records in Customer table
Insert into Customer 
values
(1,'Ayush','Kumar','Hyderabad','India','9823241234'),
(2,'Rohit','paul','Mumbai','India','98232112234'),
(3,'Devid','Warner','London','England','8003211223'),
(4,'Alvin','Buttler','Amalapuram','America','8693211244'),
(5,'Ishan','Azam','Hyderabad','Pakistan','8021211244'),
(6,'Hardik','Pandya','Hyderabad','India','900241234'),
(7,'Mark','wood','Pune','India','9000423432'),
(8,'Tahaseen','Fathima','Abu dabi','Dubai','8023211223'),
(9,'Komal','Namaji','Delhi','India','8133211244'),
(10,'Snehal','Rajput','Bangalore','India','8021211200');

--insert records in Order table
Insert into [Order]
values
(1,'2022-03-29 02:23:42','5464',1,4500.75),
(2,'2022-04-19 05:27:00','5023',3,4000.50),
(3,'2022-02-10 06:21:32','5784',2,3500.00),
(4,'2022-03-03 18:12:30','5469',4,5500.75),
(5,'2022-04-21 19:23:21','7856',5,4500.60),
(6,'2022-05-13 14:13:58','2922',7,4700.90),
(7,'2022-06-23 02:53:36','6545',6,300.660),
(8,'2022-03-12 11:23:42','3445',9,5000.50),
(9,'2022-04-11 12:35:43','6778',8,3000.75),
(10,'2022-04-02 13:24:47','3370',10,2000.25)



--insert records in Product table
Insert into Product
values
(1,'TV',4500.75,'Poly bags',1),
(2,'Mobile',4000.50,'Corrugated boxes',0),
(3,'Router',3500.00,'Foil sealed bags',1),
(4,'Bluetooth',5500.75,'Rigid boxes',0),
(5,'Laptop',4500.60,'Paperboard boxes',0),
(6,'Smart Tv',4700.90,'Poly bags',1),
(7,'Headset',300.60,'Chipboard',1),
(8,'AC',5000.50,'Corrugated boxes',0),
(9,'Smart Watch',3000.75,'Foil sealed bags',1),
(10,'Shoes',2000.25,'Chipboard',0);

--insert records in OrderItem table
Insert into OrderItem
values
(1,1,3,4500.75,45),
(2,3,4,4000.50,35),
(3,2,6,3500.00,30),
(4,4,2,5500.75,40),
(5,5,1,4500.60,50),
(6,7,5,4700.90,55),
(7,6,10,300.60,20),
(8,10,9,5000.50,50),
(9,8,8,3000.75,75),
(10,9,7,2000.25,70);

/*3.In Customer table FirstName Attribute should not accept null value*/
--Alter Customer table so that it would not accept null value
drop index IndexCustomerName on Customer;
ALTER TABLE Customer
ALTER COLUMN FirstName nvarchar(40) NOT NULL;

/*4.In Order table OrderDate should not accept null value*/
--Alter Order table so that it would not accept null value
drop index IndexOrderOrderDate on [Order];
ALTER TABLE [Order]
ALTER COLUMN OrderDate datetime NOT NULL;


/*5.Display all customer details*/
SELECT * FROM Customer;

/*6.write a query to display Country whose name starts with A or I*/
SELECT c.Country
FROM Customer c
WHERE c.FirstName LIKE 'A%' OR c.FirstName LIKE 'I%';

/*7.write a query to display whose name of customer whose Fourth character is i*/
SELECT c.FirstName
FROM Customer c
WHERE c.FirstName LIKE '___i%';

