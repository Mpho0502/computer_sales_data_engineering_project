--Dim PC
SELECT DISTINCT [PC_Make]
                ,[PC_Model]
INTO [computer_stg].[dbo].[dim_pc]
FROM [computer_stg].[dbo].[raw_pc_data]