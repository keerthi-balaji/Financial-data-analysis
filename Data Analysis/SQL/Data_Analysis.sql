SELECT * FROM financials LIMIT 10;

SELECT
  Segment,
  SUM("Net Sales ($)") AS Total_Sales,
  SUM("Profit ($)") AS Total_Profit,
  ROUND(AVG("Profit Margin (%)"), 2) AS "Avg Profit Margin (%)"
FROM financials
GROUP BY Segment
ORDER BY Total_Profit DESC;

SELECT 
  Year,
  "Month Number",
  "Month Name",
  SUM("Net Sales ($)") AS Monthly_Sales,
  SUM("Profit ($)") AS Monthly_Profit
FROM financials
GROUP BY Year, "Month Number", "Month Name"
ORDER BY Monthly_Profit DESC;

SELECT 
  Country,
  ROUND(AVG("Discount Rate (%)"), 2) AS Avg_Discount_Rate
  --COUNT(*) AS Num_Transactions
FROM financials
GROUP BY Country
ORDER BY Avg_Discount_Rate DESC;


SELECT 
  Product,
  SUM("Profit ($)") AS Total_Profit
FROM financials
GROUP BY Product
ORDER BY Total_Profit DESC
LIMIT 5;

SELECT 
  Product,
  AVG("Profit Margin (%)") AS Avg_Profit_Margin
FROM financials
GROUP BY Product
HAVING AVG("Profit Margin (%)") < 35
ORDER BY Avg_Profit_Margin ASC;


SELECT 
  Year,
  Quarter,
  SUM("Net Sales ($)") AS Total_Sales,
  SUM("Profit ($)") AS Total_Profit,
  AVG("Profit Margin (%)") AS Average_Profit_Margin
FROM financials
GROUP BY Year, Quarter
ORDER BY Year, Quarter;

SELECT 
  Segment,
  ROUND(AVG("COGS Ratio (%)"), 2) AS Avg_COGS_Ratio
FROM financials
GROUP BY Segment
ORDER BY Avg_COGS_Ratio;
