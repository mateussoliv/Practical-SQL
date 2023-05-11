/*
Today's Topic: Temp Tables

*/


CREATE TABLE #temp_Employee (
EmployeeID int,
JobTitle varchar(100),
Salary int)

SELECT *
FROM #temp_Employee


INSERT INTO #temp_Employee
VALUES(
'1001', 'HR','45000'
)

INSERT INTO #temp_Employee
SELECT *
FROM [SQL Tutorial].dbo.EmployeeSalary

DROP TABLE IF EXISTS #temp_Employee2
CREATE TABLE #Temp_Employee2 (
JobTitle varchar(50),
EmployeesPerJob int,
AvgAge int,
AvgSalary int,)

INSERT INTO #Temp_Employee2
SELECT JobTitle, Count(JobTitle), Avg(Age), Avg(Salary)
FROM [SQL Tutorial].dbo.EmployeeDemographics emp
JOIN [SQL Tutorial].dbo.EmployeeSalary sal
	ON emp.EmployeeID = sal.EmployeeID
Group by JobTitle

SELECT *
FROM #Temp_Employee2


