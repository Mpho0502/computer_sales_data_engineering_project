--create table
DROP TABLE [computer_stg].[dbo].[dim_storage]
CREATE TABLE [computer_stg].[dbo].[dim_storage](
	[StorageID] INT IDENTITY(1,1) PRIMARY KEY,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE()
)

--Insert values into the table from raw data
INSERT INTO [computer_stg].[dbo].[dim_storage](
	[Storage_Type],
	[RAM],
	[Storage_Capacity]
)
SELECT DISTINCT [Storage_Type],
				[RAM],
				[Storage_Capacity]
FROM [computer_stg].[dbo].[raw_pc_data]

--Show all the storage insight
SELECT *
FROM [computer_stg].[dbo].[dim_storage]