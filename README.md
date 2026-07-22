# 📊 Online Retail Sales Analysis using SQL

## 📌 Project Overview

This project analyzes the sales performance of an online retail business using SQL Server. The objective is to extract meaningful business insights from transactional sales data by performing data cleaning, exploratory analysis, and solving real-world business questions using SQL.

The analysis focuses on understanding sales performance, customer behavior, product performance, geographical distribution of sales, and daily revenue trends.

---

## 🎯 Objectives

- Analyze overall sales performance.
- Identify top-performing products and customers.
- Understand customer purchasing behavior.
- Analyze sales across different countries.
- Study daily revenue trends.
- Generate business insights and recommendations from the data.

---

## 📂 Dataset Information

**Dataset:** Online Retail Dataset

The dataset contains approximately **50 days of retail transaction data** with the following columns:

- Invoice Number
- Stock Code
- Product Description
- Quantity
- Invoice Date
- Unit Price
- Customer ID
- Country

---

## 🧹 Data Cleaning

Before performing the analysis, the dataset was cleaned by:

- Removing cancelled orders
- Removing records with negative quantities
- Removing transactions with zero unit price
- Creating a cleaned SQL View for analysis

```sql
CREATE VIEW cleaned_retail AS
SELECT *
FROM retail
WHERE Invoice_No NOT LIKE 'C%'
AND Quantity > 0
AND Unit_Price > 0;
```

---

# 📈 Business Questions Solved

## Sales Performance

- What is the total revenue generated?
- Which countries generate the highest revenue?
- What is the average order value?

## Product Performance

- Which products generate the highest revenue?
- Which products are sold in the highest quantities?
- Which products appear in the highest number of invoices?
- Which products have above-average selling prices?
- Which products generate above-average revenue?

## Customer Analysis

- Who are the highest spending customers?
- Which customers place the highest number of orders?

## Geographical Analysis

- Which countries have the highest number of customers?

## Time Analysis

- How does daily revenue change over time?

---

# 💻 SQL Concepts Used

Throughout this project, the following SQL concepts were applied:

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions
  - SUM()
  - AVG()
  - COUNT()
- DISTINCT
- TOP
- Views
- Subqueries
- Date Functions
- Aliases

---

# 📊 Key Business Insights

- The United Kingdom generated the highest sales revenue among all countries.
- High-revenue products were not always the most frequently purchased products.
- Customers with the highest spending were different from customers placing the highest number of orders.
- Daily revenue fluctuated throughout the observed period without a consistent upward or downward trend.
- The dataset contains revenue information but does not include costs or expenses; therefore, profitability cannot be determined.

---

# 💡 Business Recommendations

- Review low-demand products and evaluate inventory or production levels to reduce unnecessary costs.
- Continue promoting products with consistently high demand, even if they are not the highest revenue-generating products.
- Include product cost information in future analyses to enable profitability-based decision making instead of relying solely on revenue.

---

# 🛠️ Tools Used

- SQL Server Management Studio (SSMS)
- SQL Server
- GitHub

---

# 📁 Project Structure

```
Online-Retail-Sales-Analysis-SQL/
│
├── README.md
├── Online Retail Dataset.csv
├── SQL Queries.sql
└── Project Screenshots/
```

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- Business Problem Solving
- SQL Query Writing
- Aggregate Functions
- Data Aggregation
- Business Insight Generation
- Analytical Thinking

---

# 📌 Conclusion

This project demonstrates how SQL can be used to transform raw transactional data into meaningful business insights. By combining data cleaning, aggregation, and analytical thinking, the project answers important business questions related to sales performance, customer behavior, product demand, and geographical trends.

---

## 👩‍💻 Author

**Aashi Jain**

Bachelor of Arts Programme (Computer Applications & Mathematics)

Lady Shri Ram College for Women
