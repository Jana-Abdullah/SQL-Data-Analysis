--customer_product_KPIs
-- KPI: Revenue from Top 10 Customers
SELECT TOP 10
    CustomerID,
    SUM(TotalItemAmount) AS Total_Spent
FROM vw_SalesAnalysis
GROUP BY CustomerID
ORDER BY Total_Spent DESC;

-- KPI: Average Order Value (AOV) for Top Customers
SELECT TOP 10
    CustomerID,
    AVG(TotalItemAmount) AS Avg_Order_Value
FROM vw_SalesAnalysis
GROUP BY CustomerID
ORDER BY Avg_Order_Value DESC;

-- KPI: Product Performance
SELECT
    ProductID,
    ProductName,
    SUM(Quantity) AS Total_Units_Sold,
    COUNT(DISTINCT OrderID) AS Number_Of_Orders,
    SUM(TotalItemAmount) AS Total_Revenue
FROM vw_SalesAnalysis
GROUP BY ProductID, ProductName
ORDER BY Total_Revenue DESC;


