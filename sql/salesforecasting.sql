-- This SQLite script creates a comprehensive database for sales forecasting.
-- It includes three interconnected tables: HistoricalSales, ProductDetails, and MarketingCalendar.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS HistoricalSales;
DROP TABLE IF EXISTS ProductDetails;
DROP TABLE IF EXISTS MarketingCalendar;

-- --------------------------------------------------------------------------------
-- Table 1: ProductDetails
-- Contains static information and attributes for each product.
-- --------------------------------------------------------------------------------
CREATE TABLE [ProductDetails]
(
    [SKU] TEXT NOT NULL PRIMARY KEY,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [LifecycleStage] TEXT, -- 'Introduction', 'Growth', 'Maturity', 'Decline'
    [LaunchDate] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: HistoricalSales
-- Contains the core time-series data of past sales transactions.
-- --------------------------------------------------------------------------------
CREATE TABLE [HistoricalSales]
(
    [SaleID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Date] TEXT NOT NULL,
    [SKU] TEXT NOT NULL,
    [UnitsSold] INTEGER,
    [UnitPrice] REAL,
    [Region] TEXT, -- 'North', 'South', 'West', 'East'
    FOREIGN KEY (SKU) REFERENCES ProductDetails(SKU)
);

-- --------------------------------------------------------------------------------
-- Table 3: MarketingCalendar
-- Tracks promotional events and campaigns that could influence sales.
-- --------------------------------------------------------------------------------
CREATE TABLE [MarketingCalendar]
(
    [EventID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [EventDate] TEXT NOT NULL,
    [EventName] TEXT,
    [Region] TEXT, -- 'National' or a specific region
    [DiscountPercentage] REAL
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all three tables with realistic, interconnected data.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate ProductDetails Table (The master product list)
INSERT INTO ProductDetails (SKU, ProductName, Category, LifecycleStage, LaunchDate) VALUES
('MCU-STM32F4', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 'Maturity', '2021-01-15'),
('CON-ESP32S3', 'Espressif Systems Wi-Fi/BT SoC Module', 'Connectivity', 'Growth', '2023-03-10'),
('SEN-BME280', 'Bosch Environmental Sensor', 'Sensors', 'Maturity', '2022-05-20'),
('PWR-LM7805', '5V Linear Voltage Regulator', 'Power ICs', 'Maturity', '2020-01-01'),
('FPGA-ICE40', 'Lattice iCE40 FPGA', 'FPGAs', 'Growth', '2023-08-01'),
('MEM-W25Q128', 'Winbond 128Mbit SPI Flash', 'Memory', 'Maturity', '2021-11-05'),
('ANA-MCP3008', 'Microchip 8-Channel ADC', 'Analog ICs', 'Maturity', '2020-07-22'),
('DRV-L298N', 'Dual H-Bridge Motor Driver', 'Driver ICs', 'Decline', '2019-01-30'),
('RF-NRF52840', 'Nordic Semiconductor BLE5/NFC SoC', 'Connectivity', 'Growth', '2023-06-18'),
('SEN-DS18B20', '1-Wire Digital Temperature Sensor', 'Sensors', 'Maturity', '2020-02-14');

-- Populate HistoricalSales Table (80 rows for a rich history)
INSERT INTO HistoricalSales (Date, SKU, UnitsSold, UnitPrice, Region) VALUES
('2023-01-05', 'MCU-STM32F4', 250, 750.00, 'South'),
('2023-01-10', 'CON-ESP32S3', 80, 400.00, 'West'),
('2023-01-12', 'SEN-BME280', 400, 280.00, 'North'),
('2023-01-26', 'PWR-LM7805', 5000, 35.00, 'National'), -- Republic Day influence
('2023-02-08', 'MCU-STM32F4', 280, 755.00, 'West'),
('2023-02-14', 'DRV-L298N', 1500, 110.00, 'South'),
('2023-02-20', 'MEM-W25Q128', 800, 105.00, 'North'),
('2023-03-01', 'CON-ESP32S3', 120, 400.00, 'South'),
('2023-03-08', 'SEN-BME280', 450, 280.00, 'East'),
('2023-03-15', 'ANA-MCP3008', 600, 150.00, 'West'),
('2023-04-10', 'MCU-STM32F4', 300, 760.00, 'North'),
('2023-04-18', 'SEN-DS18B20', 1200, 90.00, 'South'),
('2023-04-25', 'PWR-LM7805', 3500, 38.00, 'West'),
('2023-05-05', 'MEM-W25Q128', 950, 110.00, 'East'),
('2023-05-12', 'CON-ESP32S3', 150, 405.00, 'West'),
('2023-05-21', 'DRV-L298N', 1300, 105.00, 'North'),
('2023-06-06', 'MCU-STM32F4', 320, 765.00, 'South'),
('2023-06-15', 'SEN-BME280', 500, 285.00, 'West'),
('2023-06-22', 'ANA-MCP3008', 750, 155.00, 'North'),
('2023-07-07', 'SEN-DS18B20', 1500, 92.00, 'East'),
('2023-07-18', 'CON-ESP32S3', 200, 410.00, 'South'),
('2023-07-25', 'PWR-LM7805', 3800, 40.00, 'West'),
('2023-08-15', 'MCU-STM32F4', 450, 750.00, 'National'), -- Independence Day Sale
('2023-08-20', 'MEM-W25Q128', 1100, 115.00, 'West'),
('2023-09-01', 'FPGA-ICE40', 50, 1050.00, 'South'),
('2023-09-09', 'SEN-BME280', 550, 290.00, 'North'),
('2023-09-18', 'ANA-MCP3008', 800, 160.00, 'East'),
('2023-09-25', 'DRV-L298N', 1100, 100.00, 'West'),
('2023-10-10', 'CON-ESP32S3', 250, 415.00, 'South'),
('2023-10-24', 'RF-NRF52840', 100, 680.00, 'West'),
('2023-11-12', 'MCU-STM32F4', 800, 720.00, 'National'), -- Diwali Sale
('2023-11-12', 'CON-ESP32S3', 600, 380.00, 'National'), -- Diwali Sale
('2023-11-12', 'SEN-DS18B20', 2500, 85.00, 'National'), -- Diwali Sale
('2023-11-20', 'FPGA-ICE40', 70, 1050.00, 'North'),
('2023-12-05', 'PWR-LM7805', 4200, 42.00, 'East'),
('2023-12-15', 'MEM-W25Q128', 1200, 120.00, 'West'),
('2023-12-25', 'SEN-BME280', 700, 275.00, 'South'), -- Christmas Offer
('2024-01-05', 'MCU-STM32F4', 350, 770.00, 'South'),
('2024-01-11', 'RF-NRF52840', 150, 685.00, 'North'),
('2024-01-26', 'ANA-MCP3008', 1000, 150.00, 'National'), -- Republic Day
('2024-02-08', 'CON-ESP32S3', 300, 420.00, 'West'),
('2024-02-15', 'FPGA-ICE40', 90, 1060.00, 'West'),
('2024-02-22', 'DRV-L298N', 900, 95.00, 'South'),
('2024-03-01', 'MCU-STM32F4', 380, 775.00, 'North'),
('2024-03-10', 'SEN-BME280', 600, 295.00, 'East'),
('2024-03-18', 'PWR-LM7805', 4500, 45.00, 'West'),
('2024-03-25', 'SEN-DS18B20', 1800, 95.00, 'South'),
('2024-04-07', 'CON-ESP32S3', 350, 425.00, 'West'),
('2024-04-14', 'MEM-W25Q128', 1400, 125.00, 'North'),
('2024-04-22', 'ANA-MCP3008', 850, 165.00, 'East'),
('2024-05-05', 'FPGA-ICE40', 120, 1070.00, 'South'),
('2024-05-15', 'MCU-STM32F4', 400, 780.00, 'West'),
('2024-05-25', 'RF-NRF52840', 200, 690.00, 'East'),
('2024-06-01', 'SEN-BME280', 650, 300.00, 'North'),
('2024-06-10', 'DRV-L298N', 800, 90.00, 'West'),
('2024-06-18', 'PWR-LM7805', 4800, 48.00, 'South'),
('2024-07-05', 'CON-ESP32S3', 400, 430.00, 'East'),
('2024-07-15', 'SEN-DS18B20', 2000, 98.00, 'West'),
('2024-07-25', 'MEM-W25Q128', 1500, 130.00, 'North'),
('2024-08-15', 'FPGA-ICE40', 180, 1020.00, 'National'), -- Independence Day Sale
('2024-08-22', 'MCU-STM32F4', 420, 785.00, 'South'),
('2024-09-02', 'ANA-MCP3008', 900, 170.00, 'West'),
('2024-09-11', 'RF-NRF52840', 250, 695.00, 'North'),
('2024-09-20', 'SEN-BME280', 700, 305.00, 'East'),
('2024-10-02', 'PWR-LM7805', 6000, 45.00, 'National'), -- Gandhi Jayanti Offer
('2024-10-15', 'CON-ESP32S3', 450, 435.00, 'West'),
('2024-10-31', 'MCU-STM32F4', 950, 730.00, 'National'), -- Diwali Sale
('2024-10-31', 'FPGA-ICE40', 250, 980.00, 'National'), -- Diwali Sale
('2024-11-10', 'MEM-W25Q128', 1800, 135.00, 'South'),
('2024-11-18', 'DRV-L298N', 700, 85.00, 'North'),
('2024-12-05', 'RF-NRF52840', 300, 700.00, 'East'),
('2024-12-15', 'SEN-DS18B20', 2200, 100.00, 'West'),
('2024-12-25', 'CON-ESP32S3', 600, 410.00, 'National'), -- Christmas Offer
('2025-01-05', 'MCU-STM32F4', 450, 790.00, 'South'),
('2025-01-15', 'SEN-BME280', 750, 310.00, 'North'),
('2025-01-26', 'PWR-LM7805', 6500, 48.00, 'National'),
('2025-02-10', 'FPGA-ICE40', 150, 1080.00, 'West');

-- Populate MarketingCalendar Table
INSERT INTO MarketingCalendar (EventDate, EventName, Region, DiscountPercentage) VALUES
('2023-01-26', 'Republic Day Offer', 'National', 5.0),
('2023-08-15', 'Independence Day Sale', 'National', 10.0),
('2023-11-01', 'Diwali Tech Fest', 'National', 15.0), -- Start of sale
('2023-11-12', 'Diwali Peak Sale', 'National', 20.0), -- Peak day
('2023-12-25', 'Christmas Special', 'South', 10.0),
('2024-01-26', 'Republic Day Offer', 'National', 5.0),
('2024-03-25', 'Holi Electronics Sale', 'North', 10.0),
('2024-08-15', 'Independence Day Sale', 'National', 10.0),
('2024-10-02', 'Gandhi Jayanti Deal', 'National', 5.0),
('2024-10-20', 'Pre-Diwali Sale', 'National', 15.0),
('2024-10-31', 'Diwali Mega Sale', 'National', 20.0),
('2024-12-25', 'Christmas & New Year Offer', 'National', 12.0),
('2025-01-26', 'Republic Day Tech Sale', 'National', 7.0),
('2025-03-14', 'Holi Special', 'National', 10.0);

COMMIT;
