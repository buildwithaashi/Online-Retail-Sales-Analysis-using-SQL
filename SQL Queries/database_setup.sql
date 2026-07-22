/*
===============================================================================
                    ONLINE RETAIL SALES ANALYSIS USING SQL
===============================================================================

Author      : Aashi Jain
Database    : retail
Tool        : SQL Server Management Studio (SSMS)

Description:
This script creates the database and table structure used for the
Online Retail Sales Analysis project.

Dataset Source:
Online Retail Dataset (Kaggle)

Note:
The data can be imported into the table using the SQL Server Import
and Export Wizard after executing this script.

===============================================================================
*/

-- ============================================================================
-- Create Database
-- ============================================================================

CREATE DATABASE retail;
GO

-- ============================================================================
-- Select Database
-- ============================================================================

USE retail;
GO

-- ============================================================================
-- Create Retail Table
-- ============================================================================

CREATE TABLE retail
(
    Invoice_No     VARCHAR(20),
    Stock_Code     VARCHAR(20),
    Description    VARCHAR(255),
    Quantity       INT,
    Invoice_Date   DATETIME,
    Unit_Price     DECIMAL(10,2),
    Customer_ID    INT NULL,
    Country        VARCHAR(100)
);

GO

-- ============================================================================
-- Data Import
-- ============================================================================

/*
Import the dataset using SQL Server Import and Export Wizard.

Steps:

1. Right-click the database.
2. Select Tasks → Import Flat File.
3. Choose the dataset file.
4. Import the data into the table 'retail'.

After importing, verify the records:

*/

SELECT TOP (10) *
FROM retail;

GO

-- ============================================================================
-- Create Cleaned View
-- ============================================================================

/*
The cleaned_retail view removes:

• Cancelled orders
• Negative quantities
• Zero-priced transactions

This view is used throughout the project for analysis.
*/

CREATE VIEW cleaned_retail AS
SELECT *
FROM retail
WHERE Invoice_No NOT LIKE 'C%'
      AND Quantity > 0
      AND Unit_Price > 0;

GO

-- ============================================================================
-- Verify Cleaned Data
-- ============================================================================

SELECT TOP (10) *
FROM cleaned_retail;

GO

/*
===============================================================================
 End of Database Setup
===============================================================================
*/
