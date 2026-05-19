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

/*==================================================
Exercise 17
==================================================*/


SELECT MIN(CurrentPayRate) AS MinPayRate,
       AVG(CurrentPayRate) AS AvgPayRate,
       MAX(CurrentPayRate) AS MaxPayRate
FROM (
        SELECT e.BusinessEntityID, e.Rate AS CurrentPayRate
        FROM HumanResources.EmployeePayHistory AS e
        WHERE e.RateChangeDate = (
                SELECT MAX(e2.RateChangeDate)
                FROM HumanResources.EmployeePayHistory AS e2
                WHERE e2.BusinessEntityID = e.BusinessEntityID
            )
) AS cpr;

/*==================================================
Exercise 18
==================================================*/

SELECT BusinessEntityID
FROM HumanResources.Employee
GROUP BY BusinessEntityID
HAVING SUM(VacationHours) > 60

UNION

SELECT BusinessEntityID
FROM HumanResources.Employee
GROUP BY BusinessEntityID
HAVING SUM(SickLeaveHours) > 60;

/*==================================================
Exercise 19
==================================================*/

SELECT e.BusinessEntityID
FROM HumanResources.Employee AS e
WHERE e.JobTitle IN ('Sales Representative', 'Tool Designer')
 
INTERSECT
 
SELECT edh.BusinessEntityID
FROM HumanResources.EmployeeDepartmentHistory AS edh
JOIN HumanResources.Department AS d
ON edh.DepartmentID = d.DepartmentID
WHERE d.Name IN ('Sales', 'Marketing');