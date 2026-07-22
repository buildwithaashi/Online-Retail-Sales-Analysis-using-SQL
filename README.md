# 📊 Online Retail Sales Analysis using SQL

## 📌 Project Overview

This project analyzes the sales performance of an online retail business using SQL Server. The objective is to transform raw transactional data into meaningful business insights by performing data cleaning, exploratory data analysis, and solving real-world business questions.

The analysis focuses on identifying sales trends, customer purchasing behavior, product performance, geographical sales distribution, and daily revenue patterns.

---

## 🎯 Project Objectives

- Analyze overall sales performance.
- Identify top-performing products and customers.
- Compare customer spending and purchasing behavior.
- Analyze revenue across different countries.
- Study daily revenue trends.
- Generate business insights and recommendations to support decision-making.

---

## 📂 Dataset Information

**Dataset:** Online Retail Dataset

The dataset contains approximately **50 days of retail transaction data** with the following attributes:

| Column | Description |
|---------|-------------|
| Invoice_No | Unique invoice number |
| Stock_Code | Product code |
| Description | Product name |
| Quantity | Number of units purchased |
| Invoice_Date | Date and time of purchase |
| Unit_Price | Price per unit |
| Customer_ID | Unique customer identifier |
| Country | Customer's country |

**Note:** The original Online Retail dataset contains over 541,000 records. Due to SQL Server import limitations encountered during this project, approximately 65,000 records were successfully imported and used for analysis. All SQL queries, results, and business insights in this repository are based on the imported dataset to ensure reproducibility.

---

## 🧹 Data Cleaning

To improve data quality, the following cleaning steps were performed:

- Removed cancelled orders
- Removed records with negative quantities
- Removed transactions with zero unit price
- Created a cleaned SQL View for analysis

```sql
CREATE VIEW cleaned_retail AS
SELECT *
FROM retail
WHERE Invoice_No NOT LIKE 'C%'
  AND Quantity > 0
  AND Unit_Price > 0;
```

---

# 📊 Exploratory Data Analysis (EDA)

The dataset was explored to understand:

- Total transactions
- Total customers
- Total products
- Countries served
- Date range of transactions
- Missing values
- Cancelled orders
- Invalid records

---

# ❓ Business Questions Answered

## Sales Performance

- What is the total revenue generated?
- Which countries generate the highest revenue?
- What is the average revenue per transaction?

## Product Analysis

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

# 🛠 SQL Concepts Used

- SELECT
- WHERE
- ORDER BY
- GROUP BY
- HAVING
- Aggregate Functions (`SUM`, `AVG`, `COUNT`)
- DISTINCT
- TOP
- SQL Views
- Subqueries
- Aliases
- Date Functions

---

# 📈 Key Business Insights

- The **United Kingdom** generated the highest revenue during the observed period.
- Products generating the highest revenue were not always the most frequently purchased products.
- Customers with the highest spending differed from customers placing the highest number of orders, indicating different purchasing behaviors.
- Daily revenue fluctuated throughout the analysis period without a consistent upward or downward trend.
- The dataset contains only sales information; therefore, profitability cannot be determined because cost data is unavailable.

---

# 💡 Business Recommendations

- Review the performance of low-demand products and evaluate inventory or production levels to reduce unnecessary costs.
- Continue promoting products with consistently high demand, even if they are not the highest revenue-generating products.
- Incorporate product cost information into future analyses to enable profitability-based decision-making instead of relying solely on revenue.

---

# 📁 Project Structure

```
Online-Retail-Sales-Analysis-SQL
│
├── Dataset
│   └── Online Retail.csv
│
├── SQL Queries
│   └── online_retail_analysis.sql
│
├── README.md
│
└── Screenshots
    ├── Revenue by Country.png
    ├── Top Products.png
    └── Daily Revenue Trend.png
```

---

# 💻 Tools & Technologies

- SQL Server
- SQL Server Management Studio (SSMS)
- GitHub

---

# 🚀 Skills Demonstrated

- Data Cleaning
- Exploratory Data Analysis (EDA)
- SQL Query Writing
- Aggregate Functions
- Data Aggregation
- Subqueries
- SQL Views
- Business Analysis
- Analytical Thinking
- Business Insight Generation

---

# 📌 Conclusion

This project demonstrates how SQL can be used to transform raw retail transaction data into actionable business insights. By applying data cleaning techniques, writing business-oriented SQL queries, and interpreting the results, the project highlights the role of SQL in supporting data-driven decision-making.

---

## 👩‍💻 Author

**Aashi Jain**

Bachelor of Arts Programme (Computer Applications & Mathematics)  
Lady Shri Ram College for Women
