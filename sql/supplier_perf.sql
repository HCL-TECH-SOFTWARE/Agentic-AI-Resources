-- Drop table if exists
DROP TABLE IF EXISTS SupplierPerformance;

CREATE TABLE [SupplierPerformance] (
    [SupplierID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [SupplierName] TEXT,
    [DeliveryTimeliness] REAL,
    [QualityScore] REAL,
    [CostCompliance] REAL,
    [ResponsivenessScore] INTEGER,
    [InnovationContribution] TEXT,
    [ContractCompliance] TEXT,
    [LastAuditScore] INTEGER,
    [NumberOfIncidents] INTEGER
);

BEGIN TRANSACTION;

INSERT INTO SupplierPerformance (SupplierName, DeliveryTimeliness, QualityScore, CostCompliance, ResponsivenessScore, InnovationContribution, ContractCompliance, LastAuditScore, NumberOfIncidents) VALUES
('Intel (Altera)', 98.5, 9.8, 99.0, 9, 'Next-gen CPUs & SoCs', 'Yes', 95, 1),
('ChairMakers Co', 96.0, 9.2, 97.5, 8, 'Ergonomic office chairs', 'Yes', 92, 2),
('Logitech Inc', 97.5, 9.7, 98.5, 9, 'High-performance peripherals', 'Yes', 94, 1),
('Cisco Systems', 95.5, 9.6, 97.0, 8, 'Networking equipment', 'Yes', 91, 3),
('Starbucks Supply Co', 92.0, 9.1, 96.0, 7, 'Coffee beans and beverages', 'Yes', 88, 2),
('OfficeNeeds', 96.8, 9.7, 97.2, 8, 'Office stationery', 'Yes', 94, 1),
('Samsung Electronics (Components)', 97.2, 9.1, 98.8, 8, 'Monitors and display panels', 'Yes', 92, 2),
('Corsair Inc', 98.0, 9.4, 99.0, 8, 'Keyboards and gaming peripherals', 'Yes', 95, 1),
('SanDisk Corporation', 97.5, 9.5, 98.5, 8, 'Flash drives & memory products', 'Yes', 93, 1),
('HydrateWell Ltd', 96.0, 9.0, 97.0, 7, 'Bottled water and hydration products', 'Yes', 90, 2),
('Philips Electronics', 97.8, 9.6, 98.2, 8, 'Lighting solutions', 'Yes', 94, 1),
('Sony Electronics', 98.3, 9.8, 99.0, 9, 'Audio & electronics products', 'Yes', 96, 0),
('Belkin Inc', 95.5, 9.3, 97.5, 7, 'Connectivity cables & adapters', 'Yes', 92, 2),
('Ikea Suppliers', 94.0, 9.1, 95.5, 6, 'Furniture & home products', 'Yes', 88, 3),
('Seagate Technology', 97.0, 9.5, 98.0, 8, 'Hard drives & storage solutions', 'Yes', 93, 1);

COMMIT;
