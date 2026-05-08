-- Create fact table if it does not exist
IF OBJECT_ID('[computer_stg].[dbo].[pc_sales_fact]', 'U') IS NULL
BEGIN
    CREATE TABLE [computer_stg].[dbo].[pc_sales_fact] (
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
        [Cost_Price] DECIMAL(10,2) NOT NULL,
        [Sale_Price] DECIMAL(10,2) NOT NULL,
        [Discount_Amount] DECIMAL(10,2) NOT NULL,
        [Finance_Amount] DECIMAL(10,2) NOT NULL,
        [Cost_of_Repairs] DECIMAL(10,2) NOT NULL,
        [Total_Sales_per_Employee] DECIMAL(10,2) NOT NULL,
        [PC_Market_Price] DECIMAL(10,2) NOT NULL,
        [Credit_Score] INT NOT NULL,
        [LoadDate] DATETIME DEFAULT GETDATE()
    );
END
GO

-- Insert values into the fact table from raw data joined with dimensions
INSERT INTO [computer_stg].[dbo].[pc_sales_fact] (
    [LocationID],
    [ShopID],
    [PC_ID],
    [StorageID],
    [CustomerID],
    [SalesPersonID],
    [DateID],
    [PaymentID],
    [Channel_ID],
    [PriorityID],
    [Cost_Price],
    [Sale_Price],
    [Discount_Amount],
    [Finance_Amount],
    [Cost_of_Repairs],
    [Total_Sales_per_Employee],
    [PC_Market_Price],
    [Credit_Score]
)
SELECT
    l.LocationID,
    sh.ShopID,
    p.PC_ID,
    st.StorageID,
    c.CustomerID,
    sp.SalesPersonID,
    d.DateID,
    pm.PaymentID,
    ch.Channel_ID,
    pr.PriorityID,
    stg.Cost_Price,
    stg.Sale_Price,
    stg.Discount_Amount,
    stg.Finance_Amount,
    stg.Cost_of_Repairs,
    stg.Total_Sales_per_Employee,
    stg.PC_Market_Price,
    stg.Credit_Score
FROM [computer_stg].[dbo].[raw_pc_data] AS stg
INNER JOIN [computer_stg].[dbo].[dim_location] l
    ON stg.Continent = l.Continent
    AND stg.Country_Or_State = l.Country_Or_State
    AND stg.Province_Or_City = l.Province_Or_City
INNER JOIN [computer_stg].[dbo].[dim_shop] sh
    ON stg.Shop_Name = sh.Shop_Name
    AND stg.Shop_Age = sh.Shop_Age
INNER JOIN [computer_stg].[dbo].[dim_pc] p
    ON stg.PC_Make = p.PC_Make
    AND stg.PC_Model = p.PC_Model
INNER JOIN [computer_stg].[dbo].[dim_storage] st
    ON stg.Storage_Type = st.Storage_Type
    AND stg.RAM = st.RAM
    AND stg.Storage_Capacity = st.Storage_Capacity
INNER JOIN [computer_stg].[dbo].[dim_customer] c
    ON stg.Customer_Name = c.Customer_Name
    AND stg.Customer_Surname = c.Customer_Surname
    AND stg.Customer_Contact_Number = c.Customer_Contact_Number
    AND stg.Customer_Email_Address = c.Customer_Email_Address
INNER JOIN [computer_stg].[dbo].[dim_sales_person] sp
    ON stg.Sales_Person_Name = sp.Sales_Person_Name
    AND stg.Sales_Person_Department = sp.Sales_Person_Department
INNER JOIN [computer_stg].[dbo].[dim_date] d
    ON stg.Purchase_Date = d.Purchase_Date
    AND stg.Ship_Date = d.Ship_Date
INNER JOIN [computer_stg].[dbo].[dim_payment] pm
    ON stg.Payment_Method = pm.Payment_Method
INNER JOIN [computer_stg].[dbo].[dim_channel] ch
    ON stg.Channel = ch.Channel
INNER JOIN [computer_stg].[dbo].[dim_priority] pr
    ON stg.Priority = pr.Priority;
GO

-- Check data
SELECT * 
FROM [computer_stg].[dbo].[pc_sales_fact];
GO
