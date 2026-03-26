-- This SQLite script creates and populates the Avnet_Purchase table.
-- It contains 60 realistic records of component purchases made by various users in India.

-- Drop the table if it already exists to ensure a clean start.
DROP TABLE IF EXISTS Avnet_Purchase;

-- Create the Avnet_Purchase table with the specified columns.
CREATE TABLE [Avnet_Purchase]
(
    [PurchaseID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Username] TEXT,
    [ProductID] TEXT,
    [ProductName] TEXT,
    [Category] TEXT,
    [Quantity] INTEGER,
    [PurchaseDate] TEXT,
    [UnitPrice] REAL,
    [TotalAmount] REAL,
    [Location] TEXT
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 60 realistic purchase records.
INSERT INTO [Avnet_Purchase] ([Username], [ProductID], [ProductName], [Category], [Quantity], [PurchaseDate], [UnitPrice], [TotalAmount], [Location]) VALUES
('akash_s', 'STM32F407VGT6', 'STMicroelectronics ARM Cortex-M4 MCU', 'Microcontrollers', 25, '2025-06-20', 9.55, 238.75, 'Bangalore'),
('priya_r', 'ESP32-WROOM-32E', 'Espressif Systems Wi-Fi/BT SoC Module', 'Connectivity', 150, '2025-06-18', 4.20, 630.00, 'Pune'),
('tech_solutions_pune', 'ATMEGA328P-PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 1000, '2025-06-15', 2.12, 2120.00, 'Pune'),
('hyderabad_circuits', 'BME280', 'Bosch Sensortec Sensor', 'Sensors', 200, '2025-06-12', 2.90, 580.00, 'Hyderabad'),
('vikram_c', 'LM358DR', 'Texas Instruments Dual Op-Amp', 'Analog', 500, '2025-06-11', 0.22, 110.00, 'Mumbai'),
('chennai_iot', 'NRF52840-QIAA', 'Nordic BLE 5/Thread/Zigbee SoC', 'Connectivity', 80, '2025-06-10', 8.25, 660.00, 'Chennai'),
('neha_d', 'MPU-6050', 'TDK InvenSense 6-Axis MEMS', 'Sensors', 350, '2025-06-09', 3.85, 1347.50, 'Bangalore'),
('sunil_g', 'IRFZ44N', 'Infineon N-Channel Power MOSFET', 'Power Management', 2500, '2025-06-07', 0.55, 1375.00, 'Delhi'),
('bangalore_robotics', 'L298N', 'Dual H-Bridge Motor Driver IC', 'Motor Drivers', 120, '2025-06-05', 1.45, 174.00, 'Bangalore'),
('rpatel_eng', 'W25Q128JVSIM', 'Winbond 128Mbit SPI Flash', 'Memory', 50, '2025-06-04', 1.20, 60.00, 'Ahmedabad'),
('akash_s', '0805W8F1001T5E', '1k Ohm 1% 0805 Resistor', 'Passives', 10000, '2025-06-02', 0.008, 80.00, 'Bangalore'),
('priya_r', 'FT232RL', 'FTDI USB to Serial UART IC', 'Interface', 60, '2025-05-30', 2.85, 171.00, 'Pune'),
('hyderabad_circuits', 'TPS54560DDAR', 'TI Step-Down DC-DC Converter', 'Power Management', 40, '2025-05-28', 6.75, 270.00, 'Hyderabad'),
('chennai_iot', 'CC2640R2FRGZR', 'Texas Instruments BLE 5.0 MCU', 'Connectivity', 95, '2025-05-27', 3.90, 370.50, 'Chennai'),
('tech_solutions_pune', 'INA219BIDR', 'TI Current/Power Monitor', 'Sensors', 110, '2025-05-24', 1.65, 181.50, 'Pune'),
('vikram_c', 'RASPBERRY-PI-4B-4GB', 'Raspberry Pi 4 Model B 4GB', 'Dev Boards', 15, '2025-05-22', 55.00, 825.00, 'Mumbai'),
('sunil_g', 'GRM188R61A106KE69D', 'Murata 10uF 0603 Capacitor', 'Passives', 20000, '2025-05-20', 0.015, 300.00, 'Delhi'),
('neha_d', 'AD797BRZ', 'Analog Devices Ultralow Distortion Op-Amp', 'Analog', 10, '2025-05-19', 11.25, 112.50, 'Bangalore'),
('rpatel_eng', 'PCA9685PW', 'NXP 16-channel PWM Driver', 'Interface', 75, '2025-05-18', 1.95, 146.25, 'Ahmedabad'),
('bangalore_robotics', 'SG90', 'Tower Pro Micro Servo', 'Motor Drivers', 200, '2025-05-15', 1.90, 380.00, 'Bangalore'),
('akash_s', 'ADXL345BCCZ', 'Analog Devices 3-Axis Accelerometer', 'Sensors', 30, '2025-06-21', 4.80, 144.00, 'Bangalore'),
('priya_r', 'NCP1117ST33T3G', 'onsemi 1A LDO Voltage Regulator', 'Power Management', 2000, '2025-06-19', 0.45, 900.00, 'Pune'),
('tech_solutions_pune', 'XC7Z020-1CLG400C', 'AMD/Xilinx Zynq-7000 SoC FPGA', 'FPGAs & CPLDs', 5, '2025-06-17', 120.00, 600.00, 'Pune'),
('hyderabad_circuits', 'DS18B20', 'Analog Devices 1-Wire Thermometer', 'Sensors', 500, '2025-06-16', 1.05, 525.00, 'Hyderabad'),
('vikram_c', 'TEENSY4.0', 'PJRC Development Board', 'Dev Boards', 20, '2025-06-13', 24.95, 499.00, 'Mumbai'),
('chennai_iot', 'Si5351A-B-GT', 'Silicon Labs Clock Generator', 'Timing', 100, '2025-06-11', 2.10, 210.00, 'Chennai'),
('neha_d', 'CR2032', 'Panasonic 3V Lithium Coin Cell', 'Batteries', 5000, '2025-06-10', 0.30, 1500.00, 'Bangalore'),
('sunil_g', 'RJ45-LED-G', 'Generic RJ45 MagJack Connector', 'Connectors', 800, '2025-06-08', 0.95, 760.00, 'Delhi'),
('bangalore_robotics', 'DRV8825', 'Stepper Motor Driver Carrier', 'Motor Drivers', 150, '2025-06-06', 2.25, 337.50, 'Bangalore'),
('rpatel_eng', 'MCP3008-I/P', 'Microchip 8-Channel 10-Bit ADC', 'Analog', 180, '2025-06-03', 1.80, 324.00, 'Ahmedabad'),
('akash_s', 'ESP-01S', 'ESP8266 Serial Wi-Fi Module', 'Connectivity', 300, '2025-06-01', 1.95, 585.00, 'Bangalore'),
('priya_r', 'USB-C-31-SMT', 'Generic USB-C SMT Connector', 'Connectors', 1200, '2025-05-31', 0.60, 720.00, 'Pune'),
('tech_solutions_pune', 'LTC6268IS6#TRMPBF', 'Analog Devices FET-Input Op-Amp', 'Analog', 50, '2025-05-29', 5.80, 290.00, 'Pune'),
('hyderabad_circuits', 'ATTINY85-20PU', 'Microchip 8-bit AVR MCU', 'Microcontrollers', 600, '2025-05-26', 1.30, 780.00, 'Hyderabad'),
('vikram_c', 'SGP30', 'Sensirion TVOC/eCO2 Gas Sensor', 'Sensors', 45, '2025-05-25', 11.50, 517.50, 'Mumbai'),
('chennai_iot', 'MT29F4G08ABAEAWP-IT:E', 'Micron 4Gb NAND Flash Memory', 'Memory', 10, '2025-05-23', 12.50, 125.00, 'Chennai'),
('neha_d', 'LSM6DS3TR-C', 'STMicroelectronics 3D Accel/3D Gyro', 'Sensors', 85, '2025-05-21', 3.10, 263.50, 'Bangalore'),
('sunil_g', 'AMS1117-3.3', 'LDO Regulator 3.3V', 'Power Management', 5000, '2025-05-17', 0.18, 900.00, 'Delhi'),
('bangalore_robotics', 'NEMA17-42BYGH', 'NEMA 17 Stepper Motor', 'Motor Drivers', 32, '2025-05-16', 14.50, 464.00, 'Bangalore'),
('rpatel_eng', 'PIC16F877A-I/P', 'Microchip 8-bit PIC MCU', 'Microcontrollers', 100, '2025-05-14', 3.10, 310.00, 'Ahmedabad'),
('akash_s', 'BCM2711C0T', 'Broadcom Raspberry Pi 4 SoC', 'Processors & SoCs', 8, '2025-05-12', 15.50, 124.00, 'Bangalore'),
('priya_r', 'SSD1306', 'OLED Driver 128x64', 'Drivers', 200, '2025-05-11', 1.15, 230.00, 'Pune'),
('tech_solutions_pune', 'EP4CE6E22C8N', 'Intel Cyclone IV E FPGA', 'FPGAs & CPLDs', 12, '2025-05-10', 28.50, 342.00, 'Pune'),
('hyderabad_circuits', 'MCP2515-I/P', 'Microchip CAN Bus Controller', 'Interface', 130, '2025-05-09', 2.40, 312.00, 'Hyderabad'),
('vikram_c', 'MAX7219CNG', 'Maxim LED Display Driver', 'Drivers', 70, '2025-05-08', 2.50, 175.00, 'Mumbai'),
('chennai_iot', 'HM-10', 'Jinan Huamao BLE Module', 'Connectivity', 100, '2025-05-07', 3.50, 350.00, 'Chennai'),
('neha_d', 'ISL28217FBZ', 'Renesas Precision Low Noise Op-Amp', 'Analog', 50, '2025-05-06', 4.25, 212.50, 'Bangalore'),
('sunil_g', '1N4007', 'Rectifier Diode', 'Diodes', 10000, '2025-05-05', 0.03, 300.00, 'Delhi'),
('bangalore_robotics', 'ULN2003', 'Darlington Transistor Array', 'Drivers', 400, '2025-05-04', 0.35, 140.00, 'Bangalore'),
('rpatel_eng', '2N2222A', 'NPN BJT Transistor', 'Transistors', 3000, '2025-05-02', 0.08, 240.00, 'Ahmedabad'),
('akash_s', '74HC595', 'Shift Register', 'Logic ICs', 600, '2025-04-30', 0.25, 150.00, 'Bangalore'),
('priya_r', 'JST-XH-2.54-2P', 'JST XH 2-Pin Connector Kit', 'Connectors', 800, '2025-04-29', 0.15, 120.00, 'Pune'),
('tech_solutions_pune', 'VL53L0X', 'STMicroelectronics ToF Sensor', 'Sensors', 75, '2025-04-28', 2.75, 206.25, 'Pune'),
('hyderabad_circuits', 'ADAU1701JSTZ', 'Analog Devices Audio DSP', 'Audio', 20, '2025-04-26', 7.50, 150.00, 'Hyderabad'),
('vikram_c', 'KY-040', 'Rotary Encoder Module', 'Modules', 100, '2025-04-25', 1.20, 120.00, 'Mumbai'),
('chennai_iot', 'RTK8762DK', 'Realtek BLE 5.0 SoC', 'Connectivity', 300, '2025-04-23', 1.85, 555.00, 'Chennai'),
('neha_d', 'HMC5883L', 'Honeywell 3-Axis Digital Compass', 'Sensors', 60, '2025-04-22', 1.99, 119.40, 'Bangalore'),
('sunil_g', 'BC547', 'NPN BJT General Purpose', 'Transistors', 5000, '2025-04-20', 0.05, 250.00, 'Delhi'),
('bangalore_robotics', '28BYJ-48', '5V Stepper Motor', 'Motor Drivers', 100, '2025-04-18', 2.80, 280.00, 'Bangalore'),
('rpatel_eng', 'MCP4725A0T-E/CH', 'Microchip 12-Bit DAC with EEPROM', 'Analog', 90, '2025-04-17', 1.40, 126.00, 'Ahmedabad');

-- Commit the transaction to save the data.
COMMIT;
