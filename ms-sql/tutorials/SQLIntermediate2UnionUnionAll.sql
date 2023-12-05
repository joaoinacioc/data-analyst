/*
Union, Union All
*/

--CREATE TABLE WareHouseEmployeeDemographics
--(EmployeeID int,
--FristName varchar(50),
--LastName varchar (50),
--Age int,
--Gender varchar (50)
--)

--INSERT INTO WareHouseEmployeeDemographics VALUES
--(1050, 'Roy', 'Anderson', 31, 'Male'),
--(1051, 'Hidetoshi', 'Hasagawa', 40, 'Male'),
--(1052, 'Val', 'Johnson', 31, 'Female'),
--(1053, 'Darryl', 'Philbin', NULL, 'Male')

SELECT EmployeeID, FirstName, Age
FROM SQLProject.dbo.EmployeeDemographics
UNION
SELECT EmployeeID, JobTitle, Salary
FROM SQLProject.dbo.EmployeeSalary
ORDER BY EmployeeID

SELECT *
FROM SQLProject.dbo.EmployeeDemographics
Full Outer Join SQLProject.dbo.WareHouseEmployeeDemographics
	ON EmployeeDemographics.EmployeeID = 
		WareHouseEmployeeDemographics.EmployeeId

SELECT *
FROM SQLProject.dbo.EmployeeDemographics
UNION
SELECT *
FROM SQLProject.dbo.WareHouseEmployeeDemographics

SELECT *
FROM SQLProject.dbo.EmployeeDemographics
UNION ALL
SELECT *
FROM SQLProject.dbo.WareHouseEmployeeDemographics
ORDER BY EmployeeID