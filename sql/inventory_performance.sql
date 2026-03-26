-- Drop table if exists
DROP TABLE IF EXISTS InventoryPerformance;

CREATE TABLE [InventoryPerformance] (
    [ItemID] TEXT PRIMARY KEY,
    [ItemName] TEXT,
    [Category] TEXT,
    [CurrentStock] INTEGER,
    [MonthlyDemand] INTEGER,
    [ReorderPoint] INTEGER,
    [SafetyStock] INTEGER,
    [LeadTimeDays] INTEGER,
    [LastRestockDate] TEXT,
    [SupplierName] TEXT
);

BEGIN TRANSACTION;

INSERT INTO InventoryPerformance (ItemID, ItemName, Category, CurrentStock, MonthlyDemand, ReorderPoint, SafetyStock, LeadTimeDays, LastRestockDate, SupplierName) VALUES
('I001', 'Laptop - 14 inch', 'Electronics', 50, 60, 55, 10, 14, '2025-09-01', 'Intel (Altera)'),
('I002', 'Office Chair', 'Furniture', 30, 40, 35, 8, 10, '2025-09-03', 'ChairMakers Co'),
('I003', 'Wireless Mouse', 'Accessories', 100, 120, 80, 12, 7, '2025-09-04', 'Logitech Inc'),
('I004', 'Router Dual Band', 'Electronics', 20, 30, 25, 5, 12, '2025-09-10', 'Cisco Systems'),
('I005', 'Coffee Beans 1kg', 'Pantry', 15, 25, 20, 4, 5, '2025-09-11', 'Starbucks Supply Co'),
('I006', 'A4 Paper Ream', 'Stationery', 180, 150, 100, 15, 3, '2025-09-15', 'OfficeNeeds'),
('I007', 'Monitor 24 inch', 'Electronics', 35, 45, 30, 10, 14, '2025-09-20', 'Samsung Electronics (Components)'),
('I008', 'Mechanical Keyboard', 'Accessories', 80, 70, 60, 9, 7, '2025-09-22', 'Corsair Inc'),
('I009', 'USB Flash Drive 32GB', 'Accessories', 200, 180, 120, 20, 5, '2025-09-25', 'SanDisk Corporation'),
('I010', 'Water Bottle 1L', 'Pantry', 50, 35, 30, 6, 4, '2025-09-27', 'HydrateWell Ltd'),
('I011', 'LED Desk Lamp', 'Electronics', 60, 50, 40, 8, 6, '2025-09-28', 'Philips Electronics'),
('I012', 'Noise Cancelling Headset', 'Electronics', 40, 35, 30, 6, 8, '2025-09-30', 'Sony Electronics'),
('I013', 'HDMI Cable 2m', 'Accessories', 120, 100, 80, 10, 5, '2025-09-28', 'Belkin Inc'),
('I014', 'Office Desk', 'Furniture', 15, 20, 15, 5, 12, '2025-09-25', 'Ikea Suppliers'),
('I015', 'External Hard Drive 1TB', 'Electronics', 25, 30, 20, 6, 10, '2025-09-27', 'Seagate Technology');

COMMIT;
