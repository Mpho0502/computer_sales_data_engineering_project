--Dim Storage
SELECT DISTINCT [Storage_Type]
                ,[RAM]
                ,[Storage_Capacity]
INTO [computer_stg].[dbo].[dim_storage]
FROM [computer_stg].[dbo].[raw_pc_data]