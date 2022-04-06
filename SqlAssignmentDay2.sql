/*Assignment Day2*/
--Using Assignment database
use Assignment;

/*1.Display the details from Customer table who is from country India*/
--Create Customer table with id as Primary Key
SELECT *
FROM Customer c
WHERE c.Country = 'India';

/*2.Display the  full name of the employee*/
--insert records in Customer table
SELECT c.FirstName+' '+c.LastName as FullName
FROM Customer c;

/*3.Display the  customer details  who has Fax number*/

IF COL_LENGTH('Customer','Fax') IS NOT NULL
    SELECT * FROM Customer

/*4.display the customer details whose name holds second letter as U*/
--Alter Order table so that it would not accept null value
select concat(c.FirstName,' ',c.LastName) as [FullName]
from customer c
where c.FirstName like '_a%';

/*5.select order Details where unit price is greater than 10 and less than 20*/
select * 
from [Order] O
right join OrderItem OI
On OI.Id=O.Id
where UnitPrice 
between 2000 and 4000;

/*6.Display order details which contains shipping date and arrange the order by date*/
select * 
from [order]
Order By OrderDate;

/*7.Print the orders shipped by ship name 'La corned'abondance' between 2 dates(Choose dates of your choice)*/


/*8.Print the products supplied by 'Poly bags'*/
select * 
from Product
where Package='Poly bags';

/*9.print the average quantity ordered for every product*/
select avg(quntity)
from OrderItem;

/*10.Print all the Shipping company name and the ship names if they are operational*/

/*11.Print all Employees with Manager Name*/

/*12.Print the bill for a given order id .bill should contain Productname, Categoryname,price after discount*/

/*13.Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name*/


