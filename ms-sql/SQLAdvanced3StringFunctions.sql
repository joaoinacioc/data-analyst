/*
String Functions - TRIM, LTRIM, RTRIM, Replace, Substring, Upper, Lower
*/

--DROP TABLE EmployeeErrors;

CREATE TABLE EmployeeErrors (
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

INSERT INTO EmployeeErrors VALUES
('1001  ', 'Jimbo', 'Halbert'),
('  1002', 'Pamela', 'Beasely'),
('1005', 'Toby', 'Flenderson - Fired')

SELECT *
FROM EmployeeErrors

-- Using TRIM (remove blank spaces from left and right side),
--LTRIM, RTRIM

SELECT EmployeeID, TRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, LTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

SELECT EmployeeID, RTRIM(EmployeeID) AS IDTRIM
FROM EmployeeErrors

-- Using Replace

SELECT *
FROM EmployeeErrors

SELECT LastName, REPLACE(LastName, '- Fired', '') AS LastNameFixed
FROM EmployeeErrors

-- Using Substring

SELECT FirstName
FROM EmployeeErrors

--              starts here1, ends here
SELECT SUBSTRING(FirstName,1,3)
FROM EmployeeErrors

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT SUBSTRING(err.FirstName,1,3), SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

-- Using Upper and Lower

SELECT FirstName, LOWER(FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors