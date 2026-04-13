--Dim PC
SELECT DISTINCT [PC_Make]
                ,[PC_Model]
INTO [computer_stg].[dbo].[dim_pc]
FROM [computer_stg].[dbo].[raw_pc_data]

--Insert pc ID column
DROP TABLE [computer_stg].[dbo].[dim_pc]
CREATE TABLE [computer_stg].[dbo].[dim_pc](
	[PC_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL
)