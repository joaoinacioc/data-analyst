/*
Aliasing
*/

SELECT Demo.EmployeeID
FROM SQLProject.dbo.EmployeeDemographics AS Demo
JOIN SQLProject.dbo.EmployeeSalary AS Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Demo.EmployeeID, Demo.FirstName, Demo.LastName, Sal.JobTitle, Ware.Age
FROM SQLProject.dbo.EmployeeDemographics Demo
LEFT JOIN SQLProject.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
LEFT JOIN SQLProject.dbo.WareHouseEmployeeDemographics Ware
	ON Demo.EmployeeID = Ware.EmployeeID

SELECT FirstName + ' ' + LastName AS FullName
FROM SQLProject.dbo.EmployeeDemographics

SELECT AVG(Age) AS AVGAge
FROM SQLProject.dbo.EmployeeDemographics