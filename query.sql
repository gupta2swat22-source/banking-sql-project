-- ----------5 BASIC QUERIES ----------

-- Q1. Customers from Mumbai (DISTINCT removes repeated rows)
SELECT DISTINCT customer_id, name, city
FROM bank_data
WHERE city = 'Mumbai';

-- Q2. Highest balance in the bank
SELECT MAX(balance) AS highest_balance
FROM bank_data;

-- Q3. Total deposited vs withdrawn
SELECT transaction_type, SUM(amount) AS total_amount
FROM bank_data
GROUP BY transaction_type;

-- Q4. Customer names with their account balances (no JOIN needed)
SELECT DISTINCT name, account_number, balance
FROM bank_data
ORDER BY account_number;

-- Q5. Transaction history of account 1001
SELECT transaction_id, transaction_type, amount, transaction_date
FROM bank_data
WHERE account_number = 1001
ORDER BY transaction_date;

-- ----------3 ADVANCED QUERIES ----------

-- Q6. Accounts with balance above the bank's average balance (subquery)
-- Inner part picks each account once, so the average is not distorted by repeated rows
SELECT DISTINCT account_number, balance
FROM bank_data
WHERE balance > (SELECT AVG(balance)
                 FROM (SELECT DISTINCT account_number, balance FROM bank_data) AS one_row_per_account);

-- Q7. Net money movement per account (CASE: deposits minus withdrawals)
SELECT account_number,
       SUM(CASE WHEN transaction_type = 'Deposit'
                THEN amount ELSE -amount END) AS net_change
FROM bank_data
GROUP BY account_number
ORDER BY account_number;

-- Q8. Customers with an ACTIVE loan, plus their account balance
SELECT DISTINCT name, loan_type, loan_amount, balance
FROM bank_data
WHERE loan_status = 'Active';