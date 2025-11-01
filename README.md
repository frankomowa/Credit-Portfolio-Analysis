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
- [Data Visualisation](#Data-Visualisation)

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

You can download the SQL Queries file that was used in this project [here](CPA-SQL-Queries.sql)

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

## Data Visualisation

### Dashboard name: Credit Portfolio Analysis Dashboard

### Purpose 
- This dashboard helps executives to effectively monitor loan performance.

### Key KPIs: 

- **Loan Applications:** This metric monitors the total volume of loan applications submitted within a specified timeframe, providing insights into customer engagement and demand for loan products.
  
- **Disbursements:** This section tracks the total monetary amount disbursed to borrowers, facilitating an understanding of lending activity and financial outflows.
  
- **Repayments:** This metric captures the total amount received from borrowers, essential for assessing cash flow and repayment performance.
  
- **Interest Rate:** This monitors the average percentage of interest charged on all loans over time, contributing to insights on pricing strategies and profitability.
  
- **MTD (Month-to-Date):** This consists of all values recorded from the 1st day of the current month through to the present date.
  
- **PMTD (Previous Month-to-Date):** This reflects all values for the same date range in the previous month, allowing for comparative analysis of performance trends.

### Dashboard Components

1. **Overview Page:**


<img width="1365" height="779" alt="Overview-Page" src="https://github.com/user-attachments/assets/0d922cb4-bf19-442b-898a-41aba1d3be6b" />

   - **Cards:** This display presents key performance indicators (KPIs), showcasing both MTD and PMTD values for quick reference.
   - **Line Chart:** This visualisation illustrates monthly trends across various KPIs, with the ability to switch between KPIs via the ‘select KPI’ pane, enabling comprehensive tracking without necessitating multiple charts.
   - **Donut Chart:** This chart depicts the distribution of loan classifications, including good, bad, and active loans, providing insights into portfolio health.
   - **Clustered Column Chart:** This chart facilitates a comparative analysis between the amounts disbursed and repayments received, segmented by loan class.
   - **Slicers:** These filtering tools allow users to segment data by month.
   - **Images/Icons:** Branding and visual.
   - **Navigation Buttons:** These facilitate seamless transitions between various dashboard pages for improved user experience.


2. **Customer Segments:**

<img width="1382" height="777" alt="Customer-Segments" src="https://github.com/user-attachments/assets/a2f86dc9-1824-406a-8b12-762f359e6f73" />

   - **Column Chart:** This visual representation compares loan applications across different categories. Users can toggle between categories through the ‘segments’ pane, which also compares the percentages of good, bad, and active loans based on loan purpose and verification status.
   - **Map:** This feature visualises loan applications geographically by region, enabling a spatial analysis of lending activities.


3. **Portfolio Details:**

<img width="1378" height="774" alt="Portfolio Details" src="https://github.com/user-attachments/assets/2d2e097e-893c-4a24-8b40-736fd4c4e8b2" />

   - **Table:** A detailed summary of the loan portfolio is provided in tabular format, allowing for a comprehensive overview of individual loan characteristics and performance.

This dashboard serves as a sophisticated tool for data analysis, designed to deliver valuable insights into loan performance, customer engagement, and financial health, thereby supporting informed decision-making within the organization. Download the Power BI report [here](Credit-Portofolio-Analysis-Dashboard.pbix)
   

