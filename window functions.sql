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

    -- Example 3  DENSE RANK()
    	SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    BaseRate,
    DENSE_RANK() OVER (PARTITION BY DepartmentName ORDER BY BaseRate DESC) AS DenseRank
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];

    -- Example 4 NTILE
    SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    BaseRate,
    NTILE(4) OVER (PARTITION BY DepartmentName ORDER BY BaseRate DESC) AS Quartile
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];


    -- Example LAG()
    SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    HireDate,
    LAG(HireDate, 1) OVER (PARTITION BY DepartmentName ORDER BY HireDate) AS PreviousHireDate
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];

    -- Example 6 : LEAD()
    SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    HireDate,
    LEAD(HireDate, 1) OVER (PARTITION BY DepartmentName ORDER BY HireDate) AS NextHireDate
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];

-- Example 7 : SUM() with OVER()
SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    BaseRate,
    SUM(BaseRate) OVER (PARTITION BY DepartmentName) AS TotalBaseRate
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];


-- Example 8 AVG with OVER()
SELECT 
    EmployeeKey,
    FirstName,
    LastName,
    DepartmentName,
    BaseRate,
    AVG(BaseRate) OVER (PARTITION BY DepartmentName) AS AvgBaseRate
FROM 
    [AdventureWorksDW2022].[dbo].[DimEmployee];



