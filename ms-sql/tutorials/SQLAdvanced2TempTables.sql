/*
Temp Tables
*/

CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitlbe varchar(100),
Salary varchar(100)
)

SELECT *
FROM #temp_Employee

INSERT INTO #temp_Employee VALUES
(1001, 'HR', '45000')

INSERT INTO #temp_Employee
SELECT *
FROM SQLProject.dbo.EmployeeSalary


DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #temp_Employee2 (
JobTitle varchar(50),
EmployeePerJob int,
AvgAge int,
AvgSalary int)

INSERT INTO #temp_Employee2
SELECT JobTitle, COUNT(JobTitle), AVG(Age), AVG(Salary)
FROM SQLProject..EmployeeDemographics emp
JOIN SQLProject..EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
GROUP BY JobTitle

SELECT *
FROM #temp_Employee2
