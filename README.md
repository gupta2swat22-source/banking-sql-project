# Simple Banking Database (PostgreSQL) - Single Table

A beginner-friendly PostgreSQL project that stores a small bank's data in one table. Each row is one transaction, together with the customer, account and loan details. It answers common banking questions using basic and intermediate SQL.

## Files
- `banking_single_table.sql` - one script that creates the table, inserts dummy data and runs all queries

## Table: bank_data
| Column | Meaning |
|---|---|
| transaction_id | Unique ID of the transaction |
| transaction_type | Deposit or Withdrawal |
| amount | Transaction amount |
| transaction_date | Date of the transaction |
| account_number | Account number |
| account_type | Saving or Current |
| balance | Account balance |
| customer_id, name, city | Customer details |
| loan_type, loan_amount, loan_status | Loan details (empty if no loan) |

## SQL Concepts Used
CREATE TABLE, DROP TABLE IF EXISTS, PRIMARY KEY, INSERT, SELECT, DISTINCT, WHERE, MAX, SUM, AVG, GROUP BY, ORDER BY, subquery, CASE WHEN, NULL

## Basic Queries
1. Show all customers from a given city (WHERE + DISTINCT)
2. Find the highest balance in the bank (MAX)
3. Total money deposited vs withdrawn (SUM + GROUP BY)
4. Customer names with their account balances (DISTINCT)
5. Transaction history of one account (WHERE + ORDER BY)

## Advanced Queries
6. Accounts with balance above the bank average (subquery)
7. Net money movement per account: deposits minus withdrawals (CASE WHEN + SUM)
8. Customers with an active loan and their balance (WHERE on loan_status)

## Note
Customer and account details repeat on every transaction row, so DISTINCT is used where each customer or account should appear once. A real bank would split this into separate tables.

## How to Run
1. Install PostgreSQL and pgAdmin 4
2. Create a database called `bank_db`
3. Open the Query Tool, paste the contents of `banking_single_table.sql`, and press F5
4. To see each result, select one query at a time and press F5
