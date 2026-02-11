
-- ==========================================
-- DMART SALES PERFORMANCE ANALYTICS PROJECT
-- Author: Vaishnavi Dhole
-- ==========================================

-- 1. CREATE DATABASE
CREATE DATABASE dmart_sales;
USE dmart_sales;

-- 2. CREATE TABLE
CREATE TABLE sales_data (
    Order_ID VARCHAR(50),
    Order_Date DATE,
    Category VARCHAR(100),
    Subcategory VARCHAR(100),
    Product_Name VARCHAR(255),
    Region VARCHAR(100),
    City VARCHAR(100),
    Sales_Amount DECIMAL(10,2),
    Profit DECIMAL(10,2),
    Quantity INT
);

-- 3. TOTAL SALES
SELECT SUM(Sales_Amount) AS Total_Sales
FROM sales_data;

-- 4. TOTAL PROFIT
SELECT SUM(Profit) AS Total_Profit
FROM sales_data;

-- 5. SALES BY CATEGORY
SELECT Category,
       SUM(Sales_Amount) AS Category_Sales
FROM sales_data
GROUP BY Category
ORDER BY Category_Sales DESC;

-- 6. SALES BY REGION
SELECT Region,
       SUM(Sales_Amount) AS Regional_Sales
FROM sales_data
GROUP BY Region
ORDER BY Regional_Sales DESC;

-- 7. TOP 10 SELLING PRODUCTS
SELECT Product_Name,
       SUM(Sales_Amount) AS Sales
FROM sales_data
GROUP BY Product_Name
ORDER BY Sales DESC
LIMIT 10;

-- 8. PROFIT BY SUBCATEGORY
SELECT Subcategory,
       SUM(Profit) AS Profit
FROM sales_data
GROUP BY Subcategory
ORDER BY Profit DESC;

-- 9. CITY-WISE SALES PERFORMANCE
SELECT City,
       SUM(Sales_Amount) AS City_Sales
FROM sales_data
GROUP BY City
ORDER BY City_Sales DESC;

-- 10. MONTHLY SALES TREND
SELECT MONTH(Order_Date) AS Month,
       SUM(Sales_Amount) AS Monthly_Sales
FROM sales_data
GROUP BY MONTH(Order_Date)
ORDER BY Month;

-- 11. QUANTITY SOLD BY CATEGORY
SELECT Category,
       SUM(Quantity) AS Total_Quantity
FROM sales_data
GROUP BY Category
ORDER BY Total_Quantity DESC;

-- ==========================================
-- END OF SQL ANALYSIS
-- ==========================================
