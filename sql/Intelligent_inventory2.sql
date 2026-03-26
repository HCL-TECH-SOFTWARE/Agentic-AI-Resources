-- Drop table if exists
DROP TABLE IF EXISTS SupplierPerformance;

-- Create table
CREATE TABLE SupplierPerformance (
SupplierName TEXT,
DeliveryTimeliness INTEGER,
QualityScore INTEGER,
CostCompliance INTEGER,
ResponsivenessScore INTEGER,
LastAuditScore INTEGER,
NumberOfIncidents INTEGER
);

-- Insert sample data
INSERT INTO SupplierPerformance VALUES
('Murata Manufacturing',95,94,90,92,93,1),
('Corning Inc',92,96,88,90,91,2),
('Cisco Systems',90,97,85,89,95,1),
('TP-Link Technologies',88,89,92,85,87,3),
('Dell Technologies',91,93,87,88,90,2),
('Delta Electronics',89,91,90,86,88,2),
('Palo Alto Networks',93,95,84,91,92,1),
('Belkin International',87,88,91,84,85,3);