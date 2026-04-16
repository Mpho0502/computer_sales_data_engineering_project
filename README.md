# 💻 Computer Sales Data Engineering Project

This project focuses on **creating and exploring a structured computer sales dataset**, with a complete pipeline from **raw staging data to a clean data warehouse**.  
The goal is to demonstrate **data engineering fundamentals**: cleaning, transformation, pipeline creation, and ensuring high‑quality datasets for analytics.

---

## 🎯 Project Objectives
- Ingest raw computer sales data into a **staging environment**.  
- Apply **data cleaning and transformation** rules to ensure consistency.  
- Build a **data warehouse schema** for structured analysis.  
- Create **ETL pipelines** to automate data flow from staging to warehouse.  
- Ensure **data integrity, scalability, and performance** across the system.  

---

## 🛠️ Tools & Technologies
- **SQL Fundamentals** → `WHERE`, `ORDER BY`, `GROUP BY`, `HAVING`  
- **ETL Technologies** → Pipelines for cleaning and transformation  
- **Cloud Environments** → Snowflake, Databricks, Azure  
- **Development Tools** →  
  - [SQL Server Management Studio (SSMS)](https://learn.microsoft.com/en-us/sql/ssms/sql-server-management-studio-ssms)  
  - [Visual Studio Code](https://code.visualstudio.com/)  
  - [Snowflake](https://www.snowflake.com/)  
  - [Databricks](https://www.databricks.com/)  
  - [Microsoft Excel](https://www.microsoft.com/en/microsoft-365/excel)  

---

## 📂 Workflow
## 🔄 Data Engineering Workflow

Building a robust data warehouse requires a clear workflow that begins with **planning and schema modeling** and flows through the stages of data preparation, transformation, and automation.

---

### 📐 1. Planning & Schema Modeling
- Define business goals and reporting needs.
- Identify entities (customers, products, shops, locations, etc.).
- Design the **Star Schema** with a central fact table (`PC_Data_Sales_Fact`) and dimension tables.

---

### 📥 2. Staging Layer
- Load raw sales data into staging tables.
- Preserve original data for traceability and auditing.

---

### 🧹 3. Data Cleaning
- Remove duplicates.
- Handle missing values.
- Standardize formats (dates, emails, phone numbers).

---

### 🔧 4. Transformation
- Apply business rules.
- Normalize product categories.
- Calculate metrics (e.g., discounts, revenue, profit margins).

---

### 🗄️ 5. Warehouse Layer
- Implement the **Star Schema** for sales facts and dimensions:
  - Dimensions: customers, PCs, shops, locations, payments, dates, etc.
  - Fact table: sales transactions with measurable attributes.

---

### ⚙️ 6. ETL Pipelines
- Automate the flow of data from staging → cleaning → transformation → warehouse.
- Ensure datasets are clean, reliable, and ready for reporting and analytics.

---

## 📊 Workflow Diagram

   Planning & Schema Modeling
              |
          Staging Layer
              |
         Data Cleaning
              |
        Transformation
              |
       Warehouse Layer
              |
         ETL Pipelines
         
---

## 🧩 Planning the Data Model
Before diving into schema design, careful planning is essential:

- **Business Goals** → Define what the warehouse should achieve (e.g., track PC sales performance).
- **Entities** → Identify core components: customers, PCs, shops, locations, payments, etc.
- **Relationships** → Map how entities interact (e.g., a customer buys a PC from a shop).
- **Granularity** → Decide the level of detail (transaction-level vs. aggregated).

---

## ⭐ Star Schema Design
The chosen schema is a **Star Schema**, which balances simplicity and analytical power.

<img width="1172" height="860" alt="star_schema_computer_sales_" src="https://github.com/user-attachments/assets/c4e9c204-b96b-445e-8ab7-4cce7296d7f7" />

                               
---
### 🔑 Components

**Fact Table**  
- `PC_Data_Sales_Fact` → Holds measurable data such as cost price, sale price, discount, finance amount, repairs, etc.

**Dimension Tables** → Provide descriptive attributes:
- `dim_customer` → Customer details  
- `dim_pc` → PC make & model  
- `dim_location` → Geographic info  
- `dim_shop` → Shop details  
- `dim_storage` → RAM & storage specs  
- `dim_sales_person` → Employee info  
- `dim_date` → Purchase & shipping dates  
- `dim_payment` → Payment methods  
- `dim_channel` → Sales channel  
- `dim_priority` → Order priority  

This structure allows fast joins and intuitive queries.

---

### 🧹 Transition to Data Cleaning

Once the schema is in place, **data cleaning** ensures accuracy and reliability:

- **Consistency Checks** → Ensure foreign keys in the fact table match dimension records.  
- **Standardization** → Normalize formats (dates, emails, phone numbers).  
- **Error Handling** → Detect and fix missing or invalid entries.  
- **Deduplication** → Remove duplicate customers, shops, or PCs.  

---

## 📂 Business Questions
- Which **computer brands** generate the highest revenue?  
- What is the **average discount rate** applied across product categories?  
- How do **laptop vs. desktop sales** compare over time?  
- Which **regions or provinces** show the fastest growth in sales?  
- What percentage of sales remain **pending vs. completed**?  

---

## 🌟 Key Skills Demonstrated
- **SQL Querying & Optimization**  
- **ETL Pipeline Development**  
- **Data Cleaning & Transformation**  
- **Cloud Data Warehousing** (Snowflake, Databricks, Azure)  
- **Dimensional Modeling** for analytics  

---

## 📈 Insights
- Built a **scalable pipeline** from staging to warehouse.  
- Ensured **clean datasets** ready for business intelligence.  
- Highlighted **sales trends and product performance**.  
- Demonstrated ability to bridge **technical SQL skills with business analysis**.  

---

## 🔗 Project Status
Part of my **data engineering portfolio**, showcasing how **SQL, ETL, and cloud platforms** can be applied to real‑world sales datasets.  

---
