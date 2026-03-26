-- This SQLite script creates a richer dataset for Sales Forecasting Agent


-- --------------------------------------------------------------------------------
-- Drop existing tables
DROP TABLE IF EXISTS SalesData;
DROP TABLE IF EXISTS Products;
DROP TABLE IF EXISTS Regions;
DROP TABLE IF EXISTS Customers;
DROP TABLE IF EXISTS MarketingCampaigns;

-- --------------------------------------------------------------------------------
-- Tables
CREATE TABLE Products (
    ProductID TEXT PRIMARY KEY,
    ProductName TEXT,
    Category TEXT,
    Price REAL
);

CREATE TABLE Regions (
    RegionID TEXT PRIMARY KEY,
    RegionName TEXT
);

CREATE TABLE Customers (
    CustomerID TEXT PRIMARY KEY,
    RegionID TEXT,
    CustomerType TEXT
);

CREATE TABLE SalesData (
    SaleID TEXT PRIMARY KEY,
    ProductID TEXT,
    CustomerID TEXT,
    RegionID TEXT,
    SaleDate TEXT,
    UnitsSold INTEGER,
    Revenue REAL,
    Discount REAL
);

CREATE TABLE MarketingCampaigns (
    CampaignID TEXT PRIMARY KEY,
    ProductID TEXT,
    RegionID TEXT,
    StartDate TEXT,
    EndDate TEXT,
    Budget REAL,
    Channel TEXT
);

-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Products
INSERT INTO Products VALUES
('P001','iPhone 13','Electronics',8000),
('P002','Samsung S21','Electronics',7500),
('P003','Nike Shoes','Fashion',3000),
('P004','Dell Laptop','Electronics',15000),
('P005','Office Chair','Furniture',2000);

-- Regions
INSERT INTO Regions VALUES
('R001','North'),
('R002','South'),
('R003','East'),
('R004','West');

-- Customers (20)
INSERT INTO Customers VALUES
('C001','R001','Premium'),('C002','R002','Regular'),('C003','R003','Premium'),
('C004','R004','Regular'),('C005','R001','Wholesale'),('C006','R002','Premium'),
('C007','R003','Regular'),('C008','R004','Wholesale'),('C009','R001','Regular'),
('C010','R002','Premium'),('C011','R003','Wholesale'),('C012','R004','Regular'),
('C013','R001','Premium'),('C014','R002','Regular'),('C015','R003','Premium'),
('C016','R004','Wholesale'),('C017','R001','Regular'),('C018','R002','Premium'),
('C019','R003','Regular'),('C020','R004','Premium');

-- SalesData (40 rows for better forecasting)
INSERT INTO SalesData VALUES
('S001','P001','C001','R001','2026-01-01',10,80000,0),
('S002','P002','C002','R002','2026-01-02',8,60000,5),
('S003','P003','C003','R003','2026-01-03',15,45000,10),
('S004','P004','C004','R004','2026-01-04',5,75000,0),
('S005','P005','C005','R001','2026-01-05',12,24000,20),
('S006','P001','C006','R002','2026-01-06',14,112000,0),
('S007','P002','C007','R003','2026-01-07',9,67500,0),
('S008','P003','C008','R004','2026-01-08',20,60000,15),
('S009','P004','C009','R001','2026-01-09',6,90000,0),
('S010','P005','C010','R002','2026-01-10',10,20000,0),

('S011','P001','C011','R003','2026-02-01',11,88000,0),
('S012','P002','C012','R004','2026-02-02',7,52500,0),
('S013','P003','C013','R001','2026-02-03',18,54000,5),
('S014','P004','C014','R002','2026-02-04',4,60000,0),
('S015','P005','C015','R003','2026-02-05',13,26000,10),
('S016','P001','C016','R004','2026-02-06',9,72000,0),
('S017','P002','C017','R001','2026-02-07',6,45000,0),
('S018','P003','C018','R002','2026-02-08',16,48000,20),
('S019','P004','C019','R003','2026-02-09',5,75000,0),
('S020','P005','C020','R004','2026-02-10',11,22000,0),

('S021','P001','C001','R001','2026-03-01',25,200000,0), -- anomaly spike
('S022','P002','C002','R002','2026-03-02',5,37500,0),
('S023','P003','C003','R003','2026-03-03',14,42000,5),
('S024','P004','C004','R004','2026-03-04',3,45000,0),
('S025','P005','C005','R001','2026-03-05',20,40000,25),
('S026','P001','C006','R002','2026-03-06',13,104000,0),
('S027','P002','C007','R003','2026-03-07',8,60000,0),
('S028','P003','C008','R004','2026-03-08',19,57000,10),
('S029','P004','C009','R001','2026-03-09',6,90000,0),
('S030','P005','C010','R002','2026-03-10',9,18000,0),

('S031','P001','C011','R003','2026-03-11',12,96000,0),
('S032','P002','C012','R004','2026-03-12',7,52500,0),
('S033','P003','C013','R001','2026-03-13',17,51000,5),
('S034','P004','C014','R002','2026-03-14',5,75000,0),
('S035','P005','C015','R003','2026-03-15',14,28000,10),
('S036','P001','C016','R004','2026-03-16',10,80000,0),
('S037','P002','C017','R001','2026-03-17',6,45000,0),
('S038','P003','C018','R002','2026-03-18',15,45000,15),
('S039','P004','C019','R003','2026-03-19',4,60000,0),
('S040','P005','C020','R004','2026-03-20',12,24000,0);

-- MarketingCampaigns
INSERT INTO MarketingCampaigns VALUES
('CAMP01','P001','R001','2026-01-01','2026-01-31',50000,'Online'),
('CAMP02','P002','R002','2026-02-01','2026-02-28',40000,'TV'),
('CAMP03','P003','R003','2026-03-01','2026-03-31',30000,'Social'),
('CAMP04','P004','R004','2026-01-15','2026-02-15',45000,'Online'),
('CAMP05','P005','R001','2026-02-10','2026-03-10',20000,'Email');

COMMIT;