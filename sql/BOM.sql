-- This SQLite script creates a Bill of Materials (BOM) table.
-- It is populated with 50 realistic electronic component entries, simulating a BOM for a complex electronics project.

-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS BillOfMaterials;

-- Create the Bill of Materials table with the specified columns.
CREATE TABLE [BillOfMaterials]
(
    [Item] INTEGER PRIMARY KEY,
    [ReferenceDesignator] TEXT,
    [Quantity] INTEGER,
    [Manufacturer] TEXT,
    [ManufacturerPartNumber] TEXT,
    [Description] TEXT,
    [Package] TEXT,
    [Supplier] TEXT,
    [SupplierPartNumber] TEXT
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 50 realistic component entries.
INSERT INTO BillOfMaterials (Item, ReferenceDesignator, Quantity, Manufacturer, ManufacturerPartNumber, Description, Package, Supplier, SupplierPartNumber) VALUES
(1, 'U1', 1, 'STMicroelectronics', 'STM32F407VGT6', 'MCU ARM Cortex-M4 168MHz 1MB Flash', 'LQFP-100', 'Digi-Key', '497-11913-ND'),
(2, 'U2', 1, 'Texas Instruments', 'TPS54560DDAR', '60V, 5A Step-Down DC-DC Converter', 'SO-PowerPad-8', 'Mouser', '595-TPS54560DDAR'),
(3, 'U3', 1, 'Espressif Systems', 'ESP32-WROOM-32E (8MB)', 'Wi-Fi + BT/BLE Module', 'Module', 'Digi-Key', '1965-ESP32-WROOM-32E-8MB-ND'),
(4, 'U4', 1, 'Microchip Technology', 'ATMEGA328P-PU', '8-bit AVR MCU 32KB Flash', 'DIP-28', 'Mouser', '556-ATMEGA328P-PU'),
(5, 'U5', 1, 'FTDI', 'FT232RL', 'USB to Serial UART IC', 'SSOP-28', 'Digi-Key', '768-1007-5-ND'),
(6, 'Y1', 1, 'Abracon', 'ABM8G-25.000MHZ-B2-T', 'Crystal 25.000MHz 18pF', 'SMD-4', 'Mouser', '815-ABM8G-B2-T'),
(7, 'Y2', 1, 'Abracon', 'ABS07-32.768KHZ-7-T', 'Crystal 32.768kHz 7pF', 'SMD-2', 'Digi-Key', '535-9003-1-ND'),
(8, 'C1, C2, C5, C8', 4, 'Murata', 'GRM155R61A225KE19D', 'Capacitor, CER, 2.2uF, 10V, X5R', '0402', 'Mouser', '81-GRM155R61A225K'),
(9, 'C3, C4, C6, C7, C9-C15', 10, 'YAGEO', 'CC0603KRX7R9BB104', 'Capacitor, CER, 100nF, 50V, X7R', '0603', 'Digi-Key', '311-1181-1-ND'),
(10, 'C16, C17', 2, 'KEMET', 'T491D107K010AT', 'Capacitor, TANT, 100uF, 10V', '2917', 'Mouser', '80-T491D107K010AT'),
(11, 'R1, R2, R7, R8', 4, 'Vishay', 'CRCW060310K0FKEA', 'Resistor, 10k Ohm, 1%, 1/10W', '0603', 'Digi-Key', '541-10.0KCR-ND'),
(12, 'R3, R4', 2, 'YAGEO', 'RC0402FR-0747RL', 'Resistor, 47 Ohm, 1%, 1/16W', '0402', 'Mouser', '603-RC0402FR-0747RL'),
(13, 'R5, R6', 2, 'Panasonic', 'ERJ-3EKF1001V', 'Resistor, 1k Ohm, 1%, 1/10W', '0603', 'Digi-Key', 'P1.0KCACT-ND'),
(14, 'D1, D2', 2, 'onsemi', 'MBR0520LT1G', 'Diode, Schottky, 20V, 0.5A', 'SOD-123', 'Mouser', '863-MBR0520LT1G'),
(15, 'LED1, LED2, LED3', 3, 'Kingbright', 'APG1608VGC-A', 'LED, Green, 574nm', '0603', 'Digi-Key', '754-2067-1-ND'),
(16, 'Q1', 1, 'Infineon Technologies', 'IRLZ44N', 'MOSFET, N-CH, 55V, 47A', 'TO-220AB', 'Mouser', '942-IRLZ44N'),
(17, 'Q2', 1, 'onsemi', 'MMBT2222ALT1G', 'Transistor, NPN, 40V, 600mA', 'SOT-23', 'Digi-Key', 'MMBT2222ALT1GOSCT-ND'),
(18, 'J1', 1, 'Molex', '1050170001', 'Connector, Micro-USB 2.0, B-Type', 'SMD', 'Mouser', '538-105017-0001'),
(19, 'J2', 1, 'Amphenol ICC', '73725-0110BLF', 'Header, 2x20, 2.54mm, Male', 'Through-Hole', 'Digi-Key', '609-4623-ND'),
(20, 'F1', 1, 'Littelfuse', '0451.500MRL', 'Fuse, 500mA, 125V, Fast Acting', '1206', 'Mouser', '576-0451.500MRL'),
(21, 'U6', 1, 'Texas Instruments', 'LM358DR', 'Op-Amp, Dual, General Purpose', 'SOIC-8', 'Digi-Key', '296-1444-1-ND'),
(22, 'U7', 1, 'Analog Devices', 'ADUM1201ARZ', 'Digital Isolator, 2-Channel', 'SOIC-8', 'Mouser', '584-ADUM1201ARZ'),
(23, 'L1', 1, 'Bourns', 'SRN4018-100M', 'Inductor, Power, 10uH, 1.4A', 'SMD', 'Digi-Key', 'SRN4018-100MCT-ND'),
(24, 'SW1', 1, 'E-Switch', 'TL3301SPF160QG', 'Switch, TACT, SPST-NO, 0.05A', 'SMD', 'Mouser', '612-TL3301SPF160QG'),
(25, 'U8', 1, 'Microchip Technology', '24LC256-I/SN', 'EEPROM, 256Kbit, I2C', 'SOIC-8', 'Digi-Key', '24LC256-I/SN-ND'),
(26, 'U9', 1, 'Maxim Integrated', 'DS3231SN#', 'RTC, I2C, TCXO', 'SOIC-16', 'Mouser', '700-DS3231SN'),
(27, 'R9, R10', 2, 'KOA Speer', 'RK73H1JTTD4701F', 'Resistor, 4.7k Ohm, 1%, 1/10W', '0603', 'Digi-Key', '2019-RK73H1JTTD4701FCT-ND'),
(28, 'C18, C19', 2, 'Samsung', 'CL05A105KP5NNNC', 'Capacitor, CER, 1uF, 10V, X5R', '0402', 'Mouser', '187-CL05A105KP5NNNC'),
(29, 'Q3, Q4', 2, 'Diodes Incorporated', 'DMN3404L-7', 'MOSFET, N-CH, 30V, 5.8A', 'SOT-23', 'Digi-Key', 'DMN3404L-7DICT-ND'),
(30, 'U10', 1, 'Texas Instruments', 'INA219BIDR', 'Current/Power Monitor, I2C', 'SOIC-8', 'Mouser', '595-INA219BIDR'),
(31, 'J3', 1, 'TE Connectivity', '5-103957-1', 'Header, 1x6, 2.54mm, Male', 'Through-Hole', 'Digi-Key', 'A1943-ND'),
(32, 'FB1, FB2', 2, 'Wurth Elektronik', '742792041', 'Ferrite Bead, 600 Ohm @ 100MHz', '0805', 'Mouser', '710-742792041'),
(33, 'U11', 1, 'NXP', 'PCA9685PW,118', '16-Ch, 12-bit PWM/Servo Driver', 'TSSOP-28', 'Digi-Key', '1727-2101-1-ND'),
(34, 'R11', 1, 'Vishay', 'CRCW04021M00FKED', 'Resistor, 1M Ohm, 1%, 1/16W', '0402', 'Mouser', '71-CRCW04021M00FKED'),
(35, 'C20, C21, C22', 3, 'AVX', '06035A101JAT2A', 'Capacitor, CER, 100pF, 50V, C0G', '0603', 'Digi-Key', '478-1422-1-ND'),
(36, 'U12', 1, 'Texas Instruments', 'SN74LVC1G08DCKR', 'Single 2-In Positive-AND Gate', 'SC-70-5', 'Mouser', '595-SN74LVC1G08DCKR'),
(37, 'D3', 1, 'Vishay', 'BZT52C3V3-7-F', 'Diode, Zener, 3.3V, 200mW', 'SOD-123', 'Digi-Key', 'BZT52C3V3-FDICT-ND'),
(38, 'U13', 1, 'onsemi', 'NCP1117ST33T3G', 'LDO Regulator, 3.3V, 1A', 'SOT-223', 'Mouser', '863-NCP1117ST33T3G'),
(39, 'J4', 1, 'Kycon', 'KLDX-0202-A', 'Audio Jack, 3.5mm, Stereo', 'Through-Hole', 'Digi-Key', 'K841X-ND'),
(40, 'R12, R13, R14, R15', 4, 'TE Connectivity', 'CRG0603F220R', 'Resistor, 220 Ohm, 1%, 1/10W', '0603', 'Mouser', '279-CRG0603F220R'),
(41, 'U14', 1, 'Bosch Sensortec', 'BME280', 'Sensor, Pressure, Temp, Humidity', 'LGA-8', 'Digi-Key', '1965-1055-1-ND'),
(42, 'U15', 1, 'TDK InvenSense', 'MPU-6050', '6-Axis Accel/Gyro Sensor', 'QFN-24', 'Mouser', '958-MPU-6050'),
(43, 'C25, C26', 2, 'Taiyo Yuden', 'EMK107BB7475KA-T', 'Capacitor, CER, 4.7uF, 10V, X7R', '0603', 'Digi-Key', '587-1424-1-ND'),
(44, 'Q5', 1, 'Rohm', '2N7002T1G', 'MOSFET, N-CH, 60V, 300mA', 'SOT-23', 'Mouser', '750-2N7002T1G'),
(45, 'R16', 1, 'Ohmite', 'SMU08051E0R00KE', 'Resistor, 0 Ohm, Jumper', '0805', 'Digi-Key', 'SMU0R00KECT-ND'),
(46, 'U16', 1, 'Analog Devices', 'ADXL345BCCZ', '3-Axis Accelerometer, 13-bit', 'LGA-14', 'Mouser', '584-ADXL345BCCZ'),
(47, 'J5', 1, 'JST', 'S2B-PH-K-S(LF)(SN)', 'Connector, 2-pos, 2.0mm Pitch', 'Through-Hole', 'Digi-Key', '455-1704-ND'),
(48, 'L2', 1, 'Coilcraft', 'XFL4020-222MEC', 'Inductor, Power, 2.2uH, 3.2A', 'SMD', 'Mouser', '994-XFL4020-222MEC'),
(49, 'C30', 1, 'Panasonic', 'EEF-CX0J331R', 'Capacitor, POLY, 330uF, 6.3V', 'SMD', 'Digi-Key', 'PCE4363CT-ND'),
(50, 'TP1, TP2, TP3, TP4', 4, 'Keystone', '5001', 'Test Point, Red', 'Through-Hole', 'Mouser', '534-5001');

-- Commit the transaction to save the data.
COMMIT;
