-- Cleansed DIM_DataTable --
SELECT 
  [DateKey], 
  [FullDateAlternateKey] As Date,
  -- ,[DayNumberOfWeek],
  [EnglishDayNameOfWeek] As Day,
  -- ,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  --,[DayNumberOfYear]
  --,[WeekNumberOfYear]
  [EnglishMonthName]  As Month,
  LEFT([EnglishMonthName],3) As MonthShort,
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName]
  [MonthNumberOfYear] As MonthNo,
  [CalendarQuarter] as Quarter,
  [CalendarYear] as Year
  -- ,[CalendarSemester]
  -- ,[FiscalQuarter]
  -- ,[FiscalYear]
  -- ,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2019
