# SQL-Data-Analysis
# Tech Store BD – Sales & Marketing Analytics Project

## Project Overview
This project is a comprehensive SQL-based analytics solution designed to analyze **sales performance**, **customer behavior**, and **marketing campaign effectiveness**.  
It simulates a realistic business environment for a technology retail company selling electronic products such as laptops, smartphones, and accessories.

The main objective is to transform raw transactional data into meaningful business insights using **structured SQL views** and **analytical queries**.

---

## Business Objectives
- Analyze overall sales performance and revenue trends
- Understand customer purchasing behavior
- Evaluate product performance
- Measure marketing campaign effectiveness and ROI
- Compare campaign budgets against generated revenue

---

## Database Schema
The database consists of the following core tables:

- **Customers** – Customer demographic and location data
- **Orders** – Order-level transactional data
- **OrderItems** – Product-level order details
- **Products** – Product catalog and categories
- **MarketingCampaigns** – Campaign details and budgets

---

## Key SQL Views

### 1. vw_SalesAnalysis
A central analytical view that consolidates:
- Orders
- Customers
- Products
- Order items  

**Purpose:**
- Sales analysis
- Product performance evaluation
- Customer behavior insights
- KPI calculations

---

### 2. vw_MarketingCampaigns
Focuses on linking sales transactions to marketing campaigns.

**Purpose:**
- Campaign revenue analysis
- Customer acquisition analysis
- Campaign performance comparison

---

### 3. vw_BudgetAnalysis
Designed specifically for financial evaluation of marketing campaigns.

**Purpose:**
- Budget vs revenue comparison
- ROI calculation
- Identifying profitable and loss-making campaigns

---

## Key Business Questions Answered

### Sales Analysis
- What are the total sales by month?
- Which product categories generate the highest revenue?
- What payment methods drive the most sales?
- Which cities contribute the most to revenue?
- How do sales vary by gender?

### Customer Behavior
- Who are the top customers by total revenue?
- What is the average order value (AOV) per customer?
- How frequently do customers place orders?

### Product Performance
- Top-selling products by revenue
- Top-selling products by quantity
- Products with the lowest sales (opportunities for improvement)
- Products frequently purchased together

### Marketing & Budget Analysis
- Most successful campaigns by revenue
- Campaigns with the highest customer reach
- Campaign ROI (Return on Investment)
- Campaigns that exceeded their allocated budgets

---

## Technologies Used
- **SQL Server**
- **T-SQL**
- **Power BI** (for dashboard visualization)

---

## Data Design Notes
- Clean and consistent data (no NULLs in key relationships)
- Realistic numeric distributions for accurate analysis
- Campaign assignment simulated using modulo-based logic to ensure balanced customer distribution

---

## Future Enhancements
- Introduce dirty data scenarios for data cleaning practice
- Advanced segmentation using RFM analysis
- Time-series forecasting
- Python-based data preprocessing
- Automated Power BI refresh pipelines

---

## Author
**jana A**  
Computer Science Student | Aspiring Data Analyst  
SQL • Data Analysis • Business Intelligence
