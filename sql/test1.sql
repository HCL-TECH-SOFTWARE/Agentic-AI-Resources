-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS BudgetExpenses;

-- Create the BudgetExpenses table.
CREATE TABLE BudgetExpenses (
    ExpenseID INTEGER PRIMARY KEY AUTOINCREMENT,
    Category TEXT,
    Type TEXT,       -- 'Fixed' or 'Variable'
    Amount REAL,
    Priority TEXT,   -- 'High', 'Medium', 'Low'
    Date TEXT        -- Format: YYYY-MM-DD
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 50 realistic expense records.
INSERT INTO BudgetExpenses (Category, Type, Amount, Priority, Date) VALUES
('Rent', 'Fixed', 35000.00, 'High', '2025-05-01'),
('Rent', 'Fixed', 35000.00, 'High', '2025-06-01'),
('Investments', 'Fixed', 20000.00, 'High', '2025-05-05'),
('Investments', 'Fixed', 20000.00, 'High', '2025-06-05'),
('Groceries', 'Variable', 14500.00, 'High', '2025-05-02'),
('Groceries', 'Variable', 15200.00, 'High', '2025-06-02'),
('Utilities', 'Variable', 4200.00, 'High', '2025-05-07'),
('Utilities', 'Variable', 3850.00, 'High', '2025-06-07'),
('Transportation', 'Variable', 6500.00, 'High', '2025-05-31'),
('Transportation', 'Variable', 5900.00, 'High', '2025-06-30'),
('Dining Out', 'Variable', 9800.00, 'Medium', '2025-05-28'),
('Dining Out', 'Variable', 8500.00, 'Medium', '2025-06-28'),
('Internet', 'Fixed', 1199.00, 'High', '2025-05-10'),
('Internet', 'Fixed', 1199.00, 'High', '2025-06-10'),
('Phone Bill', 'Fixed', 599.00, 'High', '2025-05-12'),
('Phone Bill', 'Fixed', 599.00, 'High', '2025-06-12'),
('Subscriptions', 'Fixed', 950.00, 'Low', '2025-05-15'),
('Subscriptions', 'Fixed', 950.00, 'Low', '2025-06-15'),
('Insurance', 'Fixed', 2100.00, 'High', '2025-05-05'),
('Insurance', 'Fixed', 2100.00, 'High', '2025-06-05'),
('Gym Membership', 'Fixed', 2500.00, 'Medium', '2025-05-08'),
('Gym Membership', 'Fixed', 2500.00, 'Medium', '2025-06-08'),
('Personal Care', 'Variable', 3200.00, 'Medium', '2025-05-18'),
('Personal Care', 'Variable', 2800.00, 'Medium', '2025-06-18'),
('Household Supplies', 'Variable', 2200.00, 'Medium', '2025-05-09'),
('Household Supplies', 'Variable', 1900.00, 'Medium', '2025-06-09'),
-- One-time expenses to create deficit in May
('Electronics', 'Variable', 32000.00, 'Low', '2025-05-20'),
('Travel', 'Variable', 25000.00, 'Low', '2025-05-24'),
('Medical', 'Variable', 8500.00, 'High', '2025-05-16'),
('Vehicle Maintenance', 'Variable', 7200.00, 'High', '2025-05-11'),
('Gifts', 'Variable', 4500.00, 'Medium', '2025-05-19'),
('Clothing', 'Variable', 6800.00, 'Medium', '2025-05-21'),
-- Expenses for other months
('Rent', 'Fixed', 35000.00, 'High', '2025-04-01'),
('Investments', 'Fixed', 20000.00, 'High', '2025-04-05'),
('Groceries', 'Variable', 14800.00, 'High', '2025-04-02'),
('Utilities', 'Variable', 4500.00, 'High', '2025-04-07'),
('Transportation', 'Variable', 6100.00, 'High', '2025-04-30'),
('Dining Out', 'Variable', 9200.00, 'Medium', '2025-04-28'),
('Internet', 'Fixed', 1199.00, 'High', '2025-04-10'),
('Phone Bill', 'Fixed', 599.00, 'High', '2025-04-12'),
('Subscriptions', 'Fixed', 950.00, 'Low', '2025-04-15'),
('Insurance', 'Fixed', 2100.00, 'High', '2025-04-05'),
('Gym Membership', 'Fixed', 2500.00, 'Medium', '2025-04-08'),
('Electronics', 'Variable', 2800.00, 'Low', '2025-04-18'),
('Entertainment', 'Variable', 1200.00, 'Low', '2025-04-26'),
('Medical', 'Variable', 900.00, 'High', '2025-06-11'),
('Home Repair', 'Variable', 4500.00, 'High', '2025-06-20'),
('Clothing', 'Variable', 5500.00, 'Medium', '2025-06-22'),
('Books', 'Variable', 1800.00, 'Medium', '2025-06-14'),
('Charity', 'Variable', 2000.00, 'Medium', '2025-06-24'),
('Pet Supplies', 'Variable', 3500.00, 'Medium', '2025-06-16');

-- Commit the transaction to save the data.
COMMIT;
