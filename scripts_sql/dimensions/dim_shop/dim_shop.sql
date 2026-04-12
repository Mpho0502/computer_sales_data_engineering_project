--Dim Shop
SELECT DISTINCT [Shop_Name]
      ,[Shop_Age]
INTO [computer_stg].[dbo].[dim_shop]
FROM [computer_stg].[dbo].[raw_pc_data]