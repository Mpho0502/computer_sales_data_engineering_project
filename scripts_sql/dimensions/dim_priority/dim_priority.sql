--Dim Priority
SELECT DISTINCT [Priority]
INTO [computer_stg].[dbo].[dim_priority]
FROM [computer_stg].[dbo].[raw_pc_data]