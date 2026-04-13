--Dim Storage
SELECT DISTINCT [Storage_Type]
                ,[RAM]
                ,[Storage_Capacity]
INTO [computer_stg].[dbo].[dim_storage]
FROM [computer_stg].[dbo].[raw_pc_data]

--Inserting storage ID column
DROP TABLE [computer_stg].[dbo].[dim_storage]
CREATE TABLE [computer_stg].[dbo].[dim_storage](
	[StorageID] INT IDENTITY(1,1) PRIMARY KEY,
	[Storage_Type] [nvarchar](50) NOT NULL,
	[RAM] [nvarchar](50) NOT NULL,
	[Storage_Capacity] [nvarchar](50) NOT NULL
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