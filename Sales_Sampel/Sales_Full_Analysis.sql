/* =====================================================
   FULL SALES ANALYSIS
   Table Used: sales_data_sample
===================================================== */


/* =====================================================
   1 TIME ANALYSIS
===================================================== */

-- Total Sales Per Year
SELECT 
    YEAR(ORDERDATE) AS SalesYear,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY YEAR(ORDERDATE)
ORDER BY SalesYear;


-- Total Sales Per Quarter
SELECT 
    DATEPART(QUARTER, ORDERDATE) AS SalesQuarter,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY DATEPART(QUARTER, ORDERDATE)
ORDER BY SalesQuarter;


-- Total Sales Per Month
SELECT 
    MONTH(ORDERDATE) AS SalesMonth,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY MONTH(ORDERDATE)
ORDER BY SalesMonth;


/* =====================================================
   2 PRODUCT ANALYSIS
===================================================== */

-- Total Sales Per Product Line
SELECT 
    PRODUCTLINE,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY Total_Sales DESC;


-- Total Quantity Per Product Line
SELECT 
    PRODUCTLINE,
    SUM(QUANTITYORDERED) AS Total_Quantity
FROM sales_data_sample
GROUP BY PRODUCTLINE
ORDER BY Total_Quantity DESC;


-- Ranking Products by Sales
SELECT 
    PRODUCTLINE,
    SUM(SALES) AS Total_Sales,
    RANK() OVER (ORDER BY SUM(SALES) DESC) AS Sales_Rank
FROM sales_data_sample
GROUP BY PRODUCTLINE;


/* =====================================================
   3? GEOGRAPHICAL ANALYSIS
===================================================== */

-- Total Sales Per Country
SELECT 
    COUNTRY,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY COUNTRY
ORDER BY Total_Sales DESC;


-- Ranking Countries by Sales
SELECT 
    COUNTRY,
    SUM(SALES) AS Total_Sales,
    RANK() OVER (ORDER BY SUM(SALES) DESC) AS Country_Rank
FROM sales_data_sample
GROUP BY COUNTRY;


/* =====================================================
   4? DEAL SIZE ANALYSIS
===================================================== */

-- Sales by Deal Size
SELECT 
    DEALSIZE,
    ROUND(SUM(SALES), 2) AS Total_Sales
FROM sales_data_sample
GROUP BY DEALSIZE
ORDER BY Total_Sales DESC;


-- Pivot: Sales by Year and Deal Size
SELECT *
FROM (
    SELECT 
        YEAR(ORDERDATE) AS SalesYear,
        DEALSIZE,
        SALES
    FROM sales_data_sample
) AS SourceTable
PIVOT (
    SUM(SALES)
    FOR DEALSIZE IN ([Small], [Medium], [Large])
) AS PivotTable
ORDER BY SalesYear;


/* =====================================================
   5? CTE ANALYSIS
===================================================== */

-- CTE: Yearly Sales Filtered
WITH YearlySales AS (
    SELECT 
        YEAR(ORDERDATE) AS SalesYear,
        SUM(SALES) AS Total_Sales
    FROM sales_data_sample
    GROUP BY YEAR(ORDERDATE)
)

SELECT *
FROM YearlySales
WHERE Total_Sales > 1000000
ORDER BY Total_Sales DESC;


/* =====================================================
   6? ADVANCED WINDOW FUNCTIONS
===================================================== */

-- Yearly Sales with Previous Year Comparison
WITH YearlySales AS (
    SELECT 
        YEAR(ORDERDATE) AS SalesYear,
        SUM(SALES) AS Total_Sales
    FROM sales_data_sample
    GROUP BY YEAR(ORDERDATE)
)

SELECT 
    SalesYear,
    Total_Sales,
    LAG(Total_Sales) OVER (ORDER BY SalesYear) AS Previous_Year_Sales,
    Total_Sales - LAG(Total_Sales) OVER (ORDER BY SalesYear) AS Sales_Difference
FROM YearlySales
ORDER BY SalesYear;


-- Running Total of Sales by Year
WITH YearlySales AS (
    SELECT 
        YEAR(ORDERDATE) AS SalesYear,
        SUM(SALES) AS Total_Sales
    FROM sales_data_sample
    GROUP BY YEAR(ORDERDATE)
)

SELECT 
    SalesYear,
    Total_Sales,
    SUM(Total_Sales) OVER (ORDER BY SalesYear) AS Running_Total
FROM YearlySales
ORDER BY SalesYear;
