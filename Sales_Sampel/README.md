# Sales Performance Analytics – SQL Project

## Project Overview
This project is a comprehensive SQL-based analytics solution designed to analyze **sales performance**, **product performance**, and **geographical revenue distribution**.

It simulates a real-world business environment using transactional sales data and applies advanced SQL techniques to generate actionable business insights.

The primary objective is to transform raw sales data into meaningful, decision-ready analytics using structured SQL queries, CTEs, window functions, and pivot tables.

---

## Business Objectives
- Analyze overall revenue performance
- Track sales trends over time (Yearly, Quarterly, Monthly)
- Evaluate product line performance
- Identify top-performing countries
- Understand deal size contribution to total revenue
- Measure year-over-year growth
- Build structured analytical queries similar to real business reporting

---

## Dataset

**Table Used:** `sales_data_sample`

### Key Columns:
- `ORDERNUMBER` – Unique order identifier
- `ORDERDATE` – Date of the transaction
- `SALES` – Revenue generated
- `QUANTITYORDERED` – Units sold
- `PRODUCTLINE` – Product category
- `COUNTRY` – Customer country
- `DEALSIZE` – Deal classification (Small / Medium / Large)

---

## Project Structure

### 1. Executive Summary (KPIs)
- Total Revenue
- Total Quantity Sold
- Total Orders
- Average Order Value (AOV)

### 2. Time Analysis
- Yearly Sales
- Quarterly Sales
- Monthly Sales
- Year-over-Year Comparison (LAG)
- Running Total Revenue

### 3. Product Performance Analysis
- Total Sales per Product Line
- Total Quantity per Product Line
- Product Ranking using `RANK()`
- Identification of top-performing products

### 4. Geographical Analysis
- Total Revenue per Country
- Country Ranking by Sales
- Market contribution comparison

### 5. Deal Size Analysis
- Revenue distribution by Deal Size
- Pivot Table (Year × Deal Size comparison)

---

## SQL Concepts Used
- `GROUP BY`
- `ORDER BY`
- `ROUND()`
- `DATEPART()`
- `CTE (WITH)`
- `RANK()`
- `LAG()`
- `SUM() OVER()`
- `PIVOT`
- Aggregate Functions

---

## Key Business Questions Answered

### Sales Performance
- Which year generated the highest revenue?
- Is revenue increasing year over year?
- Which quarter performs best?

### Product Insights
- Which product line generates the most revenue?
- Which product line sells the highest quantity?
- How are products ranked by performance?

### Market Insights
- Which country contributes most to revenue?
- How does revenue vary across regions?

### Deal Analysis
- Which deal size contributes most to revenue?
- How does deal size performance change over time?

---

## Technologies Used
- SQL Server
- T-SQL
- SQL Server Management Studio (SSMS)

---

## Future Enhancements
- Add customer-level segmentation
- Implement RFM analysis
- Create Power BI dashboard visualization
- Introduce time-series forecasting
- Automate reporting queries

---

## Author
**Jana Abdullah**  
Computer Science Student | Aspiring Data Analyst  
SQL • Data Analysis • Business Intelligence
