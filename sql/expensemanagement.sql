-- This SQLite script creates a table of personal expense transactions.
-- It is populated with 35 realistic records reflecting a mix of categories, merchants, and payment methods in India.

-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS PersonalTransactions;

-- Create the PersonalTransactions table.
CREATE TABLE [PersonalTransactions]
(
    [TransactionID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Date] TEXT,
    [Category] TEXT,
    [PaymentMethod] TEXT,
    [Merchant] TEXT,
    [Amount] REAL,
    [Recurring] TEXT
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 35 realistic transaction records.
INSERT INTO PersonalTransactions (Date, Category, PaymentMethod, Merchant, Amount, Recurring) VALUES
('2025-06-23', 'Dining', 'UPI', 'Zomato', 450.50, 'No'),
('2025-06-22', 'Shopping', 'Card', 'Amazon.in', 2199.00, 'No'),
('2025-06-22', 'Travel', 'Wallet', 'Ola', 280.00, 'No'),
('2025-06-21', 'Groceries', 'UPI', 'BigBasket', 1850.75, 'No'),
('2025-06-20', 'Entertainment', 'Card', 'BookMyShow', 880.00, 'No'),
('2025-06-20', 'Dining', 'Card', 'Swiggy', 620.00, 'No'),
('2025-06-19', 'Health', 'UPI', 'Apollo Pharmacy', 540.00, 'No'),
('2025-06-18', 'Travel', 'UPI', 'Uber', 195.00, 'No'),
('2025-06-17', 'Shopping', 'Card', 'Myntra', 3250.00, 'No'),
('2025-06-15', 'Subscriptions', 'Card', 'Netflix', 649.00, 'Yes'),
('2025-06-14', 'Dining', 'Cash', 'Local Cafe', 320.00, 'No'),
('2025-06-12', 'Utilities', 'UPI', 'BESCOM', 1250.00, 'Yes'),
('2025-06-11', 'Shopping', 'Wallet', 'Flipkart', 799.00, 'No'),
('2025-06-10', 'Health', 'Card', 'Practo', 1500.00, 'No'),
('2025-06-09', 'Travel', 'UPI', 'Namma Metro', 50.00, 'No'),
('2025-06-08', 'Dining', 'Card', 'Starbucks', 710.00, 'No'),
('2025-06-07', 'Groceries', 'UPI', 'Zepto', 950.00, 'No'),
('2025-06-05', 'Utilities', 'Wallet', 'Airtel Broadband', 1199.00, 'Yes'),
('2025-06-03', 'Shopping', 'UPI', 'Dmart', 2400.00, 'No'),
('2025-06-01', 'Travel', 'Wallet', 'Ola', 350.00, 'No'),
('2025-05-30', 'Dining', 'UPI', 'Zomato', 890.00, 'No'),
('2025-05-28', 'Shopping', 'Card', 'Amazon.in', 4599.00, 'No'),
('2025-05-25', 'Health', 'Cash', 'Local Clinic', 500.00, 'No'),
('2025-05-22', 'Travel', 'UPI', 'Uber', 220.00, 'No'),
('2025-05-20', 'Dining', 'Card', 'Barbeque Nation', 3400.00, 'No'),
('2025-05-18', 'Groceries', 'UPI', 'BigBasket', 2100.00, 'No'),
('2025-05-15', 'Subscriptions', 'Card', 'Amazon Prime', 1499.00, 'Yes'),
('2025-05-12', 'Utilities', 'UPI', 'BESCOM', 1100.00, 'Yes'),
('2025-05-10', 'Shopping', 'Card', 'H&M', 2800.00, 'No'),
('2025-05-08', 'Dining', 'Wallet', 'Swiggy', 380.00, 'No'),
('2025-05-05', 'Utilities', 'Card', 'Airtel Postpaid', 799.00, 'Yes'),
('2025-05-03', 'Travel', 'UPI', 'Indian Railways', 1850.00, 'No'),
('2025-05-01', 'Health', 'UPI', '1mg', 850.00, 'No'),
('2025-04-29', 'Shopping', 'Card', 'IKEA', 5200.00, 'No'),
('2025-04-27', 'Dining', 'UPI', 'Zomato', 550.00, 'No');

-- Commit the transaction to save the data.
COMMIT;
