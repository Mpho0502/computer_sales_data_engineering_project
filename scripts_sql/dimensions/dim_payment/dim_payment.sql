--Dim Payment
SELECT DISTINCT [Payment_Method]
INTO [computer_stg].[dbo].[dim_payment]
FROM [computer_stg].[dbo].[raw_pc_data]