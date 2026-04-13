--Dim Sales Person
SELECT DISTINCT  [Sales_Person_Name]
                ,[Sales_Person_Department]
INTO [computer_stg].[dbo].[dim_sales_person]
FROM [computer_stg].[dbo].[raw_pc_data]