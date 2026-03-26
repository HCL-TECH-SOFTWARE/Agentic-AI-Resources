-- This SQLite script creates IT Asset Management tables.
-- It stores details of hardware and software assets used in an organization.
-- The dataset includes active, retired, and warranty-expiring assets for 2025.
-- Designed for testing IT Asset Management AI Agent.

-- Drop existing tables to start fresh.
DROP TABLE IF EXISTS HardwareAssets;
DROP TABLE IF EXISTS SoftwareAssets;

-- Create table for hardware assets.
CREATE TABLE [HardwareAssets]
(
    [AssetID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [AssetTag] TEXT,
    [Type] TEXT, -- e.g., Laptop, Desktop, Printer, Router
    [Model] TEXT,
    [Owner] TEXT,
    [Department] TEXT,
    [PurchaseDate] TEXT, -- Format: YYYY-MM-DD
    [WarrantyExpiry] TEXT,
    [Status] TEXT -- Active, Retired, Under Repair
);

-- Create table for software assets.
CREATE TABLE [SoftwareAssets]
(
    [SoftwareID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [AssetTag] TEXT,
    [Name] TEXT,
    [Version] TEXT,
    [LicenseKey] TEXT,
    [AssignedTo] TEXT,
    [ExpiryDate] TEXT,
    [Status] TEXT -- Active, Expiring Soon, Expired
);

-- Begin a transaction for efficient insertion.
BEGIN TRANSACTION;

-- Populate HardwareAssets with 25 records.
INSERT INTO HardwareAssets (AssetTag, Type, Model, Owner, Department, PurchaseDate, WarrantyExpiry, Status) VALUES
('HW-101', 'Laptop', 'Dell XPS 13', 'Rajesh Kumar', 'IT', '2023-03-10', '2026-03-10', 'Active'),
('HW-102', 'Desktop', 'HP EliteDesk 800', 'Neha Sharma', 'Finance', '2022-07-15', '2025-07-15', 'Active'),
('HW-103', 'Printer', 'Canon LBP2900B', 'Amit Verma', 'Admin', '2021-08-12', '2024-08-12', 'Retired'),
('HW-104', 'Router', 'Cisco RV340', 'IT Team', 'IT', '2024-01-20', '2027-01-20', 'Active'),
('HW-105', 'Laptop', 'Lenovo ThinkPad X1', 'Priya Singh', 'HR', '2023-11-22', '2026-11-22', 'Active'),
('HW-106', 'Desktop', 'Dell OptiPlex 7090', 'Karan Mehta', 'Engineering', '2022-10-05', '2025-10-05', 'Under Repair'),
('HW-107', 'Projector', 'Epson EB-X41', 'Training Room', 'Admin', '2021-09-18', '2024-09-18', 'Active'),
('HW-108', 'Laptop', 'HP Envy 15', 'Sonal Patel', 'Sales', '2023-05-07', '2026-05-07', 'Active'),
('HW-109', 'Desktop', 'Acer Veriton M4660G', 'Nikhil Jain', 'Design', '2020-12-10', '2023-12-10', 'Retired'),
('HW-110', 'Printer', 'HP LaserJet Pro MFP', 'Rohit Kumar', 'Operations', '2023-02-11', '2026-02-11', 'Active'),
('HW-111', 'Router', 'TP-Link Archer AX20', 'Network Team', 'IT', '2022-06-17', '2025-06-17', 'Active'),
('HW-112', 'Laptop', 'Apple MacBook Pro 14"', 'Megha Jain', 'Design', '2024-03-03', '2027-03-03', 'Active'),
('HW-113', 'Scanner', 'Fujitsu ScanSnap iX1500', 'Admin', 'Admin', '2021-05-29', '2024-05-29', 'Retired'),
('HW-114', 'Monitor', 'LG UltraWide 34"', 'Aarav Gupta', 'Engineering', '2023-08-14', '2026-08-14', 'Active'),
('HW-115', 'Laptop', 'Asus ZenBook 14', 'Isha Reddy', 'Finance', '2024-02-20', '2027-02-20', 'Active'),
('HW-116', 'Desktop', 'HP Pavilion 590', 'Tanya Dey', 'Support', '2022-01-30', '2025-01-30', 'Active'),
('HW-117', 'Router', 'Netgear Nighthawk', 'Network Team', 'IT', '2023-09-09', '2026-09-09', 'Active'),
('HW-118', 'Printer', 'Brother HL-L2321D', 'Aditi Sharma', 'Admin', '2022-05-16', '2025-05-16', 'Under Repair'),
('HW-119', 'Laptop', 'HP ProBook 450', 'Suresh Naik', 'HR', '2021-11-25', '2024-11-25', 'Active'),
('HW-120', 'Monitor', 'Samsung 27"', 'Harish Rao', 'Sales', '2023-04-10', '2026-04-10', 'Active'),
('HW-121', 'Laptop', 'Lenovo IdeaPad 5', 'Training Dept', 'Admin', '2020-08-22', '2023-08-22', 'Retired'),
('HW-122', 'Desktop', 'HP EliteOne 800', 'Security', 'Operations', '2024-01-12', '2027-01-12', 'Active'),
('HW-123', 'Router', 'Ubiquiti EdgeRouter', 'Network Admin', 'IT', '2023-03-15', '2026-03-15', 'Active'),
('HW-124', 'Printer', 'Epson L3150', 'Manoj Patel', 'Admin', '2021-10-10', '2024-10-10', 'Active'),
('HW-125', 'Laptop', 'Dell Latitude 7420', 'Varun Rao', 'IT', '2023-06-05', '2026-06-05', 'Active');

-- Populate SoftwareAssets with 25 records.
INSERT INTO SoftwareAssets (AssetTag, Name, Version, LicenseKey, AssignedTo, ExpiryDate, Status) VALUES
('SW-201', 'Microsoft 365', '2024', 'XXXX-YYYY-ZZZZ-1111', 'Rajesh Kumar', '2025-12-31', 'Active'),
('SW-202', 'Zoom', '5.15', 'ZOOM-9876-ABCD', 'Priya Singh', '2024-11-10', 'Expiring Soon'),
('SW-203', 'Adobe Photoshop', '2023', 'ADOBE-1234-5678', 'Megha Jain', '2026-05-05', 'Active'),
('SW-204', 'Slack', '4.37', 'SLACK-2025-KEY', 'IT Team', '2025-08-15', 'Active'),
('SW-205', 'AutoCAD', '2024', 'ACAD-8888-9999', 'Aarav Gupta', '2026-02-10', 'Active'),
('SW-206', 'Notion', '3.9', 'NOTION-KEY-2222', 'Finance', '2025-09-20', 'Active'),
('SW-207', 'Jira', '9.1', 'JIRA-KEY-3344', 'IT', '2026-03-25', 'Active'),
('SW-208', 'Confluence', '8.5', 'CONF-KEY-4433', 'IT', '2025-07-30', 'Active'),
('SW-209', 'Figma', '7.2', 'FIGMA-KEY-9911', 'Design', '2025-10-10', 'Active'),
('SW-210', 'Tableau', '2023', 'TABLEAU-KEY-5522', 'Analytics', '2026-06-15', 'Active'),
('SW-211', 'Zoom', '5.14', 'ZOOM-8765-XYZ', 'Sales', '2024-10-01', 'Expiring Soon'),
('SW-212', 'Tally ERP 9', '6.6', 'TALLY-1111-2222', 'Finance', '2025-05-05', 'Active'),
('SW-213', 'QuickBooks', '2023', 'QB-KEY-9988', 'Accounts', '2025-12-10', 'Active'),
('SW-214', 'Google Workspace', '2024', 'GWS-KEY-6677', 'Admin', '2025-09-01', 'Active'),
('SW-215', 'Visual Studio', '2022', 'VS-KEY-4455', 'Engineering', '2025-03-10', 'Active'),
('SW-216', 'GitHub Enterprise', '2025', 'GHE-KEY-1234', 'Engineering', '2026-03-01', 'Active'),
('SW-217', 'AWS CLI', '2.13', 'AWS-KEY-7777', 'DevOps', '2026-12-31', 'Active'),
('SW-218', 'Docker Desktop', '4.10', 'DOCKER-KEY-5555', 'DevOps', '2026-05-10', 'Active'),
('SW-219', 'MS Project', '2023', 'MSP-KEY-2233', 'PMO', '2025-08-05', 'Active'),
('SW-220', 'Power BI', '2023', 'PBI-KEY-8899', 'Analytics', '2025-10-20', 'Active'),
('SW-221', 'VS Code', '1.88', 'VSCODE-KEY-9999', 'Developers', '2026-07-07', 'Active'),
('SW-222', 'Postman', '10.21', 'POSTMAN-KEY-4321', 'Developers', '2025-05-22', 'Active'),
('SW-223', 'Bitwarden', '2025', 'BW-KEY-1212', 'IT Security', '2026-01-12', 'Active'),
('SW-224', 'Canva Pro', '2025', 'CANVA-KEY-9876', 'Marketing', '2025-09-09', 'Expiring Soon'),
('SW-225', 'Notepad++', '8.6', 'NP-KEY-0001', 'General Use', '2030-01-01', 'Active');

-- Commit transaction to save all data.
COMMIT;
