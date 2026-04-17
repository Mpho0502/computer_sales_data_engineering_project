--Create table
DROP TABLE [computer_stg].[dbo].[dim_pc]
CREATE TABLE [computer_stg].[dbo].[dim_pc](
	[PC_ID] INT IDENTITY(1,1) PRIMARY KEY,
	[PC_Make] [nvarchar](50) NOT NULL,
	[PC_Model] [nvarchar](50) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
)

--Insert values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_pc](
	[PC_Make],
	[PC_Model]
)
SELECT DISTINCT [PC_Make],
				[PC_Model]
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the PCs
SELECT *
FROM [computer_stg].[dbo].[dim_pc]