# Data Analytics Assessment

This project contains SQL queries designed to address various data analytics questions related to customer accounts and transactions. Each SQL file corresponds to a specific question, and the README provides an overview of the approaches taken and challenges encountered during the assessment.

## Questions Overview

### Question 1: High-Value Customers
- **File:** `src/question1.sql`
- **Description:** This query identifies high-value customers who have both a funded savings plan and a funded investment plan. It retrieves the following fields:
  - `owner_id`
  - `name`
  - `savings_count`
  - `investment_count`
  - `total_deposits`
- **Sorting:** Results are sorted by `total_deposits` in descending order.

### Question 2: Transaction Frequency
- **File:** `src/question2.sql`
- **Description:** This query calculates the average number of transactions per customer per month and categorizes them into three frequency categories:
  - "High Frequency"
  - "Medium Frequency"
  - "Low Frequency"
- **Output:** The query returns `frequency_category`, `customer_count`, and `avg_transactions_per_month`.

### Question 3: Inactive Accounts
- **File:** `src/question3.sql`
- **Description:** This query finds all active accounts (savings or investments) that have had no transactions in the last year. It retrieves:
  - `plan_id`
  - `owner_id`
  - `type`
  - `last_transaction_date`
  - `inactivity_days`

### Question 4: Customer Lifetime Value (CLV)
- **File:** `src/question4.sql`
- **Description:** This query estimates the Customer Lifetime Value (CLV) based on account tenure and transaction volume. The output includes:
  - `customer_id`
  - `name`
  - `tenure_months`
  - `total_transactions`
  - `estimated_clv`
- **Sorting:** Results are ordered by `estimated_clv` from highest to lowest.

## Challenges Encountered
During the assessment, several challenges were faced, including:
- Understanding the data schema and relationships between different tables.
- Ensuring accurate calculations for averages and categorizations.
- Handling edge cases, such as customers with no transactions or accounts with missing data.
- Optimizing queries for performance, especially when dealing with large datasets.

This project serves as a demonstration of SQL skills and the ability to analyze customer data effectively.