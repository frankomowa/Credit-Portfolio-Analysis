# Credit Portfolio Analysis

# Table of Contents

- [Project Overview](#Project-Overview)
- [Data Sources](#Data-Sources)
- [Tools](#Tools)
- [Data Cleaning/Preparation](#Data-Cleaning/Preparation)
- [Exploratory Data Analysis (EDA)](#Exploratory-Data-Analysis-(EDA))
- [Data Analysis](#Data-Analysis)
- [Results/Findings](#Results/Findings)
- [Recommendations](#Recommendations)

## Project Overview

This data analysis project aims to examine the credit risk and loan performance of a digital lending platform over the years, providing insights into what constitutes good and bad loans, identifying loan KPIs and key risk indicators, and creating a multi-dashboard Power BI report for loan monitoring and credit strategy.

## Data Sources

The primary dataset used for this analysis is the company's loan data, containing detailed information about each loan application made by the organisation.

## Tools

- Google Sheets - For initial data cleaning
- MSSQL - For Exploratory Data Analysis (EDA) and KPI querying
- Power BI - For interactive dashboard creation

## Data Cleaning/Preparation

An initial data cleaning was conducted before the exploratory data analysis. The following steps were taken to clean the dataset:
1. Data loading and inspection
2. Handling missing values and removing duplicates
3. Handling formatting
4. Validating data

## Exploratory Data Analysis (EDA)

EDA involved exploring the dataset to identify KPIs, loan status, borrowers' profiles, regional analysis and sales trends.

## Data Analysis

You can find the SQL Queries that were used in this project [here](CPA-SQL-Queries.sql)

## Results/Findings

### 1. Loan Performance Metrics
- Good Loans: 83.33% of total loan applications are categorised as good loans, indicating that these loans have been fully repaid.
- Bad Loans: 13.82% are classified as bad loans, representing instances of deficits and unpaid amounts.
- Active Loans: 2.55% are currently active, which are in the process of being repaid.

### 2. Monthly Trend
- An analysis of loan distribution and repayment patterns over the past year indicates a notable monthly increase.

### 3. Borrower's Purpose
- A significant proportion (46.67%) of loan applications were submitted for loan refinancing. Notably, this category also represents the highest incidence of bad loans, accounting for 49% of the total bad loan cases identified.

### 4. Regional Distribution
- The analysis found no substantial variance in loan applications across different regions. However, it is noteworthy that Lancashire leads with the highest total of loan applications, with 2,321 entries submitted.

## Recommendations

Right now, the overall loan book looks healthy, but the following actions are recommended:

### 1. Refinancing loans need closer attention

Refinancing looks riskier than other loan types. We should:
- Tighten approval checks for refinancing applications (e.g., verify more financial details).
- Review active refinancing loans more often to catch early warning signs of repayment trouble.
- Adjust pricing or loan terms for higher-risk refinancing cases so we can cover potential losses.

### 2. Investigate why refinancing borrowers are defaulting

We should dig deeper to understand why refinancing customers struggle more. Possible areas to check:
- Are they already heavily indebted when applying?
- Are they using refinancing to delay existing payment issues?
- Are there product or marketing factors attracting riskier borrowers?

### 3. Prioritise collections and recovery for bad refinancing loans

- Since many bad loans come from refinancing, focusing collection and recovery resources here could improve recovery rates and reduce losses faster.

### 4. Add an early monitor for active loans

- Create a model to flag active loans when they exceed a specific threshold to facilitate early detection of bad loans

### 5. Keep monitoring regional performance, especially Lancashire

- Lancashire has the most loan activity, so it deserves attention for operations and resource planning.

### 6. Regularly track loan performance metrics

We should regularly monitor the Credit Portfolio dashboard going forward to:
- Prevent future losses
- Take faster actions, and
- Make more confident lending decisions.


   

