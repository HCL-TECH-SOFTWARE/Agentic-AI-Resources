-- This SQLite script creates a multi-table database for sales and market analysis.
-- It includes tables for individual transactions, event impacts, and market trends.
-- All tables are populated with 50 realistic entries each.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS Transactions;
DROP TABLE IF EXISTS EventImpact;
DROP TABLE IF EXISTS MarketTrends;

-- --------------------------------------------------------------------------------
-- Table 1: Transactions
-- Contains 50 realistic, individual sales transactions.
-- --------------------------------------------------------------------------------
CREATE TABLE [Transactions]
(
    [TransactionID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductID] TEXT NOT NULL,
    [ProductName] TEXT NOT NULL,
    [Category] TEXT,
    [UnitsSold] INTEGER,
    [UnitPrice] REAL,
    [TotalRevenue] REAL,
    [SaleDate] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: EventImpact
-- Contains 50 records detailing the sales impact of various events on component categories.
-- --------------------------------------------------------------------------------
CREATE TABLE [EventImpact]
(
    [EventImpactID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Category] TEXT NOT NULL,
    [Event] TEXT NOT NULL,
    [ImpactFactor] REAL -- e.g., 1.15 for +15%, 0.9 for -10%
);

-- --------------------------------------------------------------------------------
-- Table 3: MarketTrends
-- Contains 50 records projecting growth based on emerging technology trends.
-- --------------------------------------------------------------------------------
CREATE TABLE [MarketTrends]
(
    [TrendID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Category] TEXT NOT NULL,
    [Trend] TEXT NOT NULL,
    [GrowthFactor] REAL -- e.g., 1.12 for 12% projected growth
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating all three tables with 50 records each.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate Transactions Table (50 rows)
INSERT INTO Transactions (ProductID, ProductName, Category, UnitsSold, UnitPrice, TotalRevenue, SaleDate) VALUES
('IC-5012-A', 'LM358 Op-Amp', 'Analog', 250, 0.45, 112.50, '2025-06-15'),
('MCU-808-B', 'ATmega328P-PU Microcontroller', 'Microcontrollers', 120, 2.20, 264.00, '2025-06-14'),
('SEN-TEMP-01', 'DS18B20 Temperature Sensor', 'Sensors', 300, 1.50, 450.00, '2025-06-13'),
('CAP-CER-104', '100nF Ceramic Capacitor', 'Capacitors', 5000, 0.02, 100.00, '2025-06-12'),
('LED-R5-T1', '5mm Red LED', 'LEDs', 1000, 0.08, 80.00, '2025-06-11'),
('WIFI-ESP-32', 'ESP32-WROOM-32E Module', 'IoT Modules', 80, 4.50, 360.00, '2025-06-10'),
('FPGA-X-01C', 'Xilinx Spartan-7 FPGA', 'FPGAs', 10, 45.50, 455.00, '2025-06-09'),
('PWR-LDO-3V3', 'AMS1117-3.3 LDO Regulator', 'Power ICs', 450, 0.30, 135.00, '2025-06-08'),
('RF-NRF24-M', 'nRF24L01+ Transceiver Module', 'RF Components', 150, 1.80, 270.00, '2025-06-07'),
('MEM-FL-128', 'W25Q128JV SPI Flash', 'Memory', 95, 1.25, 118.75, '2025-06-06'),
('DRV-MTR-A49', 'A4988 Stepper Motor Driver', 'Motor Drivers', 70, 2.10, 147.00, '2025-05-20'),
('SEN-IMU-6050', 'MPU-6050 6-DOF IMU', 'Sensors', 110, 3.90, 429.00, '2025-05-19'),
('CON-USB-C1', 'USB-C Female Connector', 'Connectors', 800, 0.65, 520.00, '2025-05-18'),
('DIO-RECT-1N4', '1N4007 Rectifier Diode', 'Diodes', 2500, 0.04, 100.00, '2025-05-17'),
('IC-5013-C', 'NE555 Timer IC', 'Analog', 600, 0.25, 150.00, '2025-05-16'),
('MCU-STM-G0', 'STM32G031K8U6 MCU', 'Microcontrollers', 65, 3.40, 221.00, '2025-04-25'),
('CAP-ELEC-220', '220uF Electrolytic Capacitor', 'Capacitors', 300, 0.15, 45.00, '2025-04-24'),
('LED-RGB-CA', 'Common Anode 5050 RGB LED', 'LEDs', 400, 0.22, 88.00, '2025-04-23'),
('IOT-Lora-01', 'Ra-02 LoRa Module (433MHz)', 'IoT Modules', 40, 5.50, 220.00, '2025-04-22'),
('PWR-BUCK-XL', 'XL4015 Buck Converter Module', 'Power ICs', 90, 1.75, 157.50, '2025-04-21'),
('SEN-PIR-HC5', 'HC-SR501 PIR Motion Sensor', 'Sensors', 210, 1.10, 231.00, '2024-11-28'),
('MCU-RP-PICO', 'Raspberry Pi Pico', 'Microcontrollers', 150, 4.00, 600.00, '2024-11-27'),
('RF-BLE-HM10', 'HM-10 BLE 4.0 Module', 'RF Components', 85, 4.20, 357.00, '2024-11-26'),
('DRV-SERVO-9G', 'SG90 Micro Servo', 'Motor Drivers', 130, 1.95, 253.50, '2024-11-25'),
('MEM-SD-32G', '32GB Class 10 MicroSD Card', 'Memory', 50, 5.80, 290.00, '2024-11-22'),
('FPGA-ICE-40', 'Lattice iCE40UP5K-B-EVN', 'FPGAs', 5, 55.00, 275.00, '2025-01-10'),
('SEN-GAS-MQ2', 'MQ-2 Gas Sensor', 'Sensors', 75, 2.30, 172.50, '2025-01-12'),
('IC-ADC-MCP3008', 'MCP3008 8-Ch 10-bit ADC', 'Analog', 90, 1.85, 166.50, '2025-01-15'),
('MCU-ATTINY85', 'ATtiny85-20PU MCU', 'Microcontrollers', 350, 1.35, 472.50, '2025-02-18'),
('CAP-TAN-10', '10uF Tantalum Capacitor', 'Capacitors', 150, 0.40, 60.00, '2025-02-20'),
('LED-UV-3MM', '3mm UV LED', 'LEDs', 500, 0.12, 60.00, '2025-03-05'),
('IOT-GSM-800L', 'SIM800L GPRS/GSM Module', 'IoT Modules', 35, 6.20, 217.00, '2025-03-10'),
('PWR-BOOST-XL6', 'XL6009 Boost Converter', 'Power ICs', 120, 1.55, 186.00, '2025-03-15'),
('RF-CC1101-M', 'CC1101 Sub-1GHz Module', 'RF Components', 60, 3.75, 225.00, '2025-04-01'),
('MEM-EEPROM-24C', '24LC256 I2C EEPROM', 'Memory', 280, 0.55, 154.00, '2025-04-05'),
('DRV-L298N', 'L298N Dual H-Bridge Driver', 'Motor Drivers', 100, 2.05, 205.00, '2025-04-10'),
('SEN-ULTRA-HCSR04', 'HC-SR04 Ultrasonic Sensor', 'Sensors', 450, 0.95, 427.50, '2025-05-01'),
('CON-HDR-254', '2.54mm Pin Header Strip', 'Connectors', 1000, 0.20, 200.00, '2025-05-02'),
('DIO-ZENER-5V1', '5.1V Zener Diode', 'Diodes', 800, 0.05, 40.00, '2025-05-03'),
('IC-DAC-MCP4725', 'MCP4725 12-bit DAC', 'Analog', 110, 1.45, 159.50, '2025-05-04'),
('MCU-ESP8266-01', 'ESP-01S ESP8266 Module', 'Microcontrollers', 320, 1.90, 608.00, '2025-05-05'),
('CAP-FILM-100NF', '100nF Polyester Film Capacitor', 'Capacitors', 600, 0.09, 54.00, '2025-05-06'),
('LED-WS2812B', 'WS2812B Addressable LED', 'LEDs', 1500, 0.15, 225.00, '2025-05-07'),
('IOT-NFC-PN532', 'PN532 NFC/RFID Module', 'IoT Modules', 55, 7.80, 429.00, '2025-05-08'),
('PWR-REG-7805', '7805 5V Linear Regulator', 'Power ICs', 900, 0.28, 252.00, '2025-05-09'),
('RF-WIFI-ANT', '2.4GHz Duck Antenna', 'RF Components', 200, 1.15, 230.00, '2025-05-10'),
('MEM-RAM-23K256', '23K256 SPI SRAM', 'Memory', 70, 2.40, 168.00, '2025-05-11'),
('DRV-ULN2003', 'ULN2003 Darlington Array', 'Motor Drivers', 250, 0.48, 120.00, '2025-05-12'),
('SEN-HALL-A3144', 'A3144 Hall Effect Sensor', 'Sensors', 650, 0.35, 227.50, '2025-05-13'),
('CON-IDC-10P', '10-pin IDC Connector', 'Connectors', 400, 0.30, 120.00, '2025-05-14');

-- Populate EventImpact Table (50 rows)
INSERT INTO EventImpact (Category, Event, ImpactFactor) VALUES
('Microcontrollers', 'CES Launch', 1.25), ('IoT Modules', 'CES Launch', 1.30),
('Sensors', 'CES Launch', 1.20), ('FPGAs', 'Embedded World', 1.40),
('Microcontrollers', 'Embedded World', 1.35), ('Power ICs', 'Embedded World', 1.15),
('Dev Boards', 'Black Friday', 1.60), ('Connectors', 'Black Friday', 1.20),
('LEDs', 'Holiday Season', 1.50), ('Motor Drivers', 'Holiday Season', 1.45),
('Dev Boards', 'Cyber Monday', 1.65), ('Memory', 'Cyber Monday', 1.30),
('Microcontrollers', 'Back to School', 1.40), ('Sensors', 'Back to School', 1.30),
('Dev Boards', 'Maker Faire', 1.50), ('3D Printer Parts', 'Maker Faire', 1.70),
('All Categories', 'Global Chip Shortage', 0.75), ('Automotive', 'New EV Model Launch', 1.80),
('IoT Modules', 'Smart Home Expo', 1.45), ('LEDs', 'Lighting Fair', 1.30),
('Capacitors', 'Component Price Hike', 0.95), ('Resistors', 'Component Price Hike', 0.95),
('RF Components', '5G Network Rollout', 1.60), ('Analog', 'Medical Tech Conference', 1.25),
('Power ICs', 'Data Center Expo', 1.35), ('Memory', 'Data Center Expo', 1.40),
('Microcontrollers', 'New IoT Standard Release', 1.25), ('IoT Modules', 'New IoT Standard Release', 1.35),
('All Categories', 'Chinese New Year Factory Shutdown', 0.85), ('LEDs', 'Diwali Festival', 1.40),
('FPGAs', 'AI Hardware Summit', 1.55), ('Processors', 'AI Hardware Summit', 1.50),
('Sensors', 'Agricultural Tech Expo', 1.25), ('IoT Modules', 'Agricultural Tech Expo', 1.30),
('Dev Boards', 'University Project Season', 1.35), ('Motor Drivers', 'Robotics Competition', 1.60),
('Connectors', 'Industrial Automation Fair', 1.20), ('Power ICs', 'Industrial Automation Fair', 1.25),
('RF Components', 'Satellite Tech Conference', 1.45), ('Memory', 'Gaming Console Launch', 1.70),
('Sensors', 'Wearable Tech Launch', 1.50), ('Microcontrollers', 'Wearable Tech Launch', 1.40),
('Capacitors', 'Supply Chain Disruption', 0.90), ('Diodes', 'Summer Slowdown', 0.95),
('LEDs', 'Architectural Lighting Project', 1.30), ('Analog', 'Audio Engineering Convention', 1.20),
('FPGAs', 'High-Frequency Trading Upgrade Cycle', 1.60), ('RF Components', 'Ham Radio Convention', 1.15),
('Power ICs', 'Green Energy Summit', 1.40), ('Batteries', 'Green Energy Summit', 1.45);

-- Populate MarketTrends Table (50 rows)
INSERT INTO MarketTrends (Category, Trend, GrowthFactor) VALUES
('IoT Modules', '5G Expansion', 1.25), ('RF Components', '5G Expansion', 1.30),
('Microcontrollers', 'AI at the Edge', 1.40), ('FPGAs', 'AI at the Edge', 1.35),
('Power ICs', 'EV Charging Infrastructure', 1.50), ('IGBTs', 'EV Charging Infrastructure', 1.60),
('Sensors', 'Autonomous Vehicles', 1.45), ('Processors', 'Autonomous Vehicles', 1.55),
('Sensors', 'Miniaturization', 1.20), ('Connectors', 'Miniaturization', 1.15),
('IoT Modules', 'Smart Agriculture', 1.30), ('Sensors', 'Smart Agriculture', 1.35),
('Memory', 'Data Center Growth', 1.25), ('Power ICs', 'Data Center Growth', 1.20),
('Microcontrollers', 'Wearable Technology', 1.28), ('Sensors', 'Wearable Technology', 1.32),
('FPGAs', 'Quantum Computing', 1.80), ('Analog', 'Quantum Computing', 1.40),
('IoT Modules', 'Industry 4.0', 1.33), ('Motor Drivers', 'Industry 4.0', 1.27),
('RF Components', 'Satellite Internet', 1.48), ('Power ICs', 'Satellite Internet', 1.38),
('Microcontrollers', 'Home Automation', 1.22), ('LEDs', 'Home Automation', 1.18),
('Sensors', 'Medical Devices', 1.31), ('Analog', 'Medical Devices', 1.29),
('Memory', 'AI Model Training', 1.42), ('Processors', 'AI Model Training', 1.50),
('Power ICs', 'Renewable Energy Systems', 1.45), ('Capacitors', 'Renewable Energy Systems', 1.25),
('RF Components', 'V2X Communication', 1.52), ('Microcontrollers', 'V2X Communication', 1.40),
('LEDs', 'MicroLED Displays', 1.75), ('Drivers', 'MicroLED Displays', 1.65),
('Sensors', 'Environmental Monitoring', 1.30), ('IoT Modules', 'Environmental Monitoring', 1.35),
('Memory', 'High-Performance Computing (HPC)', 1.40), ('FPGAs', 'High-Performance Computing (HPC)', 1.45),
('Power ICs', 'Gallium Nitride (GaN) Adoption', 1.60), ('Diodes', 'Silicon Carbide (SiC) Adoption', 1.55),
('Analog', 'High-Fidelity Audio', 1.15), ('Capacitors', 'High-Fidelity Audio', 1.10),
('Connectors', 'USB4 Standard Adoption', 1.30), ('Interface ICs', 'USB4 Standard Adoption', 1.25),
('IoT Modules', 'Digital Twin Technology', 1.38), ('Sensors', 'Digital Twin Technology', 1.42),
('Microcontrollers', 'RISC-V Architecture Adoption', 1.50), ('FPGAs', 'RISC-V Architecture Adoption', 1.40),
('RF Components', 'Wi-Fi 6E Rollout', 1.35), ('Connectivity', 'Wi-Fi 6E Rollout', 1.30);


COMMIT;
