/*
===============================================================================
                    ONLINE RETAIL SALES ANALYSIS USING SQL
===============================================================================

Author      : Aashi Jain
Database    : retail
Tool        : SQL Server Management Studio (SSMS)

Description:
This script contains SQL queries used to analyze an online retail dataset.
The analysis focuses on sales performance, customer behavior, product
performance, country-wise sales, and time-based trends.

===============================================================================
*/

USE retail;
GO

/*==============================================================================
DATA PREVIEW
==============================================================================*/

SELECT TOP (10) *
FROM cleaned_retail;

GO

/*==============================================================================
Q1. What is the total revenue generated?
==============================================================================*/

SELECT
    ROUND(SUM(Unit_Price * Quantity),2) AS Total_Revenue
FROM cleaned_retail;

GO

/*==============================================================================
Q2. Which countries generate the highest revenue?
==============================================================================*/

SELECT TOP (10)
    Country,
    ROUND(SUM(Unit_Price * Quantity),2) AS Revenue
FROM cleaned_retail
GROUP BY Country
ORDER BY Revenue DESC;

GO

/*==============================================================================
Q3. What is the average revenue per transaction?
==============================================================================*/


select 
  Round(avg(unit_price*quantity),2) as Average_Order_Value 
from cleaned_retail

GO

/*==============================================================================
Q4. Which products generate the highest revenue?
==============================================================================*/

SELECT TOP (10)
    Description,
    ROUND(SUM(Unit_Price * Quantity),2) AS Revenue
FROM cleaned_retail
GROUP BY Description
ORDER BY Revenue DESC;

GO

/*==============================================================================
Q5. Which products are sold in the highest quantities?
==============================================================================*/

SELECT TOP (10)
    Description,
    SUM(Quantity) AS Quantity_Sold
FROM cleaned_retail
GROUP BY Description
ORDER BY Quantity_Sold DESC;

GO

/*==============================================================================
Q6. Which products appear in the highest number of invoices?
==============================================================================*/

SELECT TOP (10)
    Description,
    COUNT(DISTINCT Invoice_No) AS Unique_Invoices
FROM cleaned_retail
GROUP BY Description
ORDER BY Unique_Invoices DESC;

GO

/*==============================================================================
Q7. Who are the top customers by spending?
==============================================================================*/

SELECT TOP (10)
    Customer_ID,
    ROUND(SUM(Unit_Price * Quantity),2) AS Revenue
FROM cleaned_retail
WHERE Customer_ID IS NOT NULL
GROUP BY Customer_ID
ORDER BY Revenue DESC;

GO

/*==============================================================================
Q8. Which customers placed the highest number of orders?
==============================================================================*/

SELECT TOP (10)
    Customer_ID,
    COUNT(DISTINCT Invoice_No) AS Total_Orders
FROM cleaned_retail
WHERE Customer_ID IS NOT NULL
GROUP BY Customer_ID
ORDER BY Total_Orders DESC;

GO

/*==============================================================================
Q9. Which countries have the highest number of customers?
==============================================================================*/

SELECT TOP (10)
    Country,
    COUNT(DISTINCT Customer_ID) AS Total_Customers
FROM cleaned_retail
WHERE Customer_ID IS NOT NULL
GROUP BY Country
ORDER BY Total_Customers DESC;

GO

/*==============================================================================
Q10. How does daily revenue change over time?
==============================================================================*/

SELECT
    CAST(Invoice_Date AS DATE) AS Invoice_Date,
    ROUND(SUM(Unit_Price * Quantity),2) AS Revenue
FROM cleaned_retail
GROUP BY CAST(Invoice_Date AS DATE)
ORDER BY Invoice_Date;

GO

/*==============================================================================
Q11. Which products have above-average selling prices?
==============================================================================*/

SELECT
    Description,
    AVG(Unit_Price) AS Average_Unit_Price
FROM cleaned_retail
GROUP BY Description
HAVING AVG(Unit_Price) >=
(
    SELECT AVG(Unit_Price)
    FROM cleaned_retail
)
ORDER BY Average_Unit_Price DESC;

GO

/*==============================================================================
Q12. Which products generated above-average revenue?
==============================================================================*/

SELECT
    Description,
    SUM(Unit_Price * Quantity) AS Total_Revenue
FROM cleaned_retail
GROUP BY Description
HAVING SUM(Unit_Price * Quantity) >=
(
    SELECT AVG(Unit_Price * Quantity)
    FROM cleaned_retail
)
ORDER BY Total_Revenue DESC;

GO

/*==============================================================================
END OF ANALYSIS
==============================================================================*/

/*
Project Summary

This SQL project analyzes an online retail dataset to answer business
questions related to:

• Sales Performance
• Product Performance
• Customer Behavior
• Geographic Analysis
• Time-based Sales Trends

The analysis demonstrates SQL concepts including:

• Aggregate Functions
• GROUP BY
• HAVING
• ORDER BY
• Views
• Subqueries
• Filtering
• Date Functions

Author:
Aashi Jain

===============================================================================
*/
