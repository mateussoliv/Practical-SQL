/*
Today's Topic: String Functions - TRIM, LTRIM, RTRIM,
Replace, Substring, Upper, Lower
*/

--DROP Table EmployeeErrors

CREATE TABLE EmployeeErrors(
EmployeeID varchar(50),
FirstName varchar(50),
LastName varchar(50)
)

Insert into EmployeeErrors Values
('1001 ', 'Jimbo', 'Halbert'),
(' 1002', 'Pamela', 'Beasely'),
('1005', 'Toby', 'Flenderson - Fired')

Select *
From EmployeeErrors

-- Using TRIM, LTRIM, RTRIM

Select EmployeeID, TRIM(EmployeeID) as IDTRIM
FROM EmployeeErrors

-- Using Replace
Select * 
FROM EmployeeErrors

Select LastName, REPLACE(LastName, '- Fired', '') as LastNameFixed
FROM EmployeeErrors

-- Using Substring

SELECT SUBSTRING(FirstName,3,3)
FROM EmployeeErrors

SELECT err.FirstName, SUBSTRING(err.FirstName,1,3), dem.FirstName, SUBSTRING(dem.FirstName,1,3)
FROM EmployeeErrors err
JOIN EmployeeDemographics dem
	ON SUBSTRING(err.FirstName,1,3) = SUBSTRING(dem.FirstName,1,3)

-- Gender
-- LastName
-- Age
-- DOB


-- Using UPPER and Lower
SELECT FirstName, LOWER (FirstName)
FROM EmployeeErrors

SELECT FirstName, UPPER(FirstName)
FROM EmployeeErrors


