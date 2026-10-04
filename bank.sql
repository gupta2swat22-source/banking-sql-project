CREATE TABLE bank_data (
    transaction_id   INT PRIMARY KEY,
    transaction_type VARCHAR(20),    -- Deposit / Withdrawal
    amount           DECIMAL(12,2),
    transaction_date DATE,
    account_number   INT,
    account_type     VARCHAR(20),    -- Saving / Current
    balance          DECIMAL(12,2),
    customer_id      INT,
    name             VARCHAR(50),
    city             VARCHAR(50),
    loan_type        VARCHAR(20),    -- Home / Personal / Car (NULL = no loan)
    loan_amount      DECIMAL(12,2),
    loan_status      VARCHAR(20)     -- Active / Closed (NULL = no loan)
);

 ----------INSERTING DATA (10 rows) ----------
INSERT INTO bank_data VALUES
(1,  'Deposit',    10000.00, '2026-09-01', 1001, 'Saving',  50000.00,  1, 'Rahul Sharma', 'Mumbai',    'Home',     2500000.00, 'Active'),
(2,  'Withdrawal',  5000.00, '2026-09-03', 1001, 'Saving',  50000.00,  1, 'Rahul Sharma', 'Mumbai',    'Home',     2500000.00, 'Active'),
(3,  'Deposit',    30000.00, '2026-09-05', 1002, 'Current', 120000.00, 2, 'Priya Patel',  'Ahmedabad', NULL,       NULL,       NULL),
(4,  'Withdrawal',  2000.00, '2026-09-07', 1003, 'Saving',  25000.00,  3, 'Amit Singh',   'Delhi',     'Personal',  200000.00, 'Active'),
(5,  'Deposit',    15000.00, '2026-09-10', 1004, 'Saving',  75000.00,  4, 'Sneha Reddy',  'Hyderabad', 'Car',       600000.00, 'Closed'),
(6,  'Withdrawal', 10000.00, '2026-09-12', 1005, 'Current', 90000.00,  5, 'Karan Mehta',  'Mumbai',    NULL,       NULL,       NULL),
(7,  'Withdrawal',  8000.00, '2026-09-15', 1002, 'Current', 120000.00, 2, 'Priya Patel',  'Ahmedabad', NULL,       NULL,       NULL),
(8,  'Deposit',     6000.00, '2026-09-18', 1003, 'Saving',  25000.00,  3, 'Amit Singh',   'Delhi',     'Personal',  200000.00, 'Active'),
(9,  'Deposit',     4000.00, '2026-09-20', 1001, 'Saving',  50000.00,  1, 'Rahul Sharma', 'Mumbai',    'Home',     2500000.00, 'Active'),
(10, 'Deposit',    20000.00, '2026-09-25', 1005, 'Current', 90000.00,  5, 'Karan Mehta',  'Mumbai',    NULL,       NULL,       NULL);
SELECT * FROM bank_data;


