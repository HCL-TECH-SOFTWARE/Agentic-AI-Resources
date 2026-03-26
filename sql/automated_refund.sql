-- This SQLite script creates a comprehensive 4-table database for refund processing.
-- All tables are populated with 20 consistent records.
-- It simulates transactions, refund requests, policy, and processed refund history.

-- --------------------------------------------------------------------------------
-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS RefundPolicy;
DROP TABLE IF EXISTS RefundRequests;
DROP TABLE IF EXISTS ProcessedRefunds;

-- --------------------------------------------------------------------------------
-- Table 1: Transactions
-- Stores customer purchase records.
-- --------------------------------------------------------------------------------
CREATE TABLE [Transactions]
(
    [TransactionID] TEXT NOT NULL PRIMARY KEY,
    [OrderID] TEXT NOT NULL,
    [CustomerID] TEXT NOT NULL,
    [PurchaseDate] TEXT,
    [Amount] REAL,
    [PaymentStatus] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: RefundPolicy
-- Defines refund rules such as refund window and status eligibility.
-- --------------------------------------------------------------------------------
CREATE TABLE [RefundPolicy]
(
    [PolicyID] INTEGER NOT NULL PRIMARY KEY,
    [RefundWindowDays] INTEGER,
    [EligiblePaymentStatus] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 3: RefundRequests
-- Contains customer-initiated refund claims.
-- --------------------------------------------------------------------------------
CREATE TABLE [RefundRequests]
(
    [RefundID] TEXT NOT NULL PRIMARY KEY,
    [OrderID] TEXT NOT NULL,
    [CustomerID] TEXT NOT NULL,
    [RequestDate] TEXT,
    [RefundAmount] REAL,
    [Status] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 4: ProcessedRefunds
-- Tracks refunds that have been executed or rejected.
-- --------------------------------------------------------------------------------
CREATE TABLE [ProcessedRefunds]
(
    [RefundID] TEXT NOT NULL PRIMARY KEY,
    [TransactionID] TEXT NOT NULL,
    [RefundDate] TEXT,
    [RefundStatus] TEXT
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all four tables with 20 records.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate RefundPolicy Table
INSERT INTO RefundPolicy (PolicyID, RefundWindowDays, EligiblePaymentStatus) VALUES
(1, 30, 'Completed');

-- Populate Transactions Table
INSERT INTO Transactions (TransactionID, OrderID, CustomerID, PurchaseDate, Amount, PaymentStatus) VALUES
('TXN-1001','ORD-5001','CUST-201','2026-01-15',120.00,'Completed'),
('TXN-1002','ORD-5002','CUST-202','2026-01-18',250.50,'Completed'),
('TXN-1003','ORD-5003','CUST-203','2025-12-20',75.00,'Completed'),
('TXN-1004','ORD-5004','CUST-204','2025-12-01',320.00,'Failed'),
('TXN-1005','ORD-5005','CUST-205','2026-02-10',450.00,'Completed'),
('TXN-1006','ORD-5006','CUST-206','2025-11-25',150.00,'Completed'),
('TXN-1007','ORD-5007','CUST-207','2026-02-20',89.99,'Completed'),
('TXN-1008','ORD-5008','CUST-208','2025-10-10',300.00,'Completed'),
('TXN-1009','ORD-5009','CUST-209','2026-01-05',500.00,'Completed'),
('TXN-1010','ORD-5010','CUST-210','2025-12-15',199.99,'Completed'),
('TXN-1011','ORD-5011','CUST-211','2026-02-01',130.00,'Completed'),
('TXN-1012','ORD-5012','CUST-212','2026-01-20',60.00,'Completed'),
('TXN-1013','ORD-5013','CUST-213','2025-12-05',220.00,'Completed'),
('TXN-1014','ORD-5014','CUST-214','2026-01-30',175.00,'Completed'),
('TXN-1015','ORD-5015','CUST-215','2026-02-15',95.00,'Failed'),
('TXN-1016','ORD-5016','CUST-216','2025-11-28',400.00,'Completed'),
('TXN-1017','ORD-5017','CUST-217','2026-01-10',50.00,'Completed'),
('TXN-1018','ORD-5018','CUST-218','2026-02-25',275.00,'Completed'),
('TXN-1019','ORD-5019','CUST-219','2025-12-30',360.00,'Completed'),
('TXN-1020','ORD-5020','CUST-220','2026-02-05',499.00,'Completed');

-- Populate RefundRequests Table
INSERT INTO RefundRequests (RefundID, OrderID, CustomerID, RequestDate, RefundAmount, Status) VALUES
('RFD-2001','ORD-5001','CUST-201','2026-02-01',120.00,'Pending'),
('RFD-2002','ORD-5002','CUST-202','2026-02-25',250.50,'Pending'),
('RFD-2003','ORD-5003','CUST-203','2026-01-25',75.00,'Pending'),
('RFD-2004','ORD-5004','CUST-204','2026-01-05',320.00,'Pending'),
('RFD-2005','ORD-5005','CUST-205','2026-02-20',450.00,'Pending'),
('RFD-2006','ORD-5006','CUST-206','2026-01-30',150.00,'Pending'),
('RFD-2007','ORD-5007','CUST-207','2026-03-05',89.99,'Pending'),
('RFD-2008','ORD-5008','CUST-208','2026-01-01',300.00,'Pending'),
('RFD-2009','ORD-5009','CUST-209','2026-02-10',500.00,'Pending'),
('RFD-2010','ORD-5010','CUST-210','2026-01-25',199.99,'Pending'),
('RFD-2011','ORD-5011','CUST-211','2026-02-10',130.00,'Pending'),
('RFD-2012','ORD-5012','CUST-212','2026-02-15',60.00,'Pending'),
('RFD-2013','ORD-5013','CUST-213','2026-01-20',220.00,'Pending'),
('RFD-2014','ORD-5014','CUST-214','2026-02-15',175.00,'Pending'),
('RFD-2015','ORD-5015','CUST-215','2026-02-25',95.00,'Pending'),
('RFD-2016','ORD-5016','CUST-216','2026-01-20',400.00,'Pending'),
('RFD-2017','ORD-5017','CUST-217','2026-02-05',50.00,'Pending'),
('RFD-2018','ORD-5018','CUST-218','2026-03-05',275.00,'Pending'),
('RFD-2019','ORD-5019','CUST-219','2026-01-10',360.00,'Pending'),
('RFD-2020','ORD-5020','CUST-220','2026-02-20',499.00,'Pending');

-- Populate ProcessedRefunds Table
INSERT INTO ProcessedRefunds (RefundID, TransactionID, RefundDate, RefundStatus) VALUES
('RFD-2003','TXN-1003','2026-02-28','Completed'),
('RFD-2006','TXN-1006','2026-02-05','Completed'),
('RFD-2010','TXN-1010','2026-02-15','Completed'),
('RFD-2015','TXN-1015','2026-02-28','Rejected');

COMMIT;