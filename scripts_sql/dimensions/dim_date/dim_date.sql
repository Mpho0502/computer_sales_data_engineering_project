--Dim Date
SELECT DISTINCT [Purchase_Date]
               ,[Ship_Date]
INTO [computer_stg].[dbo].[dim_date]
FROM [computer_stg].[dbo].[raw_pc_data]