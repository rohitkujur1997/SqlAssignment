USE Assignment
GO

--1.Print the Total price of orders which have the products supplied by 'Exotic Liquids' if the price is > 50 and also print it by Shipping company's Name

SELECT SUM(UnitPrice) As Total,CompanyName 
FROM ProductTable 
GROUP BY CompanyName
having ProductSupplied ='exotic liquids' and UnitPrice >50;

--2.Display the first word of all the company name

select SUBSTRING(CompanyName,1,4) as MyFirstWord from Company;

--3.Display the employee details whose joined at first

SELECT * FROM Employee
group by DOJ
having count(*)=1

--4.Display the employee details whose joined at recently

SELECT * FROM Employee
group by DOJ
HAVING MAX(DOJ)

--5.Write a query to get most expense and least expensive Product list (name and unit price).

SELECT ProductName,MAX(UnitPrice) AS MOST_EXPENSE,
MIN(UnitPrice) AS LEAST_EXPENCE
FROM Product
GROUP BY ProductName, UnitPrice
HAVING count(unitprice)>1 

--6.Display the list of products that are out of stock

SELECT  * FROM Product
WHERE OutOfStock ='yes'

--7.Display the list of products whose unitinstock is less than unitonorder

SELECT * FROM Product
WHERE InStock < UnitsOrder

--8.Display list of categories and suppliers who supply products within those categories

SELECT Categories,Suppliers
FROM ProductTable
GROUP BY Categories,Suppliers
HAVING count(Categories)>=1 

--9.Write  query that determines the customer who has placed the maximum number of orders

SELECT * FROM Customer
where CustomerId=
(SELECT CustomerId FROM OrderTable
GROUP BY CUSTOMERID
HAVING MAX(CUSTOMERID)>0)

--10.Display the customerid whose name has substring �A�
SELECT Id FROM Customer
where FirstName Like '%A%'


