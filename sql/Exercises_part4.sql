/*==================================================
Exercise 16
==================================================*/

SELECT eph.BusinessEntityID, eph.Rate as Rates
FROM HumanResources.EmployeePayHistory eph
WHERE eph.RateChangeDate = (
	SELECT MAX(e2.RateChangeDate)
	FROM HumanResources.EmployeePayHistory as e2
	WHERE e2.BusinessEntityID = eph.BusinessEntityID
	)
ORDER BY eph.BusinessEntityID;