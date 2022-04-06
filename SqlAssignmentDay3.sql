USE Assignment
GO
/*1.write a query to display the orders placed by customer with phone number 98232112234*/

SELECT * FROM Customer
WHERE Phone ='98232112234'

/*2.fetching all the products which are available under Category ‘Seafood’.*/

SELECT * FROM Product
WHERE CATEGORY ='SeaFood'-- it is giving error because there is no category column in product table

/*3.Display the orders placed by customers not in London*/

SELECT * FROM Customer
WHERE City NOT IN('LONDON')

/*4.selects all the order which are placed for the product Chai.*/

SELECT * FROM Product
WHERE ProductName ='CHAI'

/*5.Write a query to display the name , department name and rating  of any given employee*/

SELECT E.NAME AS EMP_NAME , D.DeptName AS DEPT_NAME,E.RATING
FROM Employee E INNER JOIN Dept D
ON E.DEPTID=D.DEPTID-- it is giving error because there is no name , department name and rating column in employee table
