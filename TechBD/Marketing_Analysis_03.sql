--campaign_performance

-- Most successful campaigns by revenue
SELECT TOP 5
    CampaignID,
    SUM(TotalItemAmount) AS Total_Revenue
FROM vw_MarketingCampaigns
GROUP BY CampaignID
ORDER BY Total_Revenue DESC;

-- Campaigns with the most customers
SELECT
    CampaignID,
    Name,
    COUNT(DISTINCT CustomerID) AS Number_Of_Customers
FROM vw_MarketingCampaigns
GROUP BY CampaignID, Name
ORDER BY Number_Of_Customers DESC;

--roi_budget_analysis

-- ROI per campaign
SELECT
    CampaignID,
    Name,
    SUM(TotalRevenue) AS TotalRevenue,
    MAX(Budget) AS CampaignBudget,
    (SUM(TotalRevenue) / MAX(Budget)) AS ROI,
    CASE
        WHEN SUM(TotalRevenue) > SUM(Budget) THEN 'Profit'
        WHEN SUM(TotalRevenue) = SUM(Budget) THEN 'Break-even'
        ELSE 'Loss'
    END AS ProfitCategory
FROM vw_BudgetAnalysis
GROUP BY CampaignID, Name
ORDER BY ROI DESC;

-- Campaigns exceeding budget
SELECT
    CampaignID,
    Name,
    SUM(TotalRevenue) AS TotalRevenue,
    SUM(Budget) AS TotalBudget
FROM vw_BudgetAnalysis
GROUP BY CampaignID, Name
HAVING SUM(TotalRevenue) < SUM(Budget);
