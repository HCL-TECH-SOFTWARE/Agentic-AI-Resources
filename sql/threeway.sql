-- This SQLite script creates and populates three tables based on the provided PDF documents:
-- 1. PurchaseOrders: Contains data from PurchaseOrders.pdf
-- 2. Invoices: Contains data from Invoice.pdf
-- 3. GoodsReceipts: Contains data from GoodsReceipt.pdf
-- This single file can be run in any SQLite environment to create the complete database.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS PurchaseOrders;
DROP TABLE IF EXISTS Invoices;
DROP TABLE IF EXISTS GoodsReceipts;

-- --------------------------------------------------------------------------------
-- Table 1: PurchaseOrders
-- Contains data extracted from PurchaseOrders.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [PurchaseOrders]
(
    [DocumentNumber] TEXT NOT NULL PRIMARY KEY,
    [ItemCode] TEXT,
    [Description] TEXT,
    [Quantity] INTEGER,
    [UnitPrice] REAL,
    [TotalPrice] REAL
);

-- --------------------------------------------------------------------------------
-- Table 2: Invoices
-- Contains data extracted from Invoice.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [Invoices]
(
    [InvoiceNumber] TEXT NOT NULL PRIMARY KEY,
    [Vendor] TEXT,
    [InvoiceDate] TEXT,
    [BilledTo] TEXT,
    [RelatedPO] TEXT,
    [ItemCode] TEXT,
    [Description] TEXT,
    [Quantity] INTEGER,
    [UnitPrice] REAL,
    [Currency] TEXT,
    [TotalPrice] REAL,
    [PaymentDueDate] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 3: GoodsReceipts
-- Contains data extracted from GoodsReceipt.pdf
-- --------------------------------------------------------------------------------
CREATE TABLE [GoodsReceipts]
(
    [DocumentNumber] TEXT NOT NULL PRIMARY KEY,
    [RelatedPONumber] TEXT,
    [ItemCode] TEXT,
    [Description] TEXT,
    [Quantity] INTEGER,
    [UnitPrice] REAL,
    [TotalPrice] REAL
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all three tables based on the provided PDF files.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate PurchaseOrders Table
INSERT INTO PurchaseOrders (DocumentNumber, ItemCode, Description, Quantity, UnitPrice, TotalPrice) VALUES
('PO1001', 'IC245', 'Industrial Capacitor', 100, 3.50, 350.00),
('PO1002', 'IC558', 'A4 Printer Paper', 50, 5.00, 250.00),
('PO1003', 'IC620', 'Thermal Sensor', 20, 12.75, 255.00),
('PO1004', 'IC310', 'LED Light Panel', 40, 18.00, 720.00),
('PO1005', 'IC888', 'Wireless Module', 60, 22.40, 1344.00);

-- Populate Invoices Table
INSERT INTO Invoices (InvoiceNumber, Vendor, InvoiceDate, BilledTo, RelatedPO, ItemCode, Description, Quantity, UnitPrice, Currency, TotalPrice, PaymentDueDate) VALUES
('INV3001', 'TechSupplier Inc.', '2025-06-14', 'HCL Technologies', 'PO1001', 'IC245', 'Industrial Capacitor', 100, 3.50, 'USD', 350.00, '2025-07-14'),
('INV3002', 'OfficeDepot Ltd.', '2025-06-16', 'HCL Technologies', 'PO1002', 'IC558', 'A4 Printer Paper', 50, 5.25, 'USD', 262.50, '2025-07-16'),
('INV3003', 'EcoBuild Co.', '2025-06-21', 'HCL Technologies', 'PO1004', 'IC310', 'LED Light Panel', 40, 18.00, 'USD', 720.00, '2025-07-21'),
('INV3004', 'TechSupplier Inc.', '2025-06-23', 'HCL Technologies', 'PO1003', 'IC620', 'Thermal Sensor', 25, 13.00, 'USD', 325.00, '2025-07-23'),
('INV3005', 'Unknown Vendor', '2025-06-24', 'HCL Technologies', 'PO9999', 'IC999', 'Ghost Item', 10, 99.99, 'USD', 999.90, '2025-07-24');

-- Populate GoodsReceipts Table
INSERT INTO GoodsReceipts (DocumentNumber, RelatedPONumber, ItemCode, Description, Quantity, UnitPrice, TotalPrice) VALUES
('GR2001', 'PO1001', 'IC245', 'Industrial Capacitor', 100, 3.50, 350.00),
('GR2002', 'PO1002', 'IC558', 'A4 Printer Paper', 48, 5.00, 240.00),
('GR2003', 'PO1003', 'IC620', 'Thermal Sensor', 20, 12.75, 255.00),
('GR2004', 'PO1004', 'IC310', 'LED Light Panel', 40, 18.00, 720.00);

COMMIT;
