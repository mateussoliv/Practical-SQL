/****** Script do comando SelectTopNRows de SSMS  ******/
--SELECT TOP (1000) [EmployeeID]
--      ,[FirstName]
--      ,[LastName]
--      ,[Age]
--      ,[Gender]
--  FROM [SQL Tutorial].[dbo].[EmployeeDemographics]

SELECT *
FROM EmployeeDemographics
ORDER BY Age DESC, Gender DESC

--SELECT Gender, COUNT(Gender) AS CountGender
--FROM EmployeeDemographics
--WHERE age > 31
--GROUP BY Gender
--ORDER BY CountGender ASC