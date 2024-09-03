USE db_Churn
SELECT * FROM Customer_Data
SELECT Gender, COUNT(Gender) AS TotalCount,
COUNT(Gender) * 100.0 / (SELECT COUNT(*) FROM Customer_Data) AS Pct 
FROM Customer_Data
GROUP BY Gender

SELECT Contract, COUNT(Contract) AS TotalCount,
COUNT(Contract) * 100.0 / (SELECT COUNT(*) FROM Customer_Data) AS Pct 
FROM Customer_Data
GROUP BY Contract 

SELECT Customer_Status, Count(Customer_Status) AS TotalCount , SUM(Total_Revenue) AS TotalRev,
SUM(Total_Revenue) / (SELECT SUM(Total_Revenue) FROM Customer_Data) * 100 AS RevPercentage
FROM Customer_Data
GROUP BY Customer_Status

SELECT State, COUNT(State) AS TotalCount,
COUNT(State) * 1.0 / (SELECT COUNT(*) FROM Customer_Data) AS PCT
FROM Customer_Data
GROUP BY State
ORDER BY TotalCount DESC

SELECT DISTINCT Internet_Type
FROM Customer_Data