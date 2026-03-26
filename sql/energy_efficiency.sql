-- This SQLite script creates and populates three tables used by the
-- Energy Efficiency Assessment AI Agent.
-- The tables store building energy consumption data, equipment runtime,
-- and peak load metrics used to analyze inefficiencies and generate
-- energy optimization recommendations.

-- Drop existing tables to ensure idempotent execution
DROP TABLE IF EXISTS BuildingEnergyUsage;
DROP TABLE IF EXISTS EquipmentEnergyUsage;
DROP TABLE IF EXISTS PeakLoadRecords;

-- --------------------------------------------------------------------------------
-- Table 1: BuildingEnergyUsage
-- Stores overall energy consumption data for buildings and facilities.
-- --------------------------------------------------------------------------------
CREATE TABLE [BuildingEnergyUsage]
(
    [RecordID] TEXT NOT NULL PRIMARY KEY,
    [BuildingID] TEXT,
    [FacilityName] TEXT,
    [Date] TEXT,
    [TotalEnergyKWh] INTEGER,
    [EnergyCostUSD] INTEGER
);

-- --------------------------------------------------------------------------------
-- Table 2: EquipmentEnergyUsage
-- Stores energy consumption and runtime data for specific equipment.
-- --------------------------------------------------------------------------------
CREATE TABLE [EquipmentEnergyUsage]
(
    [EquipmentRecordID] TEXT NOT NULL PRIMARY KEY,
    [BuildingID] TEXT,
    [EquipmentType] TEXT,
    [RuntimeHours] INTEGER,
    [EnergyConsumptionKWh] INTEGER,
    [OperatingStatus] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 3: PeakLoadRecords
-- Tracks peak electricity load levels within facilities.
-- --------------------------------------------------------------------------------
CREATE TABLE [PeakLoadRecords]
(
    [PeakRecordID] TEXT NOT NULL PRIMARY KEY,
    [BuildingID] TEXT,
    [Date] TEXT,
    [PeakLoadKW] INTEGER,
    [PeakTime] TEXT
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate BuildingEnergyUsage
INSERT INTO BuildingEnergyUsage
(RecordID, BuildingID, FacilityName, Date, TotalEnergyKWh, EnergyCostUSD)
VALUES
('ENG001','BLD001','Head Office','2026-01-10',5200,780),
('ENG002','BLD002','Manufacturing Plant','2026-01-10',8900,1340),
('ENG003','BLD003','Warehouse Facility','2026-01-10',3100,470),
('ENG004','BLD001','Head Office','2026-01-15',5400,810),
('ENG005','BLD002','Manufacturing Plant','2026-01-15',9200,1380),
('ENG006','BLD003','Warehouse Facility','2026-01-15',2950,450),
('ENG007','BLD001','Head Office','2026-01-20',5600,840),
('ENG008','BLD002','Manufacturing Plant','2026-01-20',9600,1450),
('ENG009','BLD003','Warehouse Facility','2026-01-20',3000,455),
('ENG010','BLD004','Retail Store','2026-01-20',2100,320);

-- Populate EquipmentEnergyUsage
INSERT INTO EquipmentEnergyUsage
(EquipmentRecordID, BuildingID, EquipmentType, RuntimeHours, EnergyConsumptionKWh, OperatingStatus)
VALUES
('EQ001','BLD001','HVAC',18,1200,'Active'),
('EQ002','BLD001','Lighting',20,800,'Active'),
('EQ003','BLD002','Industrial Machinery',22,3500,'Active'),
('EQ004','BLD002','HVAC',16,1500,'Active'),
('EQ005','BLD003','Lighting',14,600,'Active'),
('EQ006','BLD003','Cooling System',15,700,'Active'),
('EQ007','BLD004','Lighting',18,500,'Active'),
('EQ008','BLD004','HVAC',16,650,'Active'),
('EQ009','BLD001','Server Cooling',24,900,'Active'),
('EQ010','BLD002','Packaging Machine',20,1800,'Active');

-- Populate PeakLoadRecords
INSERT INTO PeakLoadRecords
(PeakRecordID, BuildingID, Date, PeakLoadKW, PeakTime)
VALUES
('PK001','BLD001','2026-01-10',450,'14:30'),
('PK002','BLD002','2026-01-10',820,'15:10'),
('PK003','BLD003','2026-01-10',270,'13:20'),
('PK004','BLD001','2026-01-15',480,'14:45'),
('PK005','BLD002','2026-01-15',860,'15:25'),
('PK006','BLD003','2026-01-15',260,'13:40'),
('PK007','BLD001','2026-01-20',500,'15:00'),
('PK008','BLD002','2026-01-20',900,'15:30'),
('PK009','BLD003','2026-01-20',275,'13:50'),
('PK010','BLD004','2026-01-20',190,'12:40');

COMMIT;