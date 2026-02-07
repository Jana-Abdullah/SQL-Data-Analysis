--sales_trends

-- Monthly sales trend
SELECT
    FORMAT(OrderDate, 'yyyy-MM') AS Month,
    SUM(TotalItemAmount) AS Total_Sales
FROM vw_SalesAnalysis
GROUP BY FORMAT(OrderDate, 'yyyy-MM')
ORDER BY Month;

-- Sales by weekday and week number
SELECT
    DATENAME(WEEKDAY, OrderDate) AS Weekday,
    DATEPART(WEEK, OrderDate) AS WeekNum,
    SUM(TotalItemAmount) AS Total_Revenue
FROM vw_SalesAnalysis
GROUP BY DATENAME(WEEKDAY, OrderDate), DATEPART(WEEK, OrderDate)
ORDER BY Total_Revenue DESC;

--product_sales

-- Best selling products by revenue
SELECT TOP 10
    ProductName,
    SUM(TotalItemAmount) AS Total_Revenue
FROM vw_SalesAnalysis
GROUP BY ProductName
ORDER BY Total_Revenue DESC;

-- Lowest selling products
SELECT TOP 10
    ProductID,
    SUM(Quantity) AS Total_Units_Sold
FROM vw_SalesAnalysis
GROUP BY ProductID
ORDER BY Total_Units_Sold;

--payment_city_gender

-- Sales by payment method
SELECT
    PaymentMethod,
    SUM(TotalItemAmount) AS Total_Sales,
    COUNT(DISTINCT OrderID) AS Number_Of_Orders
FROM vw_SalesAnalysis
GROUP BY PaymentMethod;

-- Sales by city
SELECT
    City,
    SUM(TotalItemAmount) AS Total_Sales
FROM vw_SalesAnalysis
GROUP BY City
ORDER BY Total_Sales DESC;

-- Gender-based sales analysis
SELECT
    Gender,
    SUM(TotalItemAmount) AS Total_Sales,
    COUNT(DISTINCT OrderID) AS Number_Of_Orders
FROM vw_SalesAnalysis
GROUP BY Gender;


