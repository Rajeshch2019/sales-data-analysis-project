SELECT TOP 10 *
FROM Data_Sales;

---- SALES BY REGION ----
SELECT
    Region,
    SUM(Sales) AS Total_Sales
FROM Data_Sales
GROUP BY Region
ORDER BY Total_Sales DESC;

---- SALES BY CATEGORY ----
SELECT
    Category,
    SUM(Sales) AS Total_Sales
FROM Data_Sales
GROUP BY Category
ORDER BY Total_Sales DESC;

---- TOP 10 PRODUCTS ----
SELECT TOP 10
    Product_Name,
    SUM(Sales) AS Total_Sales
FROM Data_Sales
GROUP BY Product_Name
ORDER BY Total_Sales DESC;

---- MONTHLY SALES TREND ----
SELECT
    YEAR(Order_Date) AS Year,
    MONTH(Order_Date) AS Month,
    SUM(Sales) AS Total_Sales
FROM Data_Sales
GROUP BY YEAR(Order_Date), MONTH(Order_Date)
ORDER BY Year, Month;