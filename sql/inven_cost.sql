-- ============================================
-- INVENTORY COST REDUCTION DATASET (SQLITE)
-- ============================================

PRAGMA foreign_keys = ON;

-- =========================
-- TABLE: vendors
-- =========================
CREATE TABLE vendors (
    vendor_id TEXT PRIMARY KEY,
    vendor_name TEXT,
    vendor_rating REAL,
    preferred_vendor_flag INTEGER,
    contract_id TEXT
);

INSERT INTO vendors VALUES
('V001','Prime Industrial Supplies',4.2,1,'C001'),
('V002','Axis Mechanical Traders',4.0,0,'C002'),
('V003','HydroTech Systems',4.5,1,'C003'),
('V004','Global Pump Distributors',4.1,0,'C004'),
('V005','SafeHands Corp',4.8,1,'C005'),
('V006','Bulk Industrial Mart',3.9,0,'C006'),
('V007','LubePro Industries',4.4,1,'C007'),
('V008','ElectroBuild Solutions',4.6,1,'C008'),
('V009','PowerControl Ltd',4.0,0,'C009');

-- =========================
-- TABLE: purchase_orders
-- =========================
CREATE TABLE purchase_orders (
    po_id TEXT PRIMARY KEY,
    order_date TEXT,
    item_id TEXT,
    item_name TEXT,
    category TEXT,
    vendor_id TEXT,
    unit_price REAL,
    quantity_ordered INTEGER,
    business_unit TEXT,
    payment_terms TEXT,
    FOREIGN KEY (vendor_id) REFERENCES vendors(vendor_id)
);

INSERT INTO purchase_orders VALUES
('PO1001','2026-01-05','ITM001','Industrial Bearings','Mechanical','V001',52.00,180,'Manufacturing','Net 30'),
('PO1002','2026-01-12','ITM001','Industrial Bearings','Mechanical','V002',48.50,150,'Manufacturing','Net 45'),
('PO1003','2026-02-02','ITM001','Industrial Bearings','Mechanical','V001',53.50,190,'Manufacturing','Net 30'),

('PO1004','2026-01-15','ITM002','Hydraulic Pump','Mechanical','V003',780.00,12,'Manufacturing','Net 60'),
('PO1005','2026-02-10','ITM002','Hydraulic Pump','Mechanical','V004',720.00,15,'Manufacturing','Net 30'),

('PO1006','2026-01-08','ITM003','Safety Gloves','Consumables','V005',4.80,950,'Operations','Net 30'),
('PO1007','2026-01-22','ITM003','Safety Gloves','Consumables','V005',4.75,980,'Operations','Net 30'),
('PO1008','2026-02-05','ITM003','Safety Gloves','Consumables','V006',5.40,500,'Operations','Net 45'),

('PO1009','2026-01-18','ITM004','Industrial Lubricant','Consumables','V007',32.00,290,'Maintenance','Net 30'),
('PO1010','2026-02-14','ITM004','Industrial Lubricant','Consumables','V007',33.50,310,'Maintenance','Net 30'),

('PO1011','2026-01-25','ITM005','Control Panel Unit','Electrical','V008',2400.00,6,'Engineering','Net 60'),
('PO1012','2026-02-20','ITM005','Control Panel Unit','Electrical','V009',2200.00,5,'Engineering','Net 45');

-- =========================
-- TABLE: historical_price_benchmark
-- =========================
CREATE TABLE historical_price_benchmark (
    item_id TEXT PRIMARY KEY,
    average_market_price REAL
);

INSERT INTO historical_price_benchmark VALUES
('ITM001',49.00),
('ITM002',730.00),
('ITM003',4.60),
('ITM004',31.00),
('ITM005',2250.00);

-- =========================
-- TABLE: category_budget
-- =========================
CREATE TABLE category_budget (
    category TEXT PRIMARY KEY,
    annual_budget REAL
);

INSERT INTO category_budget VALUES
('Mechanical',500000),
('Consumables',250000),
('Electrical',400000);

-- ============================================
-- END OF FILE
-- ============================================