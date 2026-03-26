-- This SQLite script creates a comprehensive 4-table database for electronics component lifecycle analysis.
-- All tables are populated with 40 consistent records, simulating catalog, design, performance, and market data.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS ComponentCatalog;
DROP TABLE IF EXISTS DesignActivity;
DROP TABLE IF EXISTS PerformanceAnalytics;
DROP TABLE IF EXISTS MarketAnalytics;

-- --------------------------------------------------------------------------------
-- Table 1: ComponentCatalog
-- Contains component lifecycle information, including End-of-Life (EOL) data.
-- --------------------------------------------------------------------------------
CREATE TABLE [ComponentCatalog]
(
    [ComponentID] TEXT NOT NULL PRIMARY KEY,
    [ComponentName] TEXT NOT NULL,
    [Manufacturer] TEXT,
    [ManufacturerPartNumber] TEXT,
    [Category] TEXT,
    [ReleaseDate] TEXT,
    [EOLDate] TEXT,
    [LastTimeBuyDate] TEXT,
    [EOLReason] TEXT,
    [ReplacementComponent] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: DesignActivity
-- Tracks design-in/out activities and search trends over several years.
-- --------------------------------------------------------------------------------
CREATE TABLE [DesignActivity]
(
    [ComponentID] TEXT NOT NULL PRIMARY KEY,
    [DesignIns_2020] INTEGER,
    [DesignIns_2021] INTEGER,
    [DesignIns_2022] INTEGER,
    [DesignOuts_2020] INTEGER,
    [DesignOuts_2021] INTEGER,
    [DesignOuts_2022] INTEGER,
    [SearchTrends_2020] INTEGER,
    [SearchTrends_2021] INTEGER,
    [SearchTrends_2022] INTEGER,
    [SearchTrends_2023] INTEGER,
    FOREIGN KEY (ComponentID) REFERENCES ComponentCatalog(ComponentID)
);

-- --------------------------------------------------------------------------------
-- Table 3: PerformanceAnalytics
-- Contains annual sales, pricing, and inventory data to monitor product performance.
-- --------------------------------------------------------------------------------
CREATE TABLE [PerformanceAnalytics]
(
    [ComponentID] TEXT NOT NULL PRIMARY KEY,
    [SalesVolume_2020] INTEGER,
    [SalesVolume_2021] INTEGER,
    [SalesVolume_2022] INTEGER,
    [SalesVolume_2023] INTEGER,
    [Price_2020] REAL,
    [Price_2021] REAL,
    [Price_2022] REAL,
    [Price_2023] REAL,
    [Inventory_2020] INTEGER,
    [Inventory_2021] INTEGER,
    [Inventory_2022] INTEGER,
    [Inventory_2023] INTEGER,
    FOREIGN KEY (ComponentID) REFERENCES ComponentCatalog(ComponentID)
);

-- --------------------------------------------------------------------------------
-- Table 4: MarketAnalytics
-- Provides market context, including industry usage and EOL notice details.
-- --------------------------------------------------------------------------------
CREATE TABLE [MarketAnalytics]
(
    [ComponentID] TEXT NOT NULL PRIMARY KEY,
    [IndustrySector] TEXT,
    [Customers] TEXT,
    [ManufacturerEOLNotices] TEXT,
    [TimeBetweenNoticeEOL] INTEGER, -- In days
    FOREIGN KEY (ComponentID) REFERENCES ComponentCatalog(ComponentID)
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all four tables with 40 consistent, cross-referenced records.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate ComponentCatalog Table
INSERT INTO ComponentCatalog (ComponentID, ComponentName, Manufacturer, ManufacturerPartNumber, Category, ReleaseDate, EOLDate, LastTimeBuyDate, EOLReason, ReplacementComponent) VALUES
('STM-STM32F407VGT6-MCU', 'ARM Cortex-M4 MCU 168MHz', 'STMicroelectronics', 'STM32F407VGT6', 'Microcontrollers', '2011-03-15', NULL, NULL, NULL, 'STM32F746VGT6'),
('MCHP-ATMEGA328P-PU-MCU', '8-bit AVR MCU 20MHz', 'Microchip', 'ATMEGA328P-PU', 'Microcontrollers', '2006-07-21', NULL, NULL, NULL, NULL),
('ESP-ESP32-WROOM-32E-MOD', 'Wi-Fi/BT SoC Module', 'Espressif Systems', 'ESP32-WROOM-32E', 'Connectivity', '2020-11-01', NULL, NULL, NULL, 'ESP32-S3-WROOM-1'),
('TI-LM358DR-ANA', 'Low-Power Dual Op-Amp', 'Texas Instruments', 'LM358DR', 'Analog ICs', '1999-08-10', NULL, NULL, 'Mature Product', NULL),
('ADI-ADXL345BCCZ-SEN', '3-Axis Digital Accelerometer', 'Analog Devices', 'ADXL345BCCZ', 'Sensors', '2009-01-23', '2022-12-31', '2022-06-30', 'Technological Obsolescence', 'ADXL344BCCZ'),
('MUR-GRM188R71H104KA93D-CAP', '100nF 50V X7R Capacitor', 'Murata', 'GRM188R71H104KA93D', 'Capacitors', '2004-05-18', NULL, NULL, NULL, NULL),
('NXP-LPC1768FBD100-MCU', 'ARM Cortex-M3 MCU 100MHz', 'NXP', 'LPC1768FBD100', 'Microcontrollers', '2009-12-01', '2023-06-30', '2022-12-31', 'Low Demand', 'LPC55S69JBD100'),
('INF-IRFZ44N-PWR', 'N-Channel Power MOSFET 60V', 'Infineon', 'IRFZ44N', 'Power Management', '1998-02-12', NULL, NULL, 'Mature Product', 'IRFB7530PBF'),
('ONS-NCP1117ST33T3G-PWR', '1A LDO Voltage Regulator 3.3V', 'onsemi', 'NCP1117ST33T3G', 'Power Management', '2005-09-01', NULL, NULL, NULL, NULL),
('XIL-XC7Z020-CLG484-FPGA', 'Zynq-7000 SoC FPGA', 'AMD/Xilinx', 'XC7Z020-1CLG484C', 'FPGAs', '2012-02-29', NULL, NULL, NULL, 'XCZU3EG-SFVC784-1-E'),
('INT-EP4CE6E22C8N-FPGA', 'Cyclone IV E FPGA', 'Intel/Altera', 'EP4CE6E22C8N', 'FPGAs', '2009-05-11', '2025-09-30', '2025-03-31', 'Fab Closure', '10M08SAE144C8G'),
('FTDI-FT232RL-IFC', 'USB to Serial UART IC', 'FTDI', 'FT232RL', 'Interface ICs', '2004-11-20', NULL, NULL, NULL, NULL),
('NRD-NRF24L01P-RF', '2.4GHz RF Transceiver', 'Nordic Semiconductor', 'nRF24L01+', 'RF Components', '2007-10-01', '2024-03-31', '2023-09-30', 'Replaced by BLE', 'nRF52810-QFAA'),
('BOS-BME280-SEN', 'Pressure, Temp, Humidity Sensor', 'Bosch Sensortec', 'BME280', 'Sensors', '2014-08-25', NULL, NULL, NULL, 'BME680'),
('MICR-MT29F4G08ABAEAWP-MEM', '4Gb NAND Flash', 'Micron', 'MT29F4G08ABAEAWP-IT:E', 'Memory', '2010-11-15', '2021-08-31', '2021-02-28', 'End of Process Node', NULL),
('VIS-CRCW060310K0FKEA-RES', '10k Ohm 1% Resistor', 'Vishay', 'CRCW060310K0FKEA', 'Resistors', '2002-01-01', NULL, NULL, NULL, NULL),
('REN-R5F100LGAFB-MCU', '16-bit RL78/G13 MCU', 'Renesas', 'R5F100LGAFB', 'Microcontrollers', '2011-02-20', NULL, NULL, NULL, 'RA2L1'),
('ANA-AD8232ACPZ-HRM-ANA', 'Heart Rate Monitor Front-End', 'Analog Devices', 'AD8232ACPZ-R7', 'Analog ICs', '2013-05-09', NULL, NULL, NULL, NULL),
('TDK-C1608X5R1H105K080AA-CAP', '1uF 50V X5R Capacitor', 'TDK', 'C1608X5R1H105K080AA', 'Capacitors', '2003-09-12', NULL, NULL, NULL, NULL),
('SIL-CP2102N-A02-GQFN28-IFC', 'USB-to-UART Bridge Controller', 'Silicon Labs', 'CP2102N-A02-GQFN28', 'Interface ICs', '2016-08-01', NULL, NULL, NULL, NULL),
('MAX-DS18B20-PAR-SEN', '1-Wire Digital Thermometer', 'Maxim Integrated', 'DS18B20+', 'Sensors', '2001-04-30', NULL, NULL, NULL, NULL),
('BRD-BCM2837B0-SOC', 'Raspberry Pi 3 SoC', 'Broadcom', 'BCM2837B0', 'Processors', '2018-03-14', '2026-01-31', '2025-07-31', 'Product Lifecycle', 'BCM2711'),
('CYP-CY8C4245AXI-483-MCU', 'PSoC 4 ARM Cortex-M0', 'Cypress (Infineon)', 'CY8C4245AXI-483', 'Microcontrollers', '2013-03-20', NULL, NULL, NULL, NULL),
('TE-1734592-1-CONN', 'AMPMODU MTE Header', 'TE Connectivity', '1734592-1', 'Connectors', '2002-11-05', NULL, NULL, 'Mature Product', NULL),
('ADI-ADAU1701JSTZ-AUD', 'SigmaDSP 28/56-Bit Audio Processor', 'Analog Devices', 'ADAU1701JSTZ', 'Audio ICs', '2006-09-27', NULL, NULL, NULL, NULL),
('LAT-ICE40LP1K-CM81-FPGA', 'iCE40 Low-Power FPGA', 'Lattice', 'iCE40LP1K-CM81', 'FPGAs', '2012-10-10', '2023-01-31', '2022-07-31', 'Replaced by UltraPlus series', 'iCE40UP5K-SG48'),
('ROH-BD9G341AEFJ-PWR', 'Step-Down Switching Regulator', 'ROHM', 'BD9G341AEFJ-E2', 'Power Management', '2015-06-15', NULL, NULL, NULL, NULL),
('AVX-08055C104KAT2A-CAP', '100nF 50V X7R Capacitor', 'AVX', '08055C104KAT2A', 'Capacitors', '2001-01-01', NULL, NULL, NULL, NULL),
('KEM-T491B106K016AT-CAP', '10uF 16V Tantalum Capacitor', 'KEMET', 'T491B106K016AT', 'Capacitors', '1995-04-01', NULL, NULL, 'Mature Product', NULL),
('SAM-K9F1G08U0E-MEM', '1Gb NAND Flash', 'Samsung', 'K9F1G08U0E-SCB0', 'Memory', '2007-02-14', '2020-03-31', '2019-09-30', 'Technological Obsolescence', NULL),
('TOS-TC74HC595AP-LOG', '8-Bit Shift Register', 'Toshiba', 'TC74HC595AP', 'Logic ICs', '1990-01-01', NULL, NULL, 'Mature Product', NULL),
('DIO-1N4148-DIO', 'Small Signal Diode', 'Diodes Inc.', '1N4148', 'Diodes', '1985-01-01', NULL, NULL, NULL, NULL),
('FAIR-FAN7390M-DRV', 'Half-Bridge Gate Driver', 'Fairchild (onsemi)', 'FAN7390M', 'Driver ICs', '2008-08-08', '2022-09-30', '2022-03-31', 'Portfolio Consolidation', 'NCP5183'),
('AMS-AMS1117-3.3-PWR', '1A LDO Voltage Regulator 3.3V', 'AMS', 'AMS1117-3.3', 'Power Management', '2000-05-25', NULL, NULL, 'Commodity Product', NULL),
('QUEC-M95FA-04-STD-MOD', 'Quad-band GSM/GPRS Module', 'Quectel', 'M95FA-04-STD', 'Connectivity', '2013-07-19', '2021-12-31', '2021-06-30', '2G Network Sunset', 'BG95-M3'),
('UBLOX-NEO-6M-GPS', 'NEO-6M GPS Module', 'U-blox', 'NEO-6M', 'GPS Modules', '2010-04-12', '2020-09-30', '2020-03-31', 'Superseded by NEO-M8 series', 'NEO-M8N'),
('WURTH-744777910-IND', '10uH Power Inductor', 'Wurth Elektronik', '744777910', 'Inductors', '2010-01-01', NULL, NULL, NULL, NULL),
('OSRAM-SFH4545-LED', 'High Power Infrared LED', 'OSRAM', 'SFH 4545', 'LEDs', '2012-03-01', NULL, NULL, NULL, NULL),
('HON-HIH-4000-001-SEN', 'Humidity Sensor, Analog Output', 'Honeywell', 'HIH-4000-001', 'Sensors', '2002-06-20', '2024-12-31', '2024-06-30', 'Product Line Update', 'HIH-5030-001'),
('LITT-0217001.MXP-FUSE', '250V 1A Fast-Acting Fuse', 'Littelfuse', '0217001.MXP', 'Fuses', '1990-01-01', NULL, NULL, 'Mature Product', NULL);

-- Populate DesignActivity Table
INSERT INTO DesignActivity (ComponentID, DesignIns_2020, DesignIns_2021, DesignIns_2022, DesignOuts_2020, DesignOuts_2021, DesignOuts_2022, SearchTrends_2020, SearchTrends_2021, SearchTrends_2022, SearchTrends_2023) VALUES
('STM-STM32F407VGT6-MCU', 2500, 2200, 1800, 180, 250, 400, 100, 95, 90, 85),
('MCHP-ATMEGA328P-PU-MCU', 15000, 16500, 14000, 500, 600, 800, 90, 100, 95, 90),
('ESP-ESP32-WROOM-32E-MOD', 18000, 25000, 32000, 100, 150, 200, 100, 120, 150, 160),
('TI-LM358DR-ANA', 5000, 5200, 4800, 300, 350, 400, 40, 42, 38, 35),
('ADI-ADXL345BCCZ-SEN', 4500, 3500, 1500, 800, 1200, 2500, 60, 50, 30, 10),
('MUR-GRM188R71H104KA93D-CAP', 150000, 180000, 160000, 1000, 1200, 1500, 80, 85, 82, 80),
('NXP-LPC1768FBD100-MCU', 1200, 800, 300, 500, 900, 1500, 50, 40, 20, 5),
('INF-IRFZ44N-PWR', 6000, 6500, 5800, 400, 450, 550, 55, 58, 52, 50),
('ONS-NCP1117ST33T3G-PWR', 22000, 25000, 23000, 800, 900, 1100, 70, 75, 72, 70),
('XIL-XC7Z020-CLG484-FPGA', 800, 950, 1100, 50, 70, 90, 75, 80, 88, 92),
('INT-EP4CE6E22C8N-FPGA', 2200, 2000, 1500, 300, 500, 800, 65, 60, 50, 40),
('FTDI-FT232RL-IFC', 12000, 11000, 13000, 200, 220, 250, 85, 88, 90, 88),
('NRD-NRF24L01P-RF', 3500, 2500, 1000, 1000, 1800, 3000, 70, 60, 40, 20),
('BOS-BME280-SEN', 6000, 7500, 8500, 100, 120, 150, 88, 92, 98, 100),
('MICR-MT29F4G08ABAEAWP-MEM', 500, 200, 0, 1500, 2500, 1000, 30, 10, 0, 0),
('VIS-CRCW060310K0FKEA-RES', 180000, 200000, 190000, 1500, 1600, 1800, 75, 78, 76, 75),
('REN-R5F100LGAFB-MCU', 2800, 2500, 2200, 250, 350, 500, 45, 42, 38, 35),
('ANA-AD8232ACPZ-HRM-ANA', 1800, 2200, 2500, 80, 100, 120, 68, 72, 78, 80),
('TDK-C1608X5R1H105K080AA-CAP', 120000, 130000, 125000, 800, 900, 1000, 78, 80, 79, 78),
('SIL-CP2102N-A02-GQFN28-IFC', 4000, 5500, 6500, 50, 80, 100, 80, 85, 92, 95),
('MAX-DS18B20-PAR-SEN', 9000, 8500, 9200, 600, 650, 700, 82, 80, 85, 83),
('BRD-BCM2837B0-SOC', 300, 250, 200, 100, 150, 200, 95, 85, 75, 65),
('CYP-CY8C4245AXI-483-MCU', 2100, 2400, 2200, 150, 180, 220, 62, 65, 63, 60),
('TE-1734592-1-CONN', 40000, 42000, 38000, 1000, 1100, 1300, 50, 52, 48, 45),
('ADI-ADAU1701JSTZ-AUD', 1500, 1800, 2000, 80, 100, 130, 72, 75, 80, 82),
('LAT-ICE40LP1K-CM81-FPGA', 900, 600, 200, 400, 700, 1000, 58, 45, 25, 10),
('ROH-BD9G341AEFJ-PWR', 3200, 3800, 4500, 50, 70, 90, 60, 65, 72, 75),
('AVX-08055C104KAT2A-CAP', 160000, 170000, 165000, 1100, 1200, 1400, 81, 83, 82, 81),
('KEM-T491B106K016AT-CAP', 8000, 7500, 7000, 500, 600, 700, 48, 45, 42, 40),
('SAM-K9F1G08U0E-MEM', 100, 0, 0, 800, 500, 100, 25, 5, 0, 0),
('TOS-TC74HC595AP-LOG', 11000, 12000, 10000, 400, 450, 500, 68, 70, 65, 62),
('DIO-1N4148-DIO', 35000, 38000, 36000, 800, 850, 900, 60, 62, 61, 60),
('FAIR-FAN7390M-DRV', 600, 300, 0, 300, 500, 200, 40, 25, 10, 0),
('AMS-AMS1117-3.3-PWR', 28000, 32000, 30000, 1000, 1200, 1400, 85, 90, 88, 86),
('QUEC-M95FA-04-STD-MOD', 400, 100, 0, 200, 500, 300, 55, 30, 10, 0),
('UBLOX-NEO-6M-GPS', 500, 200, 50, 400, 800, 600, 75, 50, 20, 5),
('WURTH-744777910-IND', 9000, 10000, 11000, 100, 120, 150, 58, 62, 68, 70),
('OSRAM-SFH4545-LED', 3500, 4000, 3800, 200, 220, 250, 66, 68, 65, 62),
('HON-HIH-4000-001-SEN', 800, 600, 400, 250, 400, 600, 42, 35, 28, 20),
('LITT-0217001.MXP-FUSE', 15000, 16000, 14000, 200, 250, 300, 45, 48, 46, 45);

-- Populate PerformanceAnalytics Table
INSERT INTO PerformanceAnalytics (ComponentID, SalesVolume_2020, SalesVolume_2021, SalesVolume_2022, SalesVolume_2023, Price_2020, Price_2021, Price_2022, Price_2023, Inventory_2020, Inventory_2021, Inventory_2022, Inventory_2023) VALUES
('STM-STM32F407VGT6-MCU', 120000, 100000, 80000, 60000, 9.50, 12.50, 11.00, 8.50, 25000, 15000, 10000, 8000),
('MCHP-ATMEGA328P-PU-MCU', 800000, 950000, 700000, 650000, 2.10, 2.80, 2.50, 2.20, 150000, 100000, 120000, 110000),
('ESP-ESP32-WROOM-32E-MOD', 1200000, 2000000, 2800000, 3500000, 4.20, 5.50, 4.80, 4.50, 300000, 250000, 350000, 400000),
('TI-LM358DR-ANA', 5000000, 5500000, 4800000, 4500000, 0.22, 0.35, 0.30, 0.28, 1000000, 800000, 900000, 850000),
('ADI-ADXL345BCCZ-SEN', 250000, 200000, 100000, 20000, 4.80, 6.20, 5.50, 5.00, 50000, 30000, 10000, 1000),
('MUR-GRM188R71H104KA93D-CAP', 20000000, 25000000, 22000000, 20000000, 0.015, 0.025, 0.020, 0.018, 5000000, 3000000, 4000000, 3800000),
('NXP-LPC1768FBD100-MCU', 80000, 50000, 15000, 1000, 8.50, 11.00, 9.50, 8.00, 15000, 8000, 2000, 100),
('INF-IRFZ44N-PWR', 650000, 700000, 600000, 550000, 0.55, 0.80, 0.70, 0.65, 120000, 100000, 110000, 100000),
('ONS-NCP1117ST33T3G-PWR', 1800000, 2200000, 2000000, 1800000, 0.45, 0.65, 0.55, 0.50, 400000, 300000, 350000, 320000),
('XIL-XC7Z020-CLG484-FPGA', 30000, 35000, 40000, 42000, 120.00, 180.00, 160.00, 140.00, 5000, 3000, 4000, 4500),
('INT-EP4CE6E22C8N-FPGA', 90000, 80000, 60000, 40000, 28.00, 40.00, 35.00, 30.00, 15000, 10000, 8000, 5000),
('FTDI-FT232RL-IFC', 700000, 650000, 750000, 720000, 2.80, 4.00, 3.50, 3.20, 120000, 100000, 130000, 125000),
('NRD-NRF24L01P-RF', 250000, 180000, 80000, 20000, 1.50, 2.20, 2.00, 1.80, 50000, 30000, 10000, 2000),
('BOS-BME280-SEN', 400000, 550000, 650000, 700000, 2.90, 4.20, 3.80, 3.50, 80000, 60000, 70000, 80000),
('MICR-MT29F4G08ABAEAWP-MEM', 20000, 5000, 0, 0, 12.00, 15.00, 0.00, 0.00, 3000, 500, 0, 0),
('VIS-CRCW060310K0FKEA-RES', 25000000, 28000000, 26000000, 25000000, 0.012, 0.022, 0.018, 0.016, 6000000, 4000000, 5000000, 4800000),
('REN-R5F100LGAFB-MCU', 150000, 120000, 100000, 80000, 3.50, 5.00, 4.50, 4.00, 30000, 20000, 15000, 12000),
('ANA-AD8232ACPZ-HRM-ANA', 80000, 100000, 120000, 130000, 3.80, 5.20, 4.80, 4.50, 15000, 12000, 14000, 15000),
('TDK-C1608X5R1H105K080AA-CAP', 15000000, 18000000, 16000000, 15000000, 0.020, 0.030, 0.025, 0.022, 4000000, 3000000, 3500000, 3200000),
('SIL-CP2102N-A02-GQFN28-IFC', 200000, 280000, 350000, 400000, 2.50, 3.80, 3.20, 2.90, 40000, 30000, 40000, 45000),
('MAX-DS18B20-PAR-SEN', 500000, 480000, 520000, 500000, 1.00, 1.50, 1.30, 1.10, 100000, 80000, 90000, 85000),
('BRD-BCM2837B0-SOC', 1500000, 1200000, 1000000, 800000, 5.00, 8.00, 7.00, 6.00, 300000, 200000, 150000, 120000),
('CYP-CY8C4245AXI-483-MCU', 120000, 140000, 130000, 120000, 4.50, 6.00, 5.50, 5.00, 25000, 20000, 22000, 20000),
('TE-1734592-1-CONN', 2000000, 2200000, 2000000, 1800000, 0.15, 0.25, 0.20, 0.18, 500000, 400000, 450000, 420000),
('ADI-ADAU1701JSTZ-AUD', 70000, 85000, 100000, 110000, 7.50, 10.00, 9.00, 8.50, 15000, 12000, 14000, 15000),
('LAT-ICE40LP1K-CM81-FPGA', 50000, 30000, 10000, 1000, 6.50, 9.00, 8.00, 7.00, 10000, 5000, 1500, 100),
('ROH-BD9G341AEFJ-PWR', 180000, 220000, 280000, 320000, 1.80, 2.80, 2.50, 2.20, 40000, 30000, 35000, 40000),
('AVX-08055C104KAT2A-CAP', 18000000, 20000000, 19000000, 18000000, 0.018, 0.028, 0.022, 0.020, 4500000, 3500000, 4000000, 3800000),
('KEM-T491B106K016AT-CAP', 400000, 380000, 350000, 320000, 0.40, 0.60, 0.55, 0.50, 80000, 60000, 70000, 65000),
('SAM-K9F1G08U0E-MEM', 5000, 1000, 0, 0, 5.50, 8.00, 0.00, 0.00, 1000, 100, 0, 0),
('TOS-TC74HC595AP-LOG', 600000, 650000, 580000, 550000, 0.25, 0.40, 0.35, 0.32, 120000, 100000, 110000, 100000),
('DIO-1N4148-DIO', 10000000, 12000000, 11000000, 10000000, 0.010, 0.018, 0.015, 0.012, 2000000, 1500000, 1800000, 1700000),
('FAIR-FAN7390M-DRV', 30000, 15000, 1000, 0, 1.20, 1.80, 1.60, 0.00, 5000, 2000, 100, 0),
('AMS-AMS1117-3.3-PWR', 2500000, 3000000, 2800000, 2600000, 0.18, 0.30, 0.25, 0.22, 600000, 500000, 550000, 520000),
('QUEC-M95FA-04-STD-MOD', 20000, 5000, 0, 0, 4.50, 6.50, 0.00, 0.00, 3000, 500, 0, 0),
('UBLOX-NEO-6M-GPS', 25000, 10000, 2000, 0, 12.00, 18.00, 16.00, 0.00, 5000, 1500, 200, 0),
('WURTH-744777910-IND', 500000, 550000, 600000, 620000, 0.20, 0.32, 0.28, 0.25, 100000, 80000, 90000, 95000),
('OSRAM-SFH4545-LED', 200000, 220000, 210000, 200000, 0.80, 1.20, 1.00, 0.90, 40000, 35000, 38000, 36000),
('HON-HIH-4000-001-SEN', 40000, 30000, 20000, 10000, 3.20, 4.50, 4.00, 3.80, 8000, 5000, 3000, 1500),
('LITT-0217001.MXP-FUSE', 800000, 850000, 820000, 800000, 0.10, 0.18, 0.15, 0.12, 150000, 120000, 130000, 125000);

-- Populate MarketAnalytics Table
INSERT INTO MarketAnalytics (ComponentID, IndustrySector, Customers, ManufacturerEOLNotices, TimeBetweenNoticeEOL) VALUES
('STM-STM32F407VGT6-MCU', 'Industrial, Consumer Electronics, IoT', 'Global OEMs, Hobbyists', NULL, NULL),
('MCHP-ATMEGA328P-PU-MCU', 'Consumer Electronics, Education, Hobbyist', 'Arduino, DIY Community', NULL, NULL),
('ESP-ESP32-WROOM-32E-MOD', 'IoT, Smart Home, Consumer Electronics', 'IoT Startups, Global Brands', NULL, NULL),
('TI-LM358DR-ANA', 'Automotive, Industrial, Consumer', 'Tier 1 Suppliers, CEMs', NULL, NULL),
('ADI-ADXL345BCCZ-SEN', 'Consumer Electronics, Industrial', 'Wearable Mfrs, Drone Mfrs', 'ADI-EOL-2022-003', 180),
('MUR-GRM188R71H104KA93D-CAP', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('NXP-LPC1768FBD100-MCU', 'Industrial, Medical', 'Legacy System Mfrs', 'NXP-EOL-22-114', 180),
('INF-IRFZ44N-PWR', 'Automotive, Consumer Power Supplies', 'Automotive Aftermarket, PSU Mfrs', NULL, NULL),
('ONS-NCP1117ST33T3G-PWR', 'Consumer Electronics, Telecom', 'Global CEMs', NULL, NULL),
('XIL-XC7Z020-CLG484-FPGA', 'Communications, Aerospace, Data Center', 'Defense Contractors, Network Equip Mfrs', NULL, NULL),
('INT-EP4CE6E22C8N-FPGA', 'Industrial, Communications', 'Legacy Equipment Mfrs', 'INTEL-EOL-2024-Q3-02', 365),
('FTDI-FT232RL-IFC', 'Industrial, Consumer, Medical', 'All CEMs, USB Device Mfrs', NULL, NULL),
('NRD-NRF24L01P-RF', 'Consumer Electronics, Hobbyist', 'Wireless Module Mfrs, DIY', 'NRD-EOL-23-01', 180),
('BOS-BME280-SEN', 'IoT, Smart Home, Weather Stations', 'Consumer and Industrial IoT', NULL, NULL),
('MICR-MT29F4G08ABAEAWP-MEM', 'Industrial, Automotive', 'Embedded Systems Mfrs', 'MICRON-EOL-21-55', 180),
('VIS-CRCW060310K0FKEA-RES', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('REN-R5F100LGAFB-MCU', 'Automotive, Industrial', 'Appliance Mfrs, Automotive Tier 2', NULL, NULL),
('ANA-AD8232ACPZ-HRM-ANA', 'Medical, Wearables', 'MedTech Startups, Fitness Brands', NULL, NULL),
('TDK-C1608X5R1H105K080AA-CAP', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('SIL-CP2102N-A02-GQFN28-IFC', 'Industrial, IoT', 'Device Mfrs', NULL, NULL),
('MAX-DS18B20-PAR-SEN', 'Industrial, HVAC, Hobbyist', 'Sensor Module Mfrs, DIY', NULL, NULL),
('BRD-BCM2837B0-SOC', 'Education, Hobbyist, Prototyping', 'Raspberry Pi Foundation', 'RPI-EOL-2025-01', 365),
('CYP-CY8C4245AXI-483-MCU', 'Consumer, Industrial', 'HMI Device Mfrs', NULL, NULL),
('TE-1734592-1-CONN', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('ADI-ADAU1701JSTZ-AUD', 'Audio, Consumer Electronics', 'Pro Audio Mfrs, Speaker Mfrs', NULL, NULL),
('LAT-ICE40LP1K-CM81-FPGA', 'Consumer, Mobile', 'Legacy Wearable Mfrs', 'LAT-EOL-22-08', 180),
('ROH-BD9G341AEFJ-PWR', 'Industrial, Automotive', 'Industrial Power Supply Mfrs', NULL, NULL),
('AVX-08055C104KAT2A-CAP', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('KEM-T491B106K016AT-CAP', 'Industrial, Aerospace', 'High-Rel System Mfrs', NULL, NULL),
('SAM-K9F1G08U0E-MEM', 'Consumer Electronics', 'Legacy MP3 Player Mfrs', 'SAMSUNG-EOL-19-Q3-112', 180),
('TOS-TC74HC595AP-LOG', 'Consumer, Industrial', 'All CEMs, OEMs', NULL, NULL),
('DIO-1N4148-DIO', 'All Sectors', 'All CEMs, OEMs', NULL, NULL),
('FAIR-FAN7390M-DRV', 'Industrial, Appliance', 'Motor Control Mfrs', 'ONSEMI-EOL-22-04', 180),
('AMS-AMS1117-3.3-PWR', 'Consumer Electronics, Hobbyist', 'DIY, Module Mfrs', NULL, NULL),
('QUEC-M95FA-04-STD-MOD', 'IoT, Asset Tracking', 'Legacy Tracking Device Mfrs', 'QUEC-EOL-21-17', 180),
('UBLOX-NEO-6M-GPS', 'Automotive, Asset Tracking', 'Legacy GPS Device Mfrs', 'UBLOX-EOL-20-02', 180),
('WURTH-744777910-IND', 'Automotive, Industrial', 'Power Supply Mfrs', NULL, NULL),
('OSRAM-SFH4545-LED', 'Industrial, Security', 'CCTV Mfrs, Night Vision Systems', NULL, NULL),
('HON-HIH-4000-001-SEN', 'HVAC, Medical', 'Appliance Mfrs, Medical Devices', 'HON-EOL-24-05', 180),
('LITT-0217001.MXP-FUSE', 'All Sectors', 'All CEMs, OEMs', NULL, NULL);

COMMIT;
