-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS SalesData;
DROP TABLE IF EXISTS CompetitorPricing;
DROP TABLE IF EXISTS SupplyChainConditions;

-- --------------------------------------------------------------------------------
-- Table 1: SalesData
-- Contains sales figures and revenue data, mimicking a forecast validation sheet.
-- --------------------------------------------------------------------------------
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

-- --------------------------------------------------------------------------------
-- Table 2: CompetitorPricing
-- Contains competitive intelligence, tracking competitor prices for the same products.
-- --------------------------------------------------------------------------------
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

-- --------------------------------------------------------------------------------
-- Table 3: SupplyChainConditions
-- Contains logistics and supply chain data, like lead times and risk factors.
-- --------------------------------------------------------------------------------
CREATE TABLE [SupplyChainConditions]
(
    [RecordID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductID] TEXT NOT NULL,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [LeadTimeDays] INTEGER,
    [DelayRisk] TEXT, -- 'Low', 'Medium', 'High', 'Critical'
    [LogisticsScore] INTEGER, -- A score from 1-100 indicating supply chain reliability
    [LastUpdated] TEXT,
    FOREIGN KEY (ProductID) REFERENCES SalesData(ProductID)
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all three tables with 10 consistent product entries.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

INSERT INTO SalesData (ProductID, ProductName, Category, UnitsSold, Price, Revenue, Date) VALUES
('STM32F407VGT6', 'STMicro MCU Cortex-M4', 'Microcontrollers', 12550, 9.55, 119852.50, '2025-06-15'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 55200, 2.15, 118680.00, '2025-06-14'),
('ESP32-WROOM-32E', 'Espressif Wi-Fi/BT SoC', 'Connectivity', 85300, 4.20, 358260.00, '2025-06-20'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 7500, 15.50, 116250.00, '2025-05-30'),
('AD797BRZ', 'Analog Devices Op-Amp', 'Analog', 9800, 11.25, 110250.00, '2025-06-18'),
('LTC6268IS6#TRMPBF', 'Analog FET-Input Op-Amp', 'Analog', 22000, 5.80, 127600.00, '2025-06-11'),
('NCP1117ST33T3G', 'onsemi 1A LDO Regulator', 'Power Management', 150000, 0.45, 67500.00, '2025-06-22'),
('TPS54560DDAR', 'TI 60V Step-Down Converter', 'Power Management', 18500, 6.75, 124875.00, '2025-06-17'),
('MPU-6050', 'TDK 6-Axis Gyro/Accel', 'Sensors', 62000, 3.85, 238700.00, '2025-06-19'),
('BME280', 'Bosch Humidity/Pressure/Temp Sensor', 'Sensors', 41000, 2.90, 118900.00, '2025-06-12');

INSERT INTO CompetitorPricing (ProductID, ProductName, Category, Competitor, CompetitorPrice, Date) VALUES
('STM32F407VGT6', 'STMicro MCU Cortex-M4', 'Microcontrollers', 'DIGIKEY', 9.62, '2025-06-14'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 'ARROW', 2.12, '2025-06-13'),
('ESP32-WROOM-32E', 'Espressif Wi-Fi/BT SoC', 'Connectivity', 'MOUSER', 4.15, '2025-06-19'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 'NEWELEMENT', 15.75, '2025-05-29'),
('AD797BRZ', 'Analog Devices Op-Amp', 'Analog', 'DIGIKEY', 11.35, '2025-06-17'),
('LTC6268IS6#TRMPBF', 'Analog FET-Input Op-Amp', 'Analog', 'FUTURE', 5.75, '2025-06-12'),
('NCP1117ST33T3G', 'onsemi 1A LDO Regulator', 'Power Management', 'FUTURE', 0.44, '2025-06-21'),
('TPS54560DDAR', 'TI 60V Step-Down Converter', 'Power Management', 'MOUSER', 6.70, '2025-06-16'),
('MPU-6050', 'TDK 6-Axis Gyro/Accel', 'Sensors', 'SPARKFUN', 3.95, '2025-06-18'),
('BME280', 'Bosch Humidity/Pressure/Temp Sensor', 'Sensors', 'ADAFRUIT', 2.95, '2025-06-11');

INSERT INTO SupplyChainConditions (ProductID, ProductName, Category, LeadTimeDays, DelayRisk, LogisticsScore, LastUpdated) VALUES
('STM32F407VGT6', 'STMicro MCU Cortex-M4', 'Microcontrollers', 45, 'Medium', 78, '2025-06-24 10:00:00'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 14, 'Low', 95, '2025-06-24 11:30:00'),
('ESP32-WROOM-32E', 'Espressif Wi-Fi/BT SoC', 'Connectivity', 7, 'Low', 98, '2025-06-23 18:00:00'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 90, 'High', 65, '2025-06-20 09:00:00'),
('AD797BRZ', 'Analog Devices Op-Amp', 'Analog', 60, 'Medium', 72, '2025-06-22 14:00:00'),
('LTC6268IS6#TRMPBF', 'Analog FET-Input Op-Amp', 'Analog', 20, 'Low', 90, '2025-06-21 15:00:00'),
('NCP1117ST33T3G', 'onsemi 1A LDO Regulator', 'Power Management', 5, 'Low', 99, '2025-06-24 12:00:00'),
('TPS54560DDAR', 'TI 60V Step-Down Converter', 'Power Management', 30, 'Low', 88, '2025-06-21 16:30:00'),
('MPU-6050', 'TDK 6-Axis Gyro/Accel', 'Sensors', 21, 'Low', 92, '2025-06-23 11:00:00'),
('BME280', 'Bosch Humidity/Pressure/Temp Sensor', 'Sensors', 25, 'Low', 90, '2025-06-19 15:00:00');

COMMIT;
