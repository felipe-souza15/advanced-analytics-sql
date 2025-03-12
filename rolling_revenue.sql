-- Calculates rolling revenue over the last 12 months
SELECT 
    SaleDate, 
    SUM(TotalValue) OVER (ORDER BY SaleDate ROWS BETWEEN 11 PRECEDING AND CURRENT ROW) AS RollingRevenue
FROM Sales;