
 -- BY DATES
SELECT 
  strftime('%Y-%m', DATE('20' || SUBSTR("Date", 7, 2) || '-' || SUBSTR("Date", 1, 2) || '-' || SUBSTR("Date", 4, 2))) AS month,
  COUNT(*) AS total_orders,
  SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS cancelled_orders,
  ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS cancellation_rate_pct
FROM "Amazon Sale Report"
GROUP BY month
ORDER BY month;



--   Overall Summary: Total Orders, Cancelled, Cancellation Rate
SELECT
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"


-- Cancellation by Month
SELECT
    Month,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY Month
ORDER BY Month;


-- By Fulfillment Type
SELECT
    Fulfilment,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY Fulfilment;


-- By Sales Channel
SELECT
    "Sales Channel",
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY "Sales Channel";


-- By Shipping Service Level
SELECT
    "ship-service-level",
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY "ship-service-level";


--  By Size
SELECT
    Size,
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY Size;


--  Category + Fulfilled By
SELECT
    Category,
    "fulfilled-by",
    COUNT(*) AS Total_Orders,
    SUM(CASE WHEN Status = 'Cancelled' THEN 1 ELSE 0 END) AS Cancelled_Orders,
    ROUND(SUM(CASE WHEN Status = 'Cancelled' THEN 1.0 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Cancellation_Rate_Pct
FROM "Amazon Sale Report"
GROUP BY Category, "fulfilled-by"
ORDER BY Category, "fulfilled-by";
