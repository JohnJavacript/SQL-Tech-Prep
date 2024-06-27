-- Example 1  row humber -- 
SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    ROW_NUMBER() OVER (PARTITION BY DepartmentName ORDER BY HireDate) AS RowNumber
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];

-- Example 2 RANK() --
	SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    BaseRate,
    RANK() OVER (PARTITION BY DepartmentName ORDER BY BaseRate DESC) AS Rank
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];