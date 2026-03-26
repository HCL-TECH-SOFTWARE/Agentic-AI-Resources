-- This SQLite script creates a database with two tables: ProductAvailability and LocationLeadTime.
-- It simulates inventory and logistics data for 50 electronic components from a distributor like Avnet.

-- Drop existing tables to ensure a clean slate on re-execution.
DROP TABLE IF EXISTS ProductAvailability;
DROP TABLE IF EXISTS LocationLeadTime;

-- --------------------------------------------------------------------------------
-- Table 1: ProductAvailability
-- Tracks current stock levels, availability status, and pricing for 50 products.
-- --------------------------------------------------------------------------------
CREATE TABLE [ProductAvailability]
(
    [ProductID] TEXT NOT NULL PRIMARY KEY,
    [ProductNameCategory] TEXT NOT NULL,
    [Availability] TEXT, -- 'In Stock', 'Low Stock', 'Out of Stock'
    [Quantity] INTEGER,
    [Price] REAL
);

-- --------------------------------------------------------------------------------
-- Table 2: LocationLeadTime
-- Tracks the lead time for each product from a specific global warehouse location.
-- --------------------------------------------------------------------------------
CREATE TABLE [LocationLeadTime]
(
    [RecordID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductID] TEXT NOT NULL,
    [Location] TEXT,
    [Country] TEXT,
    [State] TEXT,
    [LeadTimeDays] INTEGER,
    FOREIGN KEY (ProductID) REFERENCES ProductAvailability(ProductID)
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- Populating both tables with 50 consistent product entries.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate ProductAvailability Table
INSERT INTO ProductAvailability (ProductID, ProductNameCategory, Availability, Quantity, Price) VALUES
('AVT-MCU-01001', 'STM32G071CBT6 Microcontroller', 'In Stock', 12500, 2.95),
('AVT-SEN-02002', 'BME680 Environmental Sensor', 'In Stock', 8800, 9.80),
('AVT-PWR-03003', 'LM7805 5V Voltage Regulator', 'Out of Stock', 0, 0.45),
('AVT-CON-04004', 'ESP32-S3-WROOM-1-N8R2 Module', 'In Stock', 25000, 4.75),
('AVT-PAS-05005', '10k Ohm 0603 Resistor - Reel', 'In Stock', 500000, 0.01),
('AVT-FPGA-06006', 'Lattice iCE40UP5K-SG48 FPGA', 'Low Stock', 150, 12.50),
('AVT-MEM-07007', 'W25Q128JVSIQ 128Mbit SPI Flash', 'In Stock', 45000, 1.30),
('AVT-ANA-08008', 'MCP3008-I/P 10-bit ADC', 'In Stock', 18000, 1.85),
('AVT-DRV-09009', 'DRV8825 Stepper Motor Driver', 'Low Stock', 500, 2.25),
('AVT-SEN-10010', 'VL53L1X Time-of-Flight Sensor', 'In Stock', 9500, 3.15),
('AVT-MCU-11011', 'Raspberry Pi Pico RP2040', 'In Stock', 35000, 1.00),
('AVT-PWR-12012', 'TPS61021A Boost Converter', 'In Stock', 7800, 1.80),
('AVT-CON-13013', 'nRF52840-QIAA BLE/NFC SoC', 'Low Stock', 800, 8.50),
('AVT-PAS-14014', '100uF 16V Electrolytic Capacitor', 'In Stock', 85000, 0.12),
('AVT-ANA-15015', 'ADXL345 Accelerometer', 'Out of Stock', 0, 4.80),
('AVT-FPGA-16016', 'Xilinx Artix-7 XC7A35T-CSG324', 'Low Stock', 95, 88.00),
('AVT-MEM-17017', 'MT41K256M16TW-107 4Gb DDR3L SDRAM', 'Low Stock', 210, 15.20),
('AVT-DRV-18018', 'L298N Dual H-Bridge Driver', 'In Stock', 6500, 1.50),
('AVT-SEN-19019', 'SHT31-D Humidity/Temp Sensor', 'In Stock', 11000, 2.70),
('AVT-PWR-20020', 'AP2112K-3.3TRG1 3.3V LDO', 'In Stock', 150000, 0.35),
('AVT-MCU-21021', 'ATtiny85-20SU MCU', 'In Stock', 22000, 1.40),
('AVT-CON-22022', 'SIM7600G-H 4G LTE Module', 'Low Stock', 300, 28.00),
('AVT-PAS-23023', '4.7k Ohm 0805 Resistor - Reel', 'In Stock', 450000, 0.012),
('AVT-ANA-24024', 'INA219 Current Sensor', 'In Stock', 8900, 1.70),
('AVT-DRV-25025', 'A4988 Stepper Driver Carrier', 'In Stock', 4300, 2.10),
('AVT-SEN-26026', 'DS18B20 Programmable Thermometer', 'In Stock', 75000, 1.10),
('AVT-FPGA-27027', 'Intel Cyclone 10 LP 10CL025YU256C8G', 'Out of Stock', 0, 45.00),
('AVT-MEM-28028', '24LC512-I/P 512Kb I2C EEPROM', 'In Stock', 19500, 0.95),
('AVT-PWR-29029', 'MCP73831T-2ACI/OT LiPo Charger IC', 'In Stock', 28000, 0.75),
('AVT-CON-30030', 'LoRa RA-02 SX1278 Module', 'In Stock', 3200, 5.50),
('AVT-MCU-31031', 'Seeed Studio XIAO SAMD21', 'In Stock', 1200, 9.40),
('AVT-SEN-32032', 'MPU-9250 9-Axis IMU', 'Low Stock', 450, 11.20),
('AVT-PWR-33033', 'LT1763CS8-3.3#PBF LDO Regulator', 'Low Stock', 900, 6.80),
('AVT-PAS-34034', '1uF 0805 X7R Ceramic Capacitor', 'In Stock', 600000, 0.02),
('AVT-ANA-35035', 'ADS1115 16-Bit ADC Module', 'In Stock', 2100, 4.50),
('AVT-DRV-36036', 'TB6612FNG Motor Driver IC', 'In Stock', 8200, 1.90),
('AVT-CON-37037', 'Quectel BG96 NB-IoT/LTE-M Module', 'Out of Stock', 0, 18.50),
('AVT-FPGA-38038', 'Altera EP4CE10F17C8N FPGA', 'Low Stock', 200, 32.00),
('AVT-MEM-39039', 'ISSI IS42S16400J-7TLI SDRAM', 'In Stock', 4800, 2.80),
('AVT-SEN-40040', 'MAX30102 Pulse Oximeter Sensor', 'In Stock', 1300, 6.20),
('AVT-PWR-41041', 'WE-HCF 2812 High Current Inductor', 'In Stock', 1600, 8.10),
('AVT-MCU-42042', 'Teensy 4.1 Development Board', 'Low Stock', 650, 29.85),
('AVT-CON-43043', 'U-blox NEO-M8N GPS Module', 'In Stock', 950, 19.50),
('AVT-PAS-44044', '22pF 0603 C0G Ceramic Capacitor', 'In Stock', 950000, 0.015),
('AVT-ANA-45045', 'MCP4725 12-bit DAC', 'In Stock', 14000, 1.45),
('AVT-DRV-46046', 'ULN2003 Darlington Array', 'In Stock', 45000, 0.38),
('AVT-SEN-47047', 'HC-SR04 Ultrasonic Sensor', 'In Stock', 9800, 0.95),
('AVT-FPGA-48048', 'ECP5-5G LFE5UM5G-45F-8BG381C', 'Out of Stock', 0, 155.00),
('AVT-MEM-49049', 'CY7C1041CV33-10ZSXI SRAM', 'Low Stock', 350, 7.50),
('AVT-PWR-50050', 'MIC29302WU LDO Regulator', 'In Stock', 2200, 5.20);

-- Populate LocationLeadTime Table
INSERT INTO LocationLeadTime (ProductID, Location, Country, State, LeadTimeDays) VALUES
('AVT-MCU-01001', 'Singapore', 'Singapore', 'N/A', 14),
('AVT-SEN-02002', 'Liege', 'Belgium', 'Liege', 18),
('AVT-PWR-03003', 'Phoenix', 'USA', 'Arizona', 90),
('AVT-CON-04004', 'Hong Kong', 'Hong Kong', 'N/A', 7),
('AVT-PAS-05005', 'Bangalore', 'India', 'Karnataka', 3),
('AVT-FPGA-06006', 'Phoenix', 'USA', 'Arizona', 45),
('AVT-MEM-07007', 'Singapore', 'Singapore', 'N/A', 12),
('AVT-ANA-08008', 'Pune', 'India', 'Maharashtra', 5),
('AVT-DRV-09009', 'Hong Kong', 'Hong Kong', 'N/A', 21),
('AVT-SEN-10010', 'Liege', 'Belgium', 'Liege', 25),
('AVT-MCU-11011', 'Pune', 'India', 'Maharashtra', 4),
('AVT-PWR-12012', 'Singapore', 'Singapore', 'N/A', 16),
('AVT-CON-13013', 'Liege', 'Belgium', 'Liege', 55),
('AVT-PAS-14014', 'Hong Kong', 'Hong Kong', 'N/A', 8),
('AVT-ANA-15015', 'Phoenix', 'USA', 'Arizona', 120),
('AVT-FPGA-16016', 'Phoenix', 'USA', 'Arizona', 75),
('AVT-MEM-17017', 'Singapore', 'Singapore', 'N/A', 60),
('AVT-DRV-18018', 'Bangalore', 'India', 'Karnataka', 7),
('AVT-SEN-19019', 'Liege', 'Belgium', 'Liege', 22),
('AVT-PWR-20020', 'Hong Kong', 'Hong Kong', 'N/A', 9),
('AVT-MCU-21021', 'Pune', 'India', 'Maharashtra', 6),
('AVT-CON-22022', 'Hong Kong', 'Hong Kong', 'N/A', 40),
('AVT-PAS-23023', 'Singapore', 'Singapore', 'N/A', 10),
('AVT-ANA-24024', 'Bangalore', 'India', 'Karnataka', 8),
('AVT-DRV-25025', 'Hong Kong', 'Hong Kong', 'N/A', 15),
('AVT-SEN-26026', 'Singapore', 'Singapore', 'N/A', 11),
('AVT-FPGA-27027', 'Phoenix', 'USA', 'Arizona', 95),
('AVT-MEM-28028', 'Pune', 'India', 'Maharashtra', 7),
('AVT-PWR-29029', 'Liege', 'Belgium', 'Liege', 20),
('AVT-CON-30030', 'Hong Kong', 'Hong Kong', 'N/A', 18),
('AVT-MCU-31031', 'Bangalore', 'India', 'Karnataka', 10),
('AVT-SEN-32032', 'Phoenix', 'USA', 'Arizona', 35),
('AVT-PWR-33033', 'Liege', 'Belgium', 'Liege', 40),
('AVT-PAS-34034', 'Singapore', 'Singapore', 'N/A', 9),
('AVT-ANA-35035', 'Pune', 'India', 'Maharashtra', 8),
('AVT-DRV-36036', 'Hong Kong', 'Hong Kong', 'N/A', 16),
('AVT-CON-37037', 'Liege', 'Belgium', 'Liege', 85),
('AVT-FPGA-38038', 'Phoenix', 'USA', 'Arizona', 50),
('AVT-MEM-39039', 'Singapore', 'Singapore', 'N/A', 24),
('AVT-SEN-40040', 'Liege', 'Belgium', 'Liege', 28),
('AVT-PWR-41041', 'Liege', 'Belgium', 'Liege', 25),
('AVT-MCU-42042', 'Phoenix', 'USA', 'Arizona', 30),
('AVT-CON-43043', 'Hong Kong', 'Hong Kong', 'N/A', 22),
('AVT-PAS-44044', 'Bangalore', 'India', 'Karnataka', 4),
('AVT-ANA-45045', 'Pune', 'India', 'Maharashtra', 9),
('AVT-DRV-46046', 'Singapore', 'Singapore', 'N/A', 13),
('AVT-SEN-47047', 'Hong Kong', 'Hong Kong', 'N/A', 10),
('AVT-FPGA-48048', 'Phoenix', 'USA', 'Arizona', 150),
('AVT-MEM-49049', 'Liege', 'Belgium', 'Liege', 65),
('AVT-PWR-50050', 'Phoenix', 'USA', 'Arizona', 28);

COMMIT;
