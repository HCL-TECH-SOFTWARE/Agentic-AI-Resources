-- Drop table if exists
DROP TABLE IF EXISTS InventoryPerformance;

-- Create table
CREATE TABLE InventoryPerformance (
ItemID TEXT,
ItemName TEXT,
Category TEXT,
CurrentStock INTEGER,
MonthlyDemand INTEGER,
ReorderPoint INTEGER,
SafetyStock INTEGER,
LeadTimeDays INTEGER,
LastRestockDate DATE,
SupplierName TEXT
);

-- Insert sample data
INSERT INTO InventoryPerformance VALUES
('I001','Router Dual Band','Networking',20,300,50,30,7,'2026-02-15','Murata Manufacturing'),
('I002','Fiber Optic Cable','Networking',80,200,60,25,10,'2026-02-10','Corning Inc'),
('I003','Network Switch 24 Port','Networking',15,120,40,20,8,'2026-02-18','Cisco Systems'),
('I004','Wireless Access Point','Networking',60,150,50,20,6,'2026-02-20','TP-Link Technologies'),
('I005','Data Center Rack','Infrastructure',10,40,20,10,12,'2026-02-05','Dell Technologies'),
('I006','Server Power Supply','Infrastructure',35,90,45,15,9,'2026-02-12','Delta Electronics'),
('I007','Firewall Appliance','Security',12,70,30,10,11,'2026-02-08','Palo Alto Networks'),
('I008','Ethernet Patch Cable','Networking',200,350,100,50,5,'2026-02-16','Belkin International');