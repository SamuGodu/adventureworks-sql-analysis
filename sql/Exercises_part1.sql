/*==================================================
Exercise 01
==================================================*/

SELECT TOP 10 [JobTitle] 
FROM HumanResources.Employee
WHERE Gender = 'M' 
AND
MaritalStatus != 'M';

/*==================================================
Exercise 02
==================================================*/

SELECT BusinessEntityID, Rate, RateChangeDate 
FROM HumanResources.EmployeePayHistory
WHERE Rate >= '50';

/*==================================================
Exercise 03
==================================================*/