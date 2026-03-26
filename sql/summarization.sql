-- ============================================================================
-- CLEAN START
-- ============================================================================
DROP TABLE IF EXISTS SalesData;
DROP TABLE IF EXISTS CompetitorPricing;
DROP TABLE IF EXISTS SupplyChainConditions;

-- ============================================================================
-- TABLE 1: SalesData
-- ============================================================================
CREATE TABLE [SalesData]
(
    [ProductID] TEXT NOT NULL PRIMARY KEY,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [UnitsSold] INTEGER,
    [Price] REAL,
    [Revenue] REAL,
    [Date] TEXT
);

-- ============================================================================
-- TABLE 2: CompetitorPricing
-- ============================================================================
CREATE TABLE [CompetitorPricing]
(
    [RecordID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductID] TEXT NOT NULL,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [Competitor] TEXT,
    [CompetitorPrice] REAL,
    [Date] TEXT,
    FOREIGN KEY (ProductID) REFERENCES SalesData(ProductID)
);

-- ============================================================================
-- TABLE 3: SupplyChainConditions
-- ============================================================================
CREATE TABLE [SupplyChainConditions]
(
    [RecordID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductID] TEXT NOT NULL,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [LeadTimeDays] INTEGER,
    [DelayRisk] TEXT,           -- 'Low', 'Medium', 'High', 'Critical'
    [LogisticsScore] INTEGER,   -- 1–100 (higher = better)
    [LastUpdated] TEXT,
    FOREIGN KEY (ProductID) REFERENCES SalesData(ProductID)
);

-- ============================================================================
-- INSERT DATA
-- ============================================================================
BEGIN TRANSACTION;

-- ---------------------------
-- Sales Data
-- ---------------------------
INSERT INTO SalesData (ProductID, ProductName, Category, UnitsSold, Price, Revenue, Date) VALUES
('IP14PM-128', 'Apple iPhone 14 Pro Max 128GB', 'Smartphones', 8200, 1099.00, 9011800.00, '2025-07-10'),
('S23U-256', 'Samsung Galaxy S23 Ultra 256GB', 'Smartphones', 10500, 1199.00, 12589500.00, '2025-07-08'),
('PIX7PRO', 'Google Pixel 7 Pro 128GB', 'Smartphones', 6200, 899.00, 5573800.00, '2025-07-09'),
('MACAIR-M2', 'Apple MacBook Air M2', 'Laptops', 4200, 1299.00, 5455800.00, '2025-07-05'),
('DELLXPS13', 'Dell XPS 13 Plus', 'Laptops', 3800, 1399.00, 5316200.00, '2025-07-03'),
('SONY-WH1000XM5', 'Sony WH-1000XM5 Headphones', 'Audio Devices', 15500, 399.00, 6184500.00, '2025-07-11'),
('BOSE-QC45', 'Bose QuietComfort 45', 'Audio Devices', 9600, 329.00, 3168000.00, '2025-07-10'),
('GARMIN-FENIX7', 'Garmin Fenix 7 Smartwatch', 'Wearables', 4700, 699.00, 3295300.00, '2025-07-07'),
('FITBIT-VERSA4', 'Fitbit Versa 4', 'Wearables', 8800, 229.00, 2015200.00, '2025-07-09'),
('ANKER-PWCORE', 'Anker PowerCore 20000 PD', 'Accessories', 25000, 59.00, 1475000.00, '2025-07-06');

-- ---------------------------
-- Competitor Pricing
-- ---------------------------
INSERT INTO CompetitorPricing (ProductID, ProductName, Category, Competitor, CompetitorPrice, Date) VALUES
('IP14PM-128', 'Apple iPhone 14 Pro Max 128GB', 'Smartphones', 'BESTBUY', 1095.00, '2025-07-09'),
('S23U-256', 'Samsung Galaxy S23 Ultra 256GB', 'Smartphones', 'AMAZON', 1190.00, '2025-07-07'),
('PIX7PRO', 'Google Pixel 7 Pro 128GB', 'Smartphones', 'FLIPKART', 895.00, '2025-07-08'),
('MACAIR-M2', 'Apple MacBook Air M2', 'Laptops', 'APPLESTORE', 1299.00, '2025-07-04'),
('DELLXPS13', 'Dell XPS 13 Plus', 'Laptops', 'NEWEGG', 1385.00, '2025-07-03'),
('SONY-WH1000XM5', 'Sony WH-1000XM5 Headphones', 'Audio Devices', 'AMAZON', 398.00, '2025-07-10'),
('BOSE-QC45', 'Bose QuietComfort 45', 'Audio Devices', 'BESTBUY', 325.00, '2025-07-09'),
('GARMIN-FENIX7', 'Garmin Fenix 7 Smartwatch', 'Wearables', 'CROMA', 690.00, '2025-07-06'),
('FITBIT-VERSA4', 'Fitbit Versa 4', 'Wearables', 'AMAZON', 228.00, '2025-07-08'),
('ANKER-PWCORE', 'Anker PowerCore 20000 PD', 'Accessories', 'FLIPKART', 58.00, '2025-07-05');

-- ---------------------------
-- Supply Chain Conditions
-- ---------------------------
INSERT INTO SupplyChainConditions (ProductID, ProductName, Category, LeadTimeDays, DelayRisk, LogisticsScore, LastUpdated) VALUES
('IP14PM-128', 'Apple iPhone 14 Pro Max 128GB', 'Smartphones', 45, 'High', 68, '2025-07-12 09:00:00'),
('S23U-256', 'Samsung Galaxy S23 Ultra 256GB', 'Smartphones', 25, 'Medium', 85, '2025-07-12 10:30:00'),
('PIX7PRO', 'Google Pixel 7 Pro 128GB', 'Smartphones', 20, 'Low', 90, '2025-07-11 15:00:00'),
('MACAIR-M2', 'Apple MacBook Air M2', 'Laptops', 50, 'High', 70, '2025-07-09 11:00:00'),
('DELLXPS13', 'Dell XPS 13 Plus', 'Laptops', 30, 'Medium', 80, '2025-07-08 13:00:00'),
('SONY-WH1000XM5', 'Sony WH-1000XM5 Headphones', 'Audio Devices', 12, 'Low', 96, '2025-07-10 16:00:00'),
('BOSE-QC45', 'Bose QuietComfort 45', 'Audio Devices', 10, 'Low', 94, '2025-07-11 17:00:00'),
('GARMIN-FENIX7', 'Garmin Fenix 7 Smartwatch', 'Wearables', 25, 'Medium', 87, '2025-07-09 14:30:00'),
('FITBIT-VERSA4', 'Fitbit Versa 4', 'Wearables', 18, 'Low', 91, '2025-07-10 12:00:00'),
('ANKER-PWCORE', 'Anker PowerCore 20000 PD', 'Accessories', 7, 'Low', 99, '2025-07-08 09:30:00');

COMMIT;
