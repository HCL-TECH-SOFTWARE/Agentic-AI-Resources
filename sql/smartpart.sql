CREATE TABLE [ComponentQueries]
(
    [QueryID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ProductType] NVARCHAR(100),
    [Specifications] NVARCHAR(255),
    [PackageFormFactor] NVARCHAR(50),
    [ConnectivityRequirements] NVARCHAR(100),
    [BrandPreference] NVARCHAR(100),
    [QuantityPricingExpectation] NVARCHAR(100)
);

-- Populating the table with 40 unique user query examples for electronic components.
-- Each row simulates a natural language query from a user.
-- Fields are left as NULL if the user query doesn't explicitly mention that detail.

INSERT INTO [ComponentQueries] ([ProductType], [Specifications], [PackageFormFactor], [ConnectivityRequirements], [BrandPreference], [QuantityPricingExpectation]) VALUES
('Microcontroller', 'ARM Cortex-M4, at least 256KB Flash, 1.8V operation', 'QFN-48', 'BLE 5.2', 'Nordic Semiconductor', 'Samples needed'),
('Voltage Regulator', '3.3V fixed output, 1A, low dropout', 'SOT-223', NULL, 'Texas Instruments', 'High stock availability'),
('Op-Amp', 'Rail-to-rail, low noise < 10 nV/√Hz, > 10MHz bandwidth', 'SOIC-8', NULL, NULL, 'Low cost'),
('MOSFET', 'N-Channel, > 60V Vds, < 20mOhm Rds(on)', 'TO-220', NULL, 'Infineon', 'Bulk quantity (10k+)'),
('Temperature Sensor', 'I2C interface, ±0.25°C accuracy', 'LGA', NULL, 'STMicroelectronics', NULL),
('SoC', 'Dual-core, integrated GPU, support for Linux', 'BGA', 'Wi-Fi 6, Ethernet', 'NXP', NULL),
('Wi-Fi Module', '2.4GHz/5GHz dual-band, integrated antenna', NULL, 'Wi-Fi 802.11ac', 'Espressif Systems', '1000 units'),
('RF Transceiver', 'Sub-1GHz operation, -120dBm sensitivity', 'QFN-32', 'LoRaWAN', NULL, NULL),
('Pressure Sensor', '0 to 10 bar range, analog output', 'DIP', NULL, NULL, 'Best price for 500 pcs'),
('IMU Sensor', '6-axis, accelerometer and gyroscope', NULL, 'SPI', 'TDK InvenSense', 'Need datasheet'),
('Microcontroller', '8-bit, very low power, < 1uA sleep current', 'TSSOP-20', NULL, 'Microchip', NULL),
('Power Management IC (PMIC)', '4 outputs, programmable sequencing, 5V input', 'TQFP-64', 'I2C', 'Analog Devices', NULL),
('GPS Module', 'High sensitivity, fast TTFF, patch antenna included', NULL, 'GPS, GLONASS', NULL, 'Sample request'),
('Ethernet PHY', '10/100/1000 Mbps', 'QFN-40', NULL, 'Broadcom', 'Looking for alternatives'),
('DC-DC Converter', 'Step-down, 12V in, adjustable 1.2-5V out, 3A', NULL, NULL, NULL, 'Reel packaging'),
('Flash Memory', '128Mbit, SPI interface, industrial temp range', 'SOIC-8', NULL, 'Winbond', 'Quote for 5k units'),
('Audio Codec', '24-bit, 96kHz, stereo DAC and ADC', 'QFP-48', 'I2S', 'Cirrus Logic', NULL),
('BLE Module', 'Small form factor, certified', 'Custom module', 'Bluetooth 5.0', NULL, 'High volume pricing'),
('Cellular Modem', 'LTE Cat-M1 and NB-IoT support', 'LGA', 'NB-IoT', 'Quectel', 'Development kit needed'),
('RTC (Real-Time Clock)', 'Low power, battery backup', 'MSOP-8', 'I2C', NULL, NULL),
('Microcontroller', 'RISC-V core, open-source toolchain support', 'QFN-32', NULL, NULL, 'Academic discount'),
('Voltage Regulator', 'LDO, 5V output, 500mA, good PSRR', 'SOT-23-5', NULL, 'STMicroelectronics', '100 units'),
('Op-Amp', 'Zero-drift, precision, < 1uV offset', 'TSSOP-14', NULL, 'Texas Instruments', NULL),
('MOSFET', 'P-Channel, logic level gate drive', 'SOT-23', NULL, NULL, 'Must be in stock'),
('Humidity Sensor', 'Combined with temperature, calibrated digital output', NULL, NULL, 'Sensirion', 'Need immediately'),
('SoC', 'With integrated AI accelerator, > 2 TOPS', 'BGA', 'Wi-Fi, BLE', NULL, 'Pre-production samples'),
('Wi-Fi Module', 'With ESP32-S3 chip', 'Module', 'Wi-Fi, BLE 5', 'Espressif Systems', 'Reel of 2000'),
('RF Transceiver', '2.4GHz, Zigbee compatible', 'QFN-24', 'ZigBee 3.0', 'NXP', NULL),
('MEMS Microphone', 'PDM output, high SNR (> 65dB)', NULL, NULL, 'Knowles', 'Tape and reel'),
('CAN Transceiver', '5Mbps flexible data-rate, 3.3V', 'SOIC-8', 'CAN FD', 'Infineon', 'Automotive grade'),
('Microcontroller', 'Cortex-M0+, < 5mm x 5mm package', 'WLCSP', NULL, 'STMicroelectronics', 'Low power focus'),
('Buck-Boost Converter', '2.7V to 5.5V input, 3.3V fixed output, 2A', 'QFN-20', NULL, NULL, 'High efficiency needed'),
('EEPROM', '256 Kbit, industrial grade', 'TSSOP-8', 'I2C', 'Microchip', 'Long term availability'),
('Proximity Sensor', 'IR based, adjustable range up to 15cm', 'Custom Module', NULL, 'Vishay', NULL),
('ZigBee Module', 'Ready to use with AT commands', NULL, 'ZigBee', NULL, 'Small quantity for prototype'),
('OLED Display Driver', 'For 128x64 display', 'Chip-on-glass', 'SPI or I2C', 'Solomon Systech', 'Datasheet required'),
('Gas Sensor', 'To detect CO2 levels', NULL, 'UART output', NULL, 'Looking for options'),
('NFC Tag IC', 'ISO 14443-A compliant', 'Wafer form', 'NFC', 'NXP', 'Bulk pricing'),
('USB to UART Bridge', 'CP2102 or similar', 'QFN-28', 'USB, UART', 'Silicon Labs', 'In stock'),
('FPGA', 'Low-cost, at least 10k logic elements', 'BGA', NULL, 'Lattice Semiconductor', 'Need development board info');