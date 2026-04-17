--create table
DROP TABLE [computer_stg].[dbo].[pc_sales_fact] CREATE TABLE [computer_stg].[dbo].[pc_sales_fact](
	[SalesID] INT IDENTITY(1, 1) PRIMARY KEY,
	[LocationID] INT,
	[ShopID] INT,
	[PC_ID] INT,
	[StorageID] INT,
	[CustomerID] INT,
	[SalesPersonID] INT,
	[DateID] INT,
	[PaymentID] INT,
	[Channel_ID] INT,
	[PriorityID] INT,
	[Cost_Price] [int] NOT NULL,
	[Sale_Price] [int] NOT NULL,
	[Discount_Amount] [int] NOT NULL,
	[Finance_Amount] [nvarchar](50) NOT NULL,
	[Credit_Score] [int] NOT NULL,
	[Cost_of_Repairs] [nvarchar](50) NOT NULL,
	[Total_Sales_per_Employee] [int] NOT NULL,
	[PC_Market_Price] [int] NOT NULL,
	[Load_date] DATETIME DEFAULT GETDATE(),
	CONSTRAINT fk_LocationID foreign key (LocationID) references [computer_stg].[dbo].[dim_location] (LocationID),
	CONSTRAINT fk_ShopID foreign key (ShopID) references [computer_stg].[dbo].[dim_shop] (ShopID),
	CONSTRAINT fk_PC_ID foreign key (PC_ID) references [computer_stg].[dbo].[dim_pc] (PC_ID),
	CONSTRAINT fk_StorageID foreign key (StorageID) references [computer_stg].[dbo].[dim_storage] (StorageID),
	CONSTRAINT fk_CustomerID foreign key (CustomerID) references [computer_stg].[dbo].[dim_customer] (CustomerID),
	CONSTRAINT fk_SalesPersonID foreign key (SalesPersonID) references [computer_stg].[dbo].[dim_sales_person] (SalesPersonID),
	CONSTRAINT fk_DateID foreign key (DateID) references [computer_stg].[dbo].[dim_date] (DateID),
	CONSTRAINT fk_PaymentID foreign key (PaymentID) references [computer_stg].[dbo].[dim_payment] (PaymentID),
	CONSTRAINT fk_Channel_ID foreign key (Channel_ID) references [computer_stg].[dbo].[dim_channel] (Channel_ID),
	CONSTRAINT fk_PriorityID foreign key (PriorityID) references [computer_stg].[dbo].[dim_priority] (PriorityID),
) --Insert values into table from raw data
INSERT INTO
	[computer_stg].[dbo].[pc_sales_fact](
		[Cost_Price],
		[Sale_Price],
		[Discount_Amount],
		[Finance_Amount],
		[Credit_Score],
		[Cost_of_Repairs],
		[Total_Sales_per_Employee],
		[PC_Market_Price]
	)
SELECT
	DISTINCT [Cost_Price],
	[Sale_Price],
	[Discount_Amount],
	[Finance_Amount],
	[Credit_Score],
	[Cost_of_Repairs],
	[Total_Sales_per_Employee],
	[PC_Market_Price]
FROM
	[computer_stg].[dbo].[raw_pc_data] --Show all the sales
SELECT
	*
FROM
	[computer_stg].[dbo].[pc_sales_fact]