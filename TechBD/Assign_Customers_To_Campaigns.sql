--Solve Problem
/*The query distributes customers 
across marketing campaigns 
using a modulo-based logic to 
ensure balanced assignment and 
avoid NULL campaign references.*/
UPDATE Customers
SET CampaignID =
    (CustomerID % (SELECT COUNT(*) FROM MarketingCampaigns)) + 1;
