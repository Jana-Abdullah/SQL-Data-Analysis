--vw_SalesAnalysis.sql
CREATE VIEW vw_SalesAnalysis AS
SELECT
    O.OrderID,
    O.OrderDate,
    O.PaymentMethod,
    C.CustomerID,
    C.City,
    C.Gender,
    P.ProductID,
    P.ProductName,
    P.Category,
    OI.Quantity,
    OI.Price,
    (OI.Quantity * OI.Price) AS TotalItemAmount
FROM Orders O
JOIN Customers C ON O.CustomerID = C.CustomerID
JOIN OrderItems OI ON OI.OrderID = O.OrderID
JOIN Products P ON OI.ProductID = P.ProductID;

--vw_MarketingCampaigns
CREATE VIEW vw_MarketingCampaigns AS
SELECT
    MC.CampaignID,
    MC.Name,
    MC.Budget,
    C.CustomerID,
    O.OrderID,
    OI.Quantity,
    OI.Price,
    (OI.Quantity * OI.Price) AS TotalItemAmount
FROM MarketingCampaigns MC
JOIN Customers C ON MC.CampaignID = C.CampaignID
JOIN Orders O ON O.CustomerID = C.CustomerID
JOIN OrderItems OI ON O.OrderID = OI.OrderID;

--vw_BudgetAnalysis
CREATE VIEW vw_BudgetAnalysis AS
SELECT
    MC.CampaignID,
    MC.Name,
    MC.Budget,
    C.CustomerID,
    O.OrderID,
    (OI.Quantity * OI.Price) AS TotalRevenue
FROM MarketingCampaigns MC
JOIN Customers C ON MC.CampaignID = C.CampaignID
JOIN Orders O ON O.CustomerID = C.CustomerID
JOIN OrderItems OI ON OI.OrderID = O.OrderID;

