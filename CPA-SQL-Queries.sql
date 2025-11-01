--- 1. EXECUTIVE SUMMARY (calculates Key metrics including MTD and PMTD valuees) ---
--- MTD calculates values from the 1st day of the current month up to today's date ---
--- PMTD calculates values in the same date range in the previous month ---
 
 --- a. Total_Loan_Applications ---
 SELECT COUNT(Loan_id) AS Total_loan_Applications
 FROM Brightshore;

 --- MTD Total loan Applications ---
 SELECT COUNT(Loan_id) AS MTD_Loan_Applications
 FROM Brightshore
 WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

 --- PMTD Total loan Applications ---
 SELECT COUNT(Loan_id) AS PMTD_Loan_Applications
 FROM Brightshore
 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

 --- b. Total Funded Amount ---
 SELECT SUM(loan_amount) AS Total_Funded_Amount
 FROM Brightshore;

 --- MTD Funded Amount ---
 SELECT SUM(loan_amount) AS MTD_Funded_Amount
 FROM Brightshore
 WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

 --- PMTD Funded Amount ---
 SELECT SUM(loan_amount) AS PMTD_Funded_Amount
 FROM Brightshore
 WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

 --- c. Total Amount Received ---
SELECT SUM(total_payment) AS Total_Amount_Received
FROM Brightshore;

--- MTD Amount Received ---
SELECT SUM(total_payment) AS MTD_Amount_Received
FROM Brightshore
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

--- PMTD Amount Received ---
SELECT SUM(total_payment) AS PMTD_Amount_Received
FROM Brightshore
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

--- d. Avg Interest rate ---
SELECT AVG(int_rate)*100 AS Average_Interest_Rate
FROM Brightshore;

--- MTD Interest Rate ---
SELECT AVG(int_rate)*100 AS MTD_Interest_Rate
FROM Brightshore
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

--- PMTD Interest Rate ---
SELECT AVG(int_rate)*100 AS PMTD_Interest_Rate
FROM Brightshore
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

--- e. Avg Debt-to-income ratio ---
SELECT AVG(dti)*100 AS Avg_DTI
FROM Brightshore;

--- MTD Avg_DTI ---
SELECT AVG(dti)*100 AS MTD_DTI
FROM Brightshore
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

--- PMTD Avg_DTI ---
SELECT AVG(dti)*100 AS PMTD_DTI
FROM Brightshore
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

--- f. Avg Income to loan ratio ---
SELECT AVG(income_to_loan_ratio) AS Avg_income_to_loan_ratio
FROM Brightshore;

--- MTD income to loan ratio ---
SELECT AVG(income_to_loan_ratio) AS MTD_income_to_loan_ratio
FROM Brightshore
WHERE MONTH(issue_date) = 12 AND YEAR(issue_date) = 2024;

--- PMTD income to loan ratio ---
SELECT AVG(income_to_loan_ratio)  AS PMTD_income_to_loan_ratio
FROM Brightshore
WHERE MONTH(issue_date) = 11 AND YEAR(issue_date) = 2024;

--- 2. LOAN STATUS REPORT (calculates key metrics in each loan_status category: fully paid, current or charged off)
SELECT (Loan_status),
	COUNT(Loan_id) AS Total_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM Brightshore
GROUP BY (loan_status)
ORDER BY Total_Applications;

--- 3. COUNT & PERCENTAGE OF GOOD AND BAD LOANS ---

--- a. Count of Good & Bad loans
SELECT
	COUNT(CASE WHEN loan_status = 'Fully Paid' THEN 1 END) AS Good_loans,
	COUNT(CASE WHEN loan_status = 'Charged Off' THEN 1 END) AS Bad_loans,
	COUNT(CASE WHEN loan_status = 'Current' THEN 1 END) AS Current_loans
FROM BrightShore;

--- b. percentage of Good and Bad loan ---
SELECT
	(CAST(COUNT(CASE WHEN loan_status = 'Fully Paid' THEN 1 END) AS DECIMAL (10, 2)) / NULLIF(COUNT(CASE WHEN loan_status IN ('Fully Paid' , 'Charged Off') THEN 1 END), 0)) * 100 AS Percentage_of_Good_Loan,
	(CAST(COUNT(CASE WHEN loan_status = 'Charged Off' THEN 1 END) AS DECIMAL (10, 2)) / NULLIF(COUNT(CASE WHEN loan_status IN ('Fully Paid' , 'Charged Off') THEN 1 END), 0)) * 100 AS Percentage_of_Bad_Loans
FROM BrightShore;

--- 4. Demographic Insights --- 

--- a. Borrower's grade ---
SELECT grade,
	COUNT(Loan_id) AS Total_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM Brightshore
GROUP BY grade
ORDER BY Total_Applications DESC;

--- b. Loan purpose ---
SELECT purpose,
	COUNT(Loan_id) AS Total_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM Brightshore
GROUP BY purpose
ORDER BY Total_Applications DESC;

--- loan purpose vs loan categoory ---
SELECT purpose,
	COUNT(CASE WHEN loan_status = 'Fully Paid' THEN 1 END) AS Good_loans,
	COUNT(CASE WHEN loan_status = 'Charged Off' THEN 1 END) AS Bad_loans
FROM Brightshore
GROUP BY purpose
ORDER BY Bad_loans DESC;

--- c. loan term ---
SELECT term,
	COUNT(Loan_id) AS Total_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM Brightshore
GROUP BY term
ORDER BY Total_Applications DESC;

--- d. employment length ---
SELECT 
	emp_length,
	COUNT(loan_id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM BrightShore
GROUP BY emp_length
ORDER BY Total_Loan_Applications DESC;

--- e. home ownership ---
SELECT
	home_ownership,
	COUNT(loan_id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM BrightShore
GROUP BY home_ownership
ORDER BY Total_Loan_Applications DESC;

--- 5. REGIONAL ANALYSIS ---
SELECT 
	address_state,
	COUNT(loan_id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM BrightShore
GROUP BY address_state
ORDER BY Total_Loan_Applications DESC;

--- 6. SEASONAL TRENDS ---
SELECT
	DATENAME(MONTH, issue_date) AS Month_name,
	COUNT(loan_id) AS Total_Loan_Applications,
	SUM(loan_amount) AS Total_Funded_Amount,
	SUM(total_payment) AS Total_Amount_Received
FROM BrightShore
GROUP BY DATENAME(MONTH, issue_date)
ORDER BY Total_Loan_Applications DESC;

--- connect database to PowerBI for visualisation ---

