/*
WHERE Statement
=, <>, <, >, And, Or, Like, Null, Not Null, In
*/

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName = 'Jim'

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName <> 'Jim'
-- <> means different

--SELECT *
--FROM EmployeeDemographics
--WHERE Age >= 30

--SELECT *
--FROM EmployeeDemographics
--WHERE Age <= 32 AND Gender = 'Male'

--SELECT *
--FROM EmployeeDemographics
--WHERE LastName LIKE 'S%c%ott%'
-- S% means "starts with", %S% means "it's in anywhere"

--SELECT *
--FROM EmployeeDemographics
--WHERE FirstName is NOT NULL

SELECT *
FROM EmployeeDemographics
WHERE FirstName IN ('Jim', 'Michael')