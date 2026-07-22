# Online-Retail-Sales-Analysis-using-SQL
SQL project analyzing online retail sales, customer behavior, product performance, and revenue trends.
# 📊 Online Retail Sales Analysis using SQL

## 📌 Project Overview

This project analyzes the sales performance of an online retail business using SQL. The analysis focuses on understanding revenue generation, customer purchasing behavior, product performance, geographical sales distribution, and daily sales trends.

The project demonstrates SQL skills by solving real-world business problems using data exploration, data cleaning, aggregation, grouping, filtering, and subqueries.
## 📂 Dataset Information

- **Dataset:** Online Retail Dataset
- **Source:** UCI Machine Learning Repository
- **Duration:** Approximately 50 days (1 December 2010 – 20 January 2011)
- **Records Used:** 65,535 transaction records
- **Columns:**
  - Invoice_No
  - Stock_Code
  - Description
  - Quantity
  - Invoice_Date
  - Unit_Price
  - Customer_ID
  - Country

The dataset contains transactional information for an online retail business, including product details, customer information, sales quantities, prices, invoice dates, and countries. It was used to analyze sales performance, customer behavior, product performance, geographical distribution, and daily revenue trends.

## 🧹 Data Cleaning

Before performing the analysis, the dataset was cleaned to improve the accuracy of the results.

The following records were excluded:

- Cancelled orders (`Invoice_No` starting with **'C'**)
- Transactions with negative quantities
- Transactions with zero unit price

A SQL View named **`cleaned_retail`** was created to preserve the original dataset while performing the analysis on clean data.

```sql
CREATE VIEW cleaned_retail AS
SELECT *
FROM retail
WHERE Invoice_No NOT LIKE 'C%'
  AND Quantity > 0
  AND Unit_Price > 0;
```

This resulted in **64,114** clean transaction records for analysis.
## ❓ Business Questions Answered

This project answers the following business questions using SQL:

### 📈 Sales Performance
1. What is the total revenue generated?
2. Which countries generate the highest revenue?
3. What is the average order value?

### 📦 Product Performance
4. Which products generate the highest revenue?
5. Which products are sold in the highest quantities?
6. Which products appear in the highest number of orders?
7. Which products have an above-average selling price?
8. Which products generated above-average revenue?

### 👥 Customer Analysis
9. Who are the highest spending customers?
10. Which customers place the highest number of orders?
11. Which countries have the highest number of customers?

### 📅 Time Analysis
12. How does daily revenue change over time?

## 💻 SQL Skills Demonstrated

Throughout this project, the following SQL concepts were applied:

- Data Exploration
- Data Cleaning using SQL Views
- Aggregate Functions (`SUM`, `AVG`, `COUNT`)
- `GROUP BY`
- `ORDER BY`
- `HAVING`
- Filtering with `WHERE`
- Subqueries
- `DISTINCT`
- Date Functions
- Business-Oriented Data Analysis

## 📊 Business Insights

Based on the SQL analysis, the following key insights were identified:

- The **United Kingdom** generated the highest sales revenue among all countries. However, profitability cannot be determined because the dataset does not include cost or expense information.
- Products with the **highest revenue**, **highest quantity sold**, and **highest number of orders** were not always the same, indicating that high demand does not necessarily lead to the highest revenue.
- Customers with the **highest spending** were different from those placing the **highest number of orders**, showing that purchase frequency and total spending are not always directly related.
- The **United Kingdom** also had the largest customer base, but the available data does not indicate whether those customers were primarily high spenders or frequent buyers.
- Daily revenue remained relatively stable during the observed period, with normal fluctuations and no consistent upward or downward trend.

## 💡 Business Recommendations

Based on the analysis, the following recommendations can be considered:

- Review the performance of products with consistently low demand and evaluate whether inventory or production levels can be optimized.
- Continue promoting and maintaining the availability of high-demand products, even if they are not the highest revenue-generating products.
- Analyze customer purchasing patterns further to understand the differences between high-spending and frequent customers, enabling more targeted marketing strategies.
- Include product cost and operational expense data in future analyses to evaluate profitability in addition to revenue.
- Monitor daily sales trends regularly to identify unusual fluctuations and support better business planning.
