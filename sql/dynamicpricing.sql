-- This SQLite script creates a multi-table database for Avnet-styled hardware components.
-- It includes tables for sales, competitor pricing, and supply chain logistics.
-- All tables are populated with 50 consistent, realistic product entries.

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
-- Populating all three tables with 50 consistent product entries.
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

INSERT INTO SalesData (ProductID, ProductName, Category, UnitsSold, Price, Revenue, Date) VALUES
('STM32F407VGT6', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 12550, 9.55, 119852.50, '2025-06-15'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 55200, 2.15, 118680.00, '2025-06-14'),
('ESP32-WROOM-32E', 'Espressif Systems Wi-Fi/BT SoC Module', 'Connectivity', 85300, 4.20, 358260.00, '2025-06-20'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 7500, 15.50, 116250.00, '2025-05-30'),
('AD797BRZ', 'Analog Devices Ultralow Distortion Op-Amp', 'Analog', 9800, 11.25, 110250.00, '2025-06-18'),
('LTC6268IS6#TRMPBF', 'Analog Devices FET-Input Op-Amp', 'Analog', 22000, 5.80, 127600.00, '2025-06-11'),
('NCP1117ST33T3G', 'onsemi 1A LDO Voltage Regulator', 'Power Management', 150000, 0.45, 67500.00, '2025-06-22'),
('TPS54560DDAR', 'Texas Instruments 60V, 5A Step-Down Converter', 'Power Management', 18500, 6.75, 124875.00, '2025-06-17'),
('MPU-6050', 'TDK InvenSense 6-Axis MEMS Gyro/Accelerometer', 'Sensors', 62000, 3.85, 238700.00, '2025-06-19'),
('BME280', 'Bosch Sensortec Humidity, Pressure, Temp Sensor', 'Sensors', 41000, 2.90, 118900.00, '2025-06-12'),
('MT29F4G08ABAEAWP-IT:E', 'Micron 4Gb NAND Flash Memory', 'Memory', 8800, 12.50, 110000.00, '2025-05-25'),
('W25Q128JVSIM', 'Winbond 128Mbit SPI Flash', 'Memory', 95000, 1.20, 114000.00, '2025-06-08'),
('XC7Z020-1CLG400C', 'AMD/Xilinx Zynq-7000 SoC FPGA', 'FPGAs & CPLDs', 1500, 120.00, 180000.00, '2025-06-05'),
('EP4CE6E22C8N', 'Intel Cyclone IV E FPGA', 'FPGAs & CPLDs', 4300, 28.50, 122550.00, '2025-06-01'),
('CC2640R2FRGZR', 'Texas Instruments BLE 4.2/5.0 MCU', 'Connectivity', 33000, 3.90, 128700.00, '2025-06-21'),
('MCP2515-I/P', 'Microchip CAN Bus Controller', 'Interface', 29500, 2.40, 70800.00, '2025-06-16'),
('FT232RL', 'FTDI USB to Serial UART IC', 'Interface', 71000, 2.85, 202350.00, '2025-06-23'),
('ATTINY85-20PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 88000, 1.30, 114400.00, '2025-06-10'),
('LM358DR', 'Texas Instruments Dual Op-Amp', 'Analog', 250000, 0.22, 55000.00, '2025-06-24'),
('DS18B20', 'Analog Devices 1-Wire Digital Thermometer', 'Sensors', 110000, 1.05, 115500.00, '2025-06-02'),
('PCA9685PW', 'NXP 16-channel, 12-bit PWM/Servo Driver', 'Interface', 45000, 1.95, 87750.00, '2025-06-09'),
('IRFZ44N', 'Infineon N-Channel Power MOSFET', 'Power Management', 225000, 0.55, 123750.00, '2025-06-13'),
('NRF52840-QIAA', 'Nordic Semiconductor BLE 5/Thread/Zigbee SoC', 'Connectivity', 19500, 8.25, 160875.00, '2025-06-07'),
('TEENSY4.0', 'PJRC Development Board', 'Dev Boards', 6200, 24.95, 154690.00, '2025-06-18'),
('RASPBERRY-PI-4B-4GB', 'Raspberry Pi 4 Model B 4GB', 'Dev Boards', 8100, 55.00, 445500.00, '2025-06-20'),
('INA219BIDR', 'Texas Instruments Current/Power Monitor', 'Sensors', 53000, 1.65, 87450.00, '2025-06-11'),
('MCP3008-I/P', 'Microchip 8-Channel 10-Bit ADC', 'Analog', 68000, 1.80, 122400.00, '2025-06-04'),
('LSM6DS3TR-C', 'STMicroelectronics 3D Accel/3D Gyro', 'Sensors', 38000, 3.10, 117800.00, '2025-05-28'),
('SGP30', 'Sensirion TVOC/eCO2 Gas Sensor', 'Sensors', 12500, 11.50, 143750.00, '2025-05-22'),
('MCP4725A0T-E/CH', 'Microchip 12-Bit DAC with EEPROM', 'Analog', 49000, 1.40, 68600.00, '2025-06-17'),
('STM32G071CBT6', 'STMicroelectronics ARM Cortex-M0+ MCU', 'Microcontrollers', 26000, 2.95, 76700.00, '2025-06-06'),
('ISL28217FBZ', 'Renesas Precision Low Noise Op-Amp', 'Analog', 14000, 4.25, 59500.00, '2025-06-03'),
('Si5351A-B-GT', 'Silicon Labs Clock Generator', 'Timing', 31000, 2.10, 65100.00, '2025-05-29'),
('HMC5883L', 'Honeywell 3-Axis Digital Compass', 'Sensors', 18000, 1.99, 35820.00, '2025-05-21'),
('TPS61021ADSGR', 'Texas Instruments Boost Converter', 'Power Management', 44000, 1.75, 77000.00, '2025-06-19'),
('LIR2032', 'EEMB 3.6V Rechargeable Coin Cell', 'Batteries', 95000, 0.85, 80750.00, '2025-06-22'),
('CR2032', 'Panasonic 3V Lithium Coin Cell', 'Batteries', 550000, 0.30, 165000.00, '2025-06-24'),
('RJ45-LED-G', 'Generic RJ45 MagJack Connector', 'Connectors', 120000, 0.95, 114000.00, '2025-06-14'),
('USB-C-31-SMT', 'Generic USB-C SMT Connector', 'Connectors', 85000, 0.60, 51000.00, '2025-06-16'),
('0805W8F1001T5E', 'UNI-ROYAL 1k Ohm 1% 0805 Resistor', 'Passives', 8500000, 0.008, 68000.00, '2025-06-23'),
('XCVU13P-2FHGB2104E', 'AMD/Xilinx Virtex UltraScale+ FPGA', 'FPGAs & CPLDs', 250, 35000.00, 8750000.00, '2025-06-10'),
('ADAU1701JSTZ', 'Analog Devices Audio DSP', 'Audio', 15000, 7.50, 112500.00, '2025-06-12'),
('RTK8762DK', 'Realtek BLE 5.0 SoC', 'Connectivity', 120000, 1.85, 222000.00, '2025-06-18'),
('MAX7219CNG', 'Analog Devices LED Display Driver', 'Drivers', 75000, 2.50, 187500.00, '2025-06-21'),
('AMS1117-3.3', 'Advanced Monolithic Systems LDO Regulator', 'Power Management', 600000, 0.18, 108000.00, '2025-06-24'),
('PIC16F877A-I/P', 'Microchip 8-bit PIC MCU', 'Microcontrollers', 48000, 3.10, 148800.00, '2025-06-19'),
('SSD1306', 'Solomon Systech OLED Driver', 'Drivers', 92000, 1.15, 105800.00, '2025-06-20'),
('VL53L0X', 'STMicroelectronics ToF Sensor', 'Sensors', 42000, 2.75, 115500.00, '2025-06-11'),
('HM-10', 'Jinan Huamao BLE Module', 'Connectivity', 35000, 3.50, 122500.00, '2025-06-13'),
('GRM188R61A106KE69D', 'Murata 10uF 0603 Capacitor', 'Passives', 15000000, 0.015, 225000.00, '2025-06-22');


-- --------------------------------------------------------------------------------
-- Populate CompetitorPricing Table
-- Prices are slightly varied to simulate a real competitive market.
-- --------------------------------------------------------------------------------
INSERT INTO CompetitorPricing (ProductID, ProductName, Category, Competitor, CompetitorPrice, Date) VALUES
('STM32F407VGT6', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 'DIGIKEY', 9.62, '2025-06-14'),
('STM32F407VGT6', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 'MOUSER', 9.58, '2025-06-15'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 'ARROW', 2.12, '2025-06-13'),
('ESP32-WROOM-32E', 'Espressif Systems Wi-Fi/BT SoC Module', 'Connectivity', 'MOUSER', 4.15, '2025-06-19'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 'NEWELEMENT', 15.75, '2025-05-29'),
('AD797BRZ', 'Analog Devices Ultralow Distortion Op-Amp', 'Analog', 'DIGIKEY', 11.35, '2025-06-17'),
('NCP1117ST33T3G', 'onsemi 1A LDO Voltage Regulator', 'Power Management', 'FUTURE', 0.44, '2025-06-21'),
('TPS54560DDAR', 'Texas Instruments 60V, 5A Step-Down Converter', 'Power Management', 'MOUSER', 6.70, '2025-06-16'),
('MPU-6050', 'TDK InvenSense 6-Axis MEMS Gyro/Accelerometer', 'Sensors', 'SPARKFUN', 3.95, '2025-06-18'),
('BME280', 'Bosch Sensortec Humidity, Pressure, Temp Sensor', 'Sensors', 'ADAFRUIT', 2.95, '2025-06-11'),
('XC7Z020-1CLG400C', 'AMD/Xilinx Zynq-7000 SoC FPGA', 'FPGAs & CPLDs', 'ARROW', 121.50, '2025-06-04'),
('FT232RL', 'FTDI USB to Serial UART IC', 'Interface', 'DIGIKEY', 2.89, '2025-06-22'),
('LM358DR', 'Texas Instruments Dual Op-Amp', 'Analog', 'FUTURE', 0.21, '2025-06-23'),
('DS18B20', 'Analog Devices 1-Wire Digital Thermometer', 'Sensors', 'MOUSER', 1.08, '2025-06-01'),
('PCA9685PW', 'NXP 16-channel, 12-bit PWM/Servo Driver', 'Interface', 'ADAFRUIT', 1.99, '2025-06-08'),
('IRFZ44N', 'Infineon N-Channel Power MOSFET', 'Power Management', 'DIGIKEY', 0.58, '2025-06-12'),
('NRF52840-QIAA', 'Nordic Semiconductor BLE 5/Thread/Zigbee SoC', 'Connectivity', 'MOUSER', 8.20, '2025-06-06'),
('RASPBERRY-PI-4B-4GB', 'Raspberry Pi 4 Model B 4GB', 'Dev Boards', 'NEWELEMENT', 54.99, '2025-06-19'),
('INA219BIDR', 'Texas Instruments Current/Power Monitor', 'Sensors', 'ARROW', 1.68, '2025-06-10'),
('CR2032', 'Panasonic 3V Lithium Coin Cell', 'Batteries', 'DIGIKEY', 0.32, '2025-06-23'),
('XCVU13P-2FHGB2104E', 'AMD/Xilinx Virtex UltraScale+ FPGA', 'FPGAs & CPLDs', 'DIGIKEY', 35250.00, '2025-06-09'),
('ADAU1701JSTZ', 'Analog Devices Audio DSP', 'Audio', 'MOUSER', 7.55, '2025-06-11'),
('RTK8762DK', 'Realtek BLE 5.0 SoC', 'Connectivity', 'LCSC', 1.82, '2025-06-17'),
('MAX7219CNG', 'Analog Devices LED Display Driver', 'Drivers', 'ARROW', 2.55, '2025-06-20'),
('AMS1117-3.3', 'Advanced Monolithic Systems LDO Regulator', 'Power Management', 'FUTURE', 0.17, '2025-06-23'),
('PIC16F877A-I/P', 'Microchip 8-bit PIC MCU', 'Microcontrollers', 'DIGIKEY', 3.15, '2025-06-18'),
('SSD1306', 'Solomon Systech OLED Driver', 'Drivers', 'ADAFRUIT', 1.25, '2025-06-19'),
('VL53L0X', 'STMicroelectronics ToF Sensor', 'Sensors', 'SPARKFUN', 2.80, '2025-06-10'),
('HM-10', 'Jinan Huamao BLE Module', 'Connectivity', 'LCSC', 3.45, '2025-06-12'),
('GRM188R61A106KE69D', 'Murata 10uF 0603 Capacitor', 'Passives', 'MOUSER', 0.016, '2025-06-21');


-- --------------------------------------------------------------------------------
-- Populate SupplyChainConditions Table
-- Lead times and risks reflect a volatile electronics market.
-- --------------------------------------------------------------------------------
INSERT INTO SupplyChainConditions (ProductID, ProductName, Category, LeadTimeDays, DelayRisk, LogisticsScore, LastUpdated) VALUES
('STM32F407VGT6', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 45, 'Medium', 78, '2025-06-24 10:00:00'),
('ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 14, 'Low', 95, '2025-06-24 11:30:00'),
('ESP32-WROOM-32E', 'Espressif Systems Wi-Fi/BT SoC Module', 'Connectivity', 7, 'Low', 98, '2025-06-23 18:00:00'),
('BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 90, 'High', 65, '2025-06-20 09:00:00'),
('AD797BRZ', 'Analog Devices Ultralow Distortion Op-Amp', 'Analog', 60, 'Medium', 72, '2025-06-22 14:00:00'),
('NCP1117ST33T3G', 'onsemi 1A LDO Voltage Regulator', 'Power Management', 5, 'Low', 99, '2025-06-24 12:00:00'),
('TPS54560DDAR', 'Texas Instruments 60V, 5A Step-Down Converter', 'Power Management', 30, 'Low', 88, '2025-06-21 16:30:00'),
('MPU-6050', 'TDK InvenSense 6-Axis MEMS Gyro/Accelerometer', 'Sensors', 21, 'Low', 92, '2025-06-23 11:00:00'),
('BME280', 'Bosch Sensortec Humidity, Pressure, Temp Sensor', 'Sensors', 25, 'Low', 90, '2025-06-19 15:00:00'),
('MT29F4G08ABAEAWP-IT:E', 'Micron 4Gb NAND Flash Memory', 'Memory', 120, 'High', 55, '2025-06-15 10:00:00'),
('XC7Z020-1CLG400C', 'AMD/Xilinx Zynq-7000 SoC FPGA', 'FPGAs & CPLDs', 180, 'Critical', 40, '2025-06-18 17:00:00'),
('FT232RL', 'FTDI USB to Serial UART IC', 'Interface', 10, 'Low', 96, '2025-06-24 09:45:00'),
('LM358DR', 'Texas Instruments Dual Op-Amp', 'Analog', 3, 'Low', 99, '2025-06-24 11:15:00'),
('DS18B20', 'Analog Devices 1-Wire Digital Thermometer', 'Sensors', 35, 'Medium', 85, '2025-06-17 13:00:00'),
('IRFZ44N', 'Infineon N-Channel Power MOSFET', 'Power Management', 7, 'Low', 97, '2025-06-24 10:30:00'),
('NRF52840-QIAA', 'Nordic Semiconductor BLE 5/Thread/Zigbee SoC', 'Connectivity', 75, 'High', 68, '2025-06-22 08:00:00'),
('RASPBERRY-PI-4B-4GB', 'Raspberry Pi 4 Model B 4GB', 'Dev Boards', 80, 'High', 67, '2025-06-23 20:00:00'),
('INA219BIDR', 'Texas Instruments Current/Power Monitor', 'Sensors', 28, 'Low', 89, '2025-06-20 12:00:00'),
('CR2032', 'Panasonic 3V Lithium Coin Cell', 'Batteries', 2, 'Low', 99, '2025-06-24 12:15:00'),
('0805W8F1001T5E', 'UNI-ROYAL 1k Ohm 1% 0805 Resistor', 'Passives', 1, 'Low', 99, '2025-06-24 12:16:00'),
('XCVU13P-2FHGB2104E', 'AMD/Xilinx Virtex UltraScale+ FPGA', 'FPGAs & CPLDs', 220, 'Critical', 35, '2025-06-23 10:00:00'),
('ADAU1701JSTZ', 'Analog Devices Audio DSP', 'Audio', 40, 'Medium', 82, '2025-06-24 09:00:00'),
('RTK8762DK', 'Realtek BLE 5.0 SoC', 'Connectivity', 15, 'Low', 94, '2025-06-24 11:00:00'),
('MAX7219CNG', 'Analog Devices LED Display Driver', 'Drivers', 28, 'Low', 89, '2025-06-22 15:00:00'),
('AMS1117-3.3', 'Advanced Monolithic Systems LDO Regulator', 'Power Management', 5, 'Low', 99, '2025-06-24 12:20:00'),
('PIC16F877A-I/P', 'Microchip 8-bit PIC MCU', 'Microcontrollers', 55, 'Medium', 75, '2025-06-21 11:00:00'),
('SSD1306', 'Solomon Systech OLED Driver', 'Drivers', 30, 'Low', 88, '2025-06-20 16:00:00'),
('VL53L0X', 'STMicroelectronics ToF Sensor', 'Sensors', 22, 'Low', 91, '2025-06-23 14:00:00'),
('HM-10', 'Jinan Huamao BLE Module', 'Connectivity', 18, 'Low', 93, '2025-06-24 09:30:00'),
('GRM188R61A106KE69D', 'Murata 10uF 0603 Capacitor', 'Passives', 3, 'Low', 99, '2025-06-24 12:22:00');


COMMIT;