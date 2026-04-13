--Dim Channel
SELECT DISTINCT [Channel]
INTO [computer_stg].[dbo].[dim_channel]
FROM [computer_stg].[dbo].[raw_pc_data]