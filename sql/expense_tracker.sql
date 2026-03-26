-- Drop table if it exists
DROP TABLE IF EXISTS ExpenseTransactions;

-- Create Expense Transactions table
CREATE TABLE ExpenseTransactions (
    TransactionID INTEGER PRIMARY KEY AUTOINCREMENT,
    UserID TEXT,
    TransactionDate DATE,
    MerchantName TEXT,
    Category TEXT,
    PaymentMethod TEXT,
    Amount REAL,
    Currency TEXT,
    CategoryID INTEGER,
    Notes TEXT
);

-- Insert sample transaction data
BEGIN TRANSACTION;

INSERT INTO ExpenseTransactions 
(UserID, TransactionDate, MerchantName, Category, PaymentMethod, Amount, Currency, CategoryID, Notes) VALUES
('U001','2026-03-01','Swiggy','Food','UPI',420,'INR',101,'Dinner order'),
('U001','2026-03-02','Uber','Transportation','Card',230,'INR',102,'Office commute'),
('U001','2026-03-03','Netflix','Subscription','Card',649,'INR',103,'Monthly subscription'),
('U001','2026-03-04','Amazon','Shopping','Card',2500,'INR',104,'Electronics purchase'),
('U001','2026-03-05','Starbucks','Food','Card',350,'INR',101,'Coffee meeting'),
('U001','2026-03-06','BigBasket','Groceries','UPI',1200,'INR',105,'Weekly groceries'),
('U001','2026-03-07','Uber','Transportation','Cash',180,'INR',102,'Local ride'),
('U001','2026-03-08','Swiggy','Food','UPI',390,'INR',101,'Lunch order'),
('U001','2026-03-09','Spotify','Subscription','Card',119,'INR',103,'Music subscription'),
('U001','2026-03-10','Amazon','Shopping','Card',2100,'INR',104,'Clothing purchase'),
('U001','2026-03-11','Zomato','Food','UPI',520,'INR',101,'Dinner order'),
('U001','2026-03-12','Uber','Transportation','UPI',240,'INR',102,'Airport ride'),
('U001','2026-03-13','Reliance Smart','Groceries','UPI',980,'INR',105,'Groceries'),
('U001','2026-03-14','Decathlon','Shopping','Card',3200,'INR',104,'Sports equipment'),
('U001','2026-03-15','Swiggy','Food','UPI',450,'INR',101,'Dinner order'),
('U001','2026-03-16','Metro','Transportation','Card',120,'INR',102,'Metro commute'),
('U001','2026-03-17','Netflix','Subscription','Card',649,'INR',103,'Subscription renewal'),
('U001','2026-03-18','Apple App Store','Subscription','Card',799,'INR',103,'App purchase'),
('U001','2026-03-19','Amazon','Shopping','Card',1800,'INR',104,'Home items'),
('U001','2026-03-20','Uber','Transportation','UPI',260,'INR',102,'Office commute');

COMMIT;