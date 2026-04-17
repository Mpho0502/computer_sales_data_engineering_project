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

---

## 📂 Data Engineering Workflow

1. **Planning & Schema Modeling** → Define business goals, identify entities, and design the star schema.  
2. **Staging Layer** → Load raw sales data into staging tables while preserving original records.  
3. **Data Cleaning** → Remove duplicates, handle missing values, and standardize formats.  
4. **Transformation** → Apply business rules, normalize product categories, and calculate metrics.  
5. **Warehouse Layer** → Implement the star schema for facts and dimensions (products, customers, dates, etc.).  
6. **ETL Pipelines** → Automate the flow of data from staging → cleaning → transformation → warehouse, ensuring clean and reliable datasets for reporting.  

---

## 📐 Planning Before Schema Design

Before building the schema, it’s important to plan carefully:

- **Business Goals** → Decide what the warehouse should achieve. For example, tracking computer sales performance.  
- **Entities** → Identify the main parts of the system, such as customers, PCs, shops, locations, and payments.  
- **Relationships** → Understand how these parts connect. For example, a customer buys a PC from a shop.   

---

## ⭐ Star Schema Design
The chosen schema is a **Star Schema**, which balances simplicity and analytical power.

<img width="854" height="822" alt="star_schema_computer_sales" src="https://github.com/user-attachments/assets/abdd9a5f-5187-4c60-9a30-cd26b788443b" />
                               
---
### 🔑 Components

**Fact Table** → Holds measurable data such as cost price, sale price, discount, finance amount, repairs, etc.

**Dimension Tables** → Provide descriptive attributes.
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
- **Cloud Data Warehousing** (Snowflake, Databricks)  
- **Dimensional Modeling** for analytics  

---

## 📈 Insights
- Built a **scalable pipeline** from staging to warehouse.  
- Ensured **clean datasets** ready for business intelligence.  
- Highlighted **sales trends and product performance**.  
- Demonstrated ability to bridge **technical SQL skills with business analysis**.  

---

## 🔗 Project Status
- Currently in the architecture and staging phase. I am preparing to process the initial transaction, focusing on engineering a robust pipeline using Python to ensure data is perfectly **modeled, validated,** and **optimized for high-level analytical dashboards.**

---
