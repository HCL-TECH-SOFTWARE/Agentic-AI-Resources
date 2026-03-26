-- This SQLite script creates a comprehensive 5-table database for an electronics distributor like Avnet.
-- All tables are populated with 40 consistent records, simulating customer, inventory, product, sales, and supplier data.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS CustomerData;
DROP TABLE IF EXISTS InventoryReport;
DROP TABLE IF EXISTS ProductMaster;
DROP TABLE IF EXISTS SalesDemand;
DROP TABLE IF EXISTS SupplierData;

-- --------------------------------------------------------------------------------
-- Table 1: CustomerData
-- Tracks customer segment behavior and return rates at the SKU level.
-- --------------------------------------------------------------------------------
CREATE TABLE [CustomerData]
(
    [RecordID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [SKU] TEXT NOT NULL,
    [CustomerSegment] TEXT, -- 'B2B' or 'B2C'
    [ReturnRate] REAL
);

-- --------------------------------------------------------------------------------
-- Table 2: InventoryReport
-- Simulates a real-time warehouse dashboard for inventory levels and alerts.
-- --------------------------------------------------------------------------------
CREATE TABLE [InventoryReport]
(
    [SKU] TEXT NOT NULL PRIMARY KEY,
    [StockLevel] INTEGER,
    [ReorderPoint] INTEGER,
    [ShelfLifeDays] INTEGER, -- Using -1 for infinite shelf life
    [CriticalStock] TEXT -- 'Yes' or 'No'
);

-- --------------------------------------------------------------------------------
-- Table 3: ProductMaster
-- Acts as the central product catalog with pricing and cost information.
-- --------------------------------------------------------------------------------
CREATE TABLE [ProductMaster]
(
    [SKU] TEXT NOT NULL PRIMARY KEY,
    [Category] TEXT,
    [UnitPrice] REAL,
    [CostPerUnit] REAL
);

-- --------------------------------------------------------------------------------
-- Table 4: SalesDemand
-- Simulates a daily planning log for tracking sales vs. forecasted demand.
-- --------------------------------------------------------------------------------
CREATE TABLE [SalesDemand]
(
    [LogID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Date] TEXT,
    [SKU] TEXT NOT NULL,
    [SalesQuantity] INTEGER,
    [DemandForecast] INTEGER,
    [Promotion] TEXT, -- 'Yes' or 'No'
    [CustomerSegment] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 5: SupplierData
-- Contains supplier performance and logistics data for sourcing.
-- --------------------------------------------------------------------------------
CREATE TABLE [SupplierData]
(
    [SKU] TEXT NOT NULL PRIMARY KEY,
    [LeadTimeDays] INTEGER,
    [SupplierReliability] REAL, -- Scale from 0.0 to 1.0
    [MOQ] INTEGER, -- Minimum Order Quantity
    [ShippingCost] REAL -- Per order or unit, depending on context
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all five tables with 40 consistent, cross-referenced records.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- SKU-List for consistency
-- MCU-STM32G071, CON-ESP32S3, SEN-BME280, PWR-LM7805, PAS-R0603-10K, ... 35 more

-- Populate ProductMaster (First, to establish the products)
INSERT INTO ProductMaster (SKU, Category, UnitPrice, CostPerUnit) VALUES
('MCU-STM32G071', 'Microcontroller', 3.10, 2.05),
('CON-ESP32S3', 'Connectivity', 4.85, 3.20),
('SEN-BME280', 'Sensor', 3.50, 2.30),
('PWR-LM7805', 'Power IC', 0.45, 0.15),
('PAS-R0603-10K', 'Resistor', 0.02, 0.005),
('FPGA-ICE40UP5K', 'FPGA', 12.75, 8.50),
('MEM-W25Q128', 'Memory', 1.40, 0.80),
('ANA-MCP3008', 'Analog IC', 1.90, 1.10),
('DRV-DRV8825', 'Driver IC', 2.35, 1.45),
('SEN-VL53L1X', 'Sensor', 3.25, 2.15),
('CON-NRF52840', 'Connectivity', 8.90, 5.80),
('PAS-C0805-100N', 'Capacitor', 0.03, 0.008),
('PWR-AMS1117-3.3', 'Power IC', 0.38, 0.12),
('ANA-ADXL345', 'Analog IC', 4.95, 3.30),
('MCU-RP2040', 'Microcontroller', 1.00, 0.65),
('MEM-24LC256', 'Memory', 0.70, 0.40),
('DRV-L298N', 'Driver IC', 1.60, 0.95),
('SEN-DS18B20', 'Sensor', 1.15, 0.75),
('FPGA-XC7A35T', 'FPGA', 95.00, 62.00),
('CON-SIM7600G', 'Connectivity', 29.50, 20.00),
('PWR-TPS54560', 'Power IC', 6.80, 4.50),
('PAS-L0805-10U', 'Inductor', 0.25, 0.10),
('ANA-INA219', 'Analog IC', 1.75, 1.05),
('MCU-ATTINY85', 'Microcontroller', 1.45, 0.90),
('MEM-MT41K256', 'Memory', 15.80, 10.50),
('DRV-ULN2003', 'Driver IC', 0.40, 0.18),
('SEN-SHT31', 'Sensor', 2.80, 1.85),
('FPGA-EP4CE6E22', 'FPGA', 28.90, 19.00),
('CON-RA02-LORA', 'Connectivity', 5.60, 3.70),
('PWR-MCP73831', 'Power IC', 0.80, 0.50),
('PAS-D-1N4007', 'Diode', 0.05, 0.015),
('ANA-MCP4725', 'Analog IC', 1.50, 0.92),
('MCU-ESP8266-12F', 'Microcontroller', 2.10, 1.35),
('MEM-CY7C1041', 'Memory', 7.80, 5.10),
('DRV-TB6612FNG', 'Driver IC', 2.00, 1.25),
('SEN-MPU6050', 'Sensor', 4.10, 2.70),
('FPGA-ECP5-5G', 'FPGA', 160.00, 105.00),
('CON-NEO-M8N', 'Connectivity', 20.50, 13.50),
('PWR-MIC29302', 'Power IC', 5.30, 3.50),
('PAS-T-BC547', 'Transistor', 0.08, 0.03);

-- Populate InventoryReport
INSERT INTO InventoryReport (SKU, StockLevel, ReorderPoint, ShelfLifeDays, CriticalStock) VALUES
('MCU-STM32G071', 8500, 2000, -1, 'No'),
('CON-ESP32S3', 15000, 3000, -1, 'No'),
('SEN-BME280', 4500, 1000, 1825, 'No'),
('PWR-LM7805', 250, 500, -1, 'Yes'),
('PAS-R0603-10K', 850000, 100000, -1, 'No'),
('FPGA-ICE40UP5K', 800, 200, -1, 'No'),
('MEM-W25Q128', 12000, 2500, -1, 'No'),
('ANA-MCP3008', 9500, 1500, -1, 'No'),
('DRV-DRV8825', 1800, 500, -1, 'No'),
('SEN-VL53L1X', 3000, 800, 1825, 'No'),
('CON-NRF52840', 400, 100, -1, 'Yes'),
('PAS-C0805-100N', 950000, 150000, -1, 'No'),
('PWR-AMS1117-3.3', 45000, 10000, -1, 'No'),
('ANA-ADXL345', 1200, 300, -1, 'No'),
('MCU-RP2040', 28000, 5000, -1, 'No'),
('MEM-24LC256', 16000, 4000, -1, 'No'),
('DRV-L298N', 5500, 1000, -1, 'No'),
('SEN-DS18B20', 11000, 2000, -1, 'No'),
('FPGA-XC7A35T', 150, 50, -1, 'Yes'),
('CON-SIM7600G', 250, 80, -1, 'No'),
('PWR-TPS54560', 4800, 1000, -1, 'No'),
('PAS-L0805-10U', 65000, 15000, -1, 'No'),
('ANA-INA219', 3900, 800, -1, 'No'),
('MCU-ATTINY85', 18000, 3500, -1, 'No'),
('MEM-MT41K256', 300, 100, 1095, 'Yes'),
('DRV-ULN2003', 21000, 5000, -1, 'No'),
('SEN-SHT31', 4200, 1000, 1825, 'No'),
('FPGA-EP4CE6E22', 280, 80, -1, 'No'),
('CON-RA02-LORA', 1900, 400, -1, 'No'),
('PWR-MCP73831', 8000, 2000, -1, 'No'),
('PAS-D-1N4007', 480000, 100000, -1, 'No'),
('ANA-MCP4725', 6800, 1500, -1, 'No'),
('MCU-ESP8266-12F', 17000, 4000, -1, 'No'),
('MEM-CY7C1041', 450, 150, -1, 'Yes'),
('DRV-TB6612FNG', 3400, 800, -1, 'No'),
('SEN-MPU6050', 6100, 1200, -1, 'No'),
('FPGA-ECP5-5G', 80, 25, -1, 'Yes'),
('CON-NEO-M8N', 550, 150, -1, 'No'),
('PWR-MIC29302', 900, 250, -1, 'No'),
('PAS-T-BC547', 250000, 50000, -1, 'No');

-- Populate SupplierData
INSERT INTO SupplierData (SKU, LeadTimeDays, SupplierReliability, MOQ, ShippingCost) VALUES
('MCU-STM32G071', 28, 0.97, 500, 1500.00),
('CON-ESP32S3', 21, 0.98, 1000, 1200.00),
('SEN-BME280', 35, 0.95, 250, 1800.00),
('PWR-LM7805', 14, 0.96, 5000, 1000.00),
('PAS-R0603-10K', 10, 0.98, 100000, 800.00),
('FPGA-ICE40UP5K', 45, 0.92, 100, 2500.00),
('MEM-W25Q128', 25, 0.97, 2000, 1100.00),
('ANA-MCP3008', 22, 0.96, 1000, 1300.00),
('DRV-DRV8825', 30, 0.94, 500, 1400.00),
('SEN-VL53L1X', 38, 0.95, 250, 1900.00),
('CON-NRF52840', 50, 0.93, 100, 2800.00),
('PAS-C0805-100N', 12, 0.98, 100000, 850.00),
('PWR-AMS1117-3.3', 15, 0.97, 5000, 1000.00),
('ANA-ADXL345', 32, 0.95, 200, 1700.00),
('MCU-RP2040', 18, 0.98, 2000, 1200.00),
('MEM-24LC256', 20, 0.96, 2500, 1150.00),
('DRV-L298N', 28, 0.94, 1000, 1350.00),
('SEN-DS18B20', 24, 0.95, 1500, 1250.00),
('FPGA-XC7A35T', 65, 0.9, 50, 3500.00),
('CON-SIM7600G', 42, 0.92, 80, 2900.00),
('PWR-TPS54560', 26, 0.97, 500, 1600.00),
('PAS-L0805-10U', 16, 0.96, 10000, 900.00),
('ANA-INA219', 29, 0.96, 400, 1450.00),
('MCU-ATTINY85', 21, 0.97, 2000, 1200.00),
('MEM-MT41K256', 55, 0.91, 100, 3200.00),
('DRV-ULN2003', 19, 0.95, 3000, 1100.00),
('SEN-SHT31', 33, 0.96, 300, 1800.00),
('FPGA-EP4CE6E22', 60, 0.91, 60, 3400.00),
('CON-RA02-LORA', 31, 0.94, 500, 1500.00),
('PWR-MCP73831', 23, 0.97, 1000, 1250.00),
('PAS-D-1N4007', 11, 0.98, 50000, 800.00),
('ANA-MCP4725', 27, 0.96, 800, 1300.00),
('MCU-ESP8266-12F', 20, 0.98, 1500, 1200.00),
('MEM-CY7C1041', 58, 0.9, 100, 3100.00),
('DRV-TB6612FNG', 29, 0.95, 600, 1400.00),
('SEN-MPU6050', 25, 0.97, 1000, 1500.00),
('FPGA-ECP5-5G', 75, 0.88, 25, 4000.00),
('CON-NEO-M8N', 40, 0.93, 100, 2600.00),
('PWR-MIC29302', 36, 0.94, 200, 1900.00),
('PAS-T-BC547', 14, 0.97, 20000, 850.00);

-- Populate CustomerData
INSERT INTO CustomerData (SKU, CustomerSegment, ReturnRate) VALUES
('MCU-STM32G071', 'B2B', 0.005),('CON-ESP32S3', 'B2C', 0.015),('SEN-BME280', 'B2B', 0.01),('PWR-LM7805', 'B2C', 0.008),
('PAS-R0603-10K', 'B2B', 0.001),('FPGA-ICE40UP5K', 'B2C', 0.025),('MEM-W25Q128', 'B2B', 0.006),('ANA-MCP3008', 'B2C', 0.012),
('DRV-DRV8825', 'B2C', 0.02),('SEN-VL53L1X', 'B2B', 0.011),('CON-NRF52840', 'B2B', 0.018),('PAS-C0805-100N', 'B2B', 0.001),
('PWR-AMS1117-3.3', 'B2C', 0.009),('ANA-ADXL345', 'B2C', 0.022),('MCU-RP2040', 'B2C', 0.01),('MEM-24LC256', 'B2B', 0.004),
('DRV-L298N', 'B2C', 0.03),('SEN-DS18B20', 'B2C', 0.013),('FPGA-XC7A35T', 'B2B', 0.015),('CON-SIM7600G', 'B2B', 0.028),
('PWR-TPS54560', 'B2B', 0.007),('PAS-L0805-10U', 'B2B', 0.002),('ANA-INA219', 'B2C', 0.014),('MCU-ATTINY85', 'B2C', 0.008),
('MEM-MT41K256', 'B2B', 0.02),('DRV-ULN2003', 'B2C', 0.01),('SEN-SHT31', 'B2B', 0.012),('FPGA-EP4CE6E22', 'B2B', 0.016),
('CON-RA02-LORA', 'B2C', 0.021),('PWR-MCP73831', 'B2C', 0.011),('PAS-D-1N4007', 'B2B', 0.002),('ANA-MCP4725', 'B2C', 0.013),
('MCU-ESP8266-12F', 'B2C', 0.018),('MEM-CY7C1041', 'B2B', 0.025),('DRV-TB6612FNG', 'B2C', 0.019),('SEN-MPU6050', 'B2C', 0.024),
('FPGA-ECP5-5G', 'B2B', 0.02),('CON-NEO-M8N', 'B2B', 0.023),('PWR-MIC29302', 'B2B', 0.009),('PAS-T-BC547', 'B2C', 0.005);


-- Populate SalesDemand
INSERT INTO SalesDemand (Date, SKU, SalesQuantity, DemandForecast, Promotion, CustomerSegment) VALUES
('2025-06-23', 'MCU-STM32G071', 150, 160, 'No', 'B2B'),
('2025-06-23', 'CON-ESP32S3', 300, 280, 'Yes', 'B2C'),
('2025-06-23', 'SEN-BME280', 80, 100, 'No', 'B2B'),
('2025-06-23', 'PWR-LM7805', 1200, 1000, 'Yes', 'B2C'),
('2025-06-23', 'PAS-R0603-10K', 50000, 55000, 'No', 'B2B'),
('2025-06-23', 'FPGA-ICE40UP5K', 30, 40, 'No', 'B2C'),
('2025-06-23', 'MEM-W25Q128', 450, 400, 'No', 'B2B'),
('2025-06-23', 'ANA-MCP3008', 250, 220, 'Yes', 'B2C'),
('2025-06-23', 'DRV-DRV8825', 100, 110, 'No', 'B2C'),
('2025-06-23', 'SEN-VL53L1X', 90, 80, 'No', 'B2B'),
('2025-06-24', 'CON-NRF52840', 20, 25, 'No', 'B2B'),
('2025-06-24', 'PAS-C0805-100N', 75000, 80000, 'No', 'B2B'),
('2025-06-24', 'PWR-AMS1117-3.3', 2500, 2200, 'Yes', 'B2C'),
('2025-06-24', 'ANA-ADXL345', 50, 60, 'No', 'B2C'),
('2025-06-24', 'MCU-RP2040', 1000, 900, 'Yes', 'B2C'),
('2025-06-24', 'MEM-24LC256', 800, 850, 'No', 'B2B'),
('2025-06-24', 'DRV-L298N', 200, 220, 'No', 'B2C'),
('2025-06-24', 'SEN-DS18B20', 600, 550, 'Yes', 'B2C'),
('2025-06-24', 'FPGA-XC7A35T', 5, 10, 'No', 'B2B'),
('2025-06-24', 'CON-SIM7600G', 15, 20, 'No', 'B2B'),
('2025-06-25', 'PWR-TPS54560', 120, 130, 'No', 'B2B'),
('2025-06-25', 'PAS-L0805-10U', 3000, 3500, 'No', 'B2B'),
('2025-06-25', 'ANA-INA219', 150, 140, 'Yes', 'B2C'),
('2025-06-25', 'MCU-ATTINY85', 900, 800, 'Yes', 'B2C'),
('2025-06-25', 'MEM-MT41K256', 10, 15, 'No', 'B2B'),
('2025-06-25', 'DRV-ULN2003', 1100, 1000, 'No', 'B2C'),
('2025-06-25', 'SEN-SHT31', 70, 85, 'No', 'B2B'),
('2025-06-25', 'FPGA-EP4CE6E22', 8, 12, 'No', 'B2B'),
('2025-06-25', 'CON-RA02-LORA', 80, 70, 'Yes', 'B2C'),
('2025-06-25', 'PWR-MCP73831', 400, 450, 'No', 'B2C'),
('2025-06-26', 'PAS-D-1N4007', 30000, 32000, 'No', 'B2B'),
('2025-06-26', 'ANA-MCP4725', 280, 250, 'No', 'B2C'),
('2025-06-26', 'MCU-ESP8266-12F', 750, 700, 'Yes', 'B2C'),
('2025-06-26', 'MEM-CY7C1041', 12, 18, 'No', 'B2B'),
('2025-06-26', 'DRV-TB6612FNG', 140, 150, 'No', 'B2C'),
('2025-06-26', 'SEN-MPU6050', 210, 200, 'Yes', 'B2C'),
('2025-06-26', 'FPGA-ECP5-5G', 4, 8, 'No', 'B2B'),
('2025-06-26', 'CON-NEO-M8N', 25, 30, 'No', 'B2B'),
('2025-06-26', 'PWR-MIC29302', 40, 50, 'No', 'B2B'),
('2025-06-26', 'PAS-T-BC547', 15000, 14000, 'No', 'B2C');


COMMIT;
