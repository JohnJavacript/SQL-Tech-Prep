-- row humber -- 
SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    ROW_NUMBER() OVER (PARTITION BY DepartmentName ORDER BY HireDate) AS RowNumber
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];
