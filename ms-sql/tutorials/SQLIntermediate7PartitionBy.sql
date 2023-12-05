/*
Partition By
*/

SELECT FirstName, LastName, Gender, Salary,
COUNT(Gender) OVER (PARTITION BY Gender) AS TotalGender
FROM SQLProject.dbo.EmployeeDemographics Demo
JOIN SQLProject.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID

SELECT Gender, COUNT(Gender)
FROM SQLProject.dbo.EmployeeDemographics Demo
JOIN SQLProject.dbo.EmployeeSalary Sal
	ON Demo.EmployeeID = Sal.EmployeeID
	GROUP BY Gender