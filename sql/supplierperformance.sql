-- This SQLite script creates a supplier performance table for a company like Avnet.
-- It is populated with 50 realistic records, reflecting various performance metrics for key suppliers.

-- Drop the table if it already exists to ensure a clean slate.
DROP TABLE IF EXISTS SupplierPerformance;

-- Create the SupplierPerformance table with the specified columns.
CREATE TABLE [SupplierPerformance]
(
    [SupplierID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [SupplierName] TEXT,
    [DeliveryTimeliness] REAL,
    [QualityScore] REAL,
    [CostCompliance] REAL,
    [ResponsivenessScore] INTEGER,
    [InnovationContribution] TEXT,
    [ContractCompliance] TEXT,
    [LastAuditScore] INTEGER,
    [NumberOfIncidents] INTEGER
);

-- Begin a transaction for efficient data insertion.
BEGIN TRANSACTION;

-- Populate the table with 50 realistic supplier performance records.
INSERT INTO SupplierPerformance (SupplierName, DeliveryTimeliness, QualityScore, CostCompliance, ResponsivenessScore, InnovationContribution, ContractCompliance, LastAuditScore, NumberOfIncidents) VALUES
('Texas Instruments', 98.5, 9.8, 99.0, 9, 'Co-developed new power management IC', 'Yes', 95, 1),
('STMicroelectronics', 96.2, 9.5, 97.5, 8, 'Early samples of next-gen MCUs', 'Yes', 92, 3),
('Analog Devices', 99.0, 9.9, 96.0, 9, 'Advanced sensor fusion algorithms', 'Yes', 98, 0),
('Microchip Technology', 97.8, 9.4, 100.0, 8, 'Provided custom firmware support', 'Yes', 93, 2),
('Infineon Technologies', 95.5, 9.6, 98.2, 7, 'High-efficiency GaN power stages', 'Yes', 91, 4),
('NXP Semiconductors', 96.8, 9.7, 97.0, 8, 'Secure element for automotive applications', 'Yes', 94, 2),
('onsemi', 94.0, 9.2, 99.5, 7, 'Image sensor for industrial automation', 'Yes', 88, 5),
('Renesas Electronics', 93.5, 9.3, 96.5, 6, 'Low-power solutions for IoT', 'No', 85, 6),
('Murata Manufacturing', 99.5, 9.9, 100.0, 9, 'Miniaturized passive components', 'Yes', 99, 0),
('TE Connectivity', 98.7, 9.6, 99.8, 8, 'High-speed connector solutions', 'Yes', 96, 1),
('Intel (Altera)', 92.0, 9.8, 95.0, 7, 'Next-gen FPGA development tools', 'Yes', 90, 3),
('AMD (Xilinx)', 93.2, 9.7, 94.5, 8, 'Adaptive SoCs for AI/ML', 'Yes', 91, 2),
('Broadcom', 91.5, 9.5, 93.0, 6, 'Advanced networking switch fabric', 'No', 86, 7),
('Qualcomm', 90.8, 9.6, 92.5, 7, '5G modem technology leadership', 'Yes', 89, 4),
('Samsung Electronics (Components)', 97.2, 9.1, 98.8, 8, 'High-density memory modules', 'Yes', 92, 5),
('Micron Technology', 96.5, 9.3, 99.1, 7, 'Industrial-grade NAND flash', 'Yes', 90, 3),
('KEMET (YAGEO)', 98.9, 9.7, 100.0, 9, 'Polymer tantalum capacitors', 'Yes', 97, 1),
('Vishay Intertechnology', 97.5, 9.4, 99.3, 8, 'Power inductors and custom magnetics', 'Yes', 93, 2),
('Molex', 98.1, 9.5, 99.5, 8, 'Fine-pitch board-to-board connectors', 'Yes', 94, 1),
('Amphenol', 97.9, 9.6, 98.9, 7, 'Ruggedized connectors for harsh environments', 'Yes', 93, 3),
('Espressif Systems', 99.2, 9.0, 100.0, 9, 'Cost-effective Wi-Fi/BT combo modules', 'Yes', 95, 2),
('Nordic Semiconductor', 98.8, 9.8, 97.8, 9, 'Ultra-low-power BLE SoCs', 'Yes', 96, 1),
('Silicon Labs', 97.0, 9.4, 98.1, 8, 'Zigbee/Thread mesh networking stacks', 'Yes', 91, 4),
('TDK Corporation', 99.1, 9.7, 99.6, 8, 'Advanced MEMS sensors', 'Yes', 97, 2),
('Bosch Sensortec', 98.3, 9.9, 98.5, 9, 'Environmental sensors with AI', 'Yes', 98, 1),
('FTDI', 99.8, 9.3, 100.0, 9, 'Reliable USB bridge ICs', 'Yes', 94, 0),
('Lattice Semiconductor', 95.0, 9.2, 97.5, 7, 'Low-power FPGAs for edge AI', 'Yes', 89, 5),
('Rohm Semiconductor', 96.1, 9.5, 98.7, 8, 'SiC power devices', 'Yes', 92, 3),
('Littelfuse', 99.4, 9.8, 99.9, 9, 'Circuit protection solutions', 'Yes', 98, 1),
('Bourns', 98.6, 9.6, 99.4, 8, 'Trimpots and potentiometers', 'Yes', 95, 2),
('Kingbright', 97.3, 9.1, 100.0, 7, 'High-brightness custom LEDs', 'Yes', 90, 4),
('Cree (Wolfspeed)', 94.5, 9.9, 96.0, 8, 'High-performance SiC MOSFETs', 'Yes', 93, 2),
('Dialog Semiconductor (Renesas)', 95.8, 9.4, 97.2, 7, 'Configurable mixed-signal ICs', 'No', 88, 6),
('Maxim Integrated (Analog Devices)', 98.2, 9.7, 97.1, 9, 'Precision data converters', 'Yes', 96, 1),
('Abracon', 97.7, 9.3, 99.2, 8, 'Frequency control and timing devices', 'Yes', 92, 3),
('Realtek', 96.4, 8.9, 98.5, 6, 'Low-cost ethernet and audio codecs', 'Yes', 87, 8),
('Winbond', 98.0, 9.2, 99.7, 8, 'Specialty and SPI flash memory', 'Yes', 91, 2),
('Nexperia', 99.3, 9.6, 100.0, 9, 'Logic and discrete components', 'Yes', 97, 0),
('Panasonic', 97.1, 9.8, 98.4, 8, 'High-reliability passive components', 'Yes', 95, 2),
('Skyworks Solutions', 94.8, 9.5, 96.8, 7, 'RF front-end modules', 'Yes', 90, 5),
('Qorvo', 95.2, 9.6, 96.2, 7, 'RF power amplifiers', 'No', 89, 4),
('ISSI', 96.6, 9.1, 97.9, 6, 'Automotive-grade SRAM', 'Yes', 88, 7),
('GigaDevice', 97.4, 9.0, 98.6, 7, 'Cost-effective Cortex-M MCUs', 'Yes', 89, 5),
('Cypress (Infineon)', 96.9, 9.7, 97.3, 8, 'PSoC and memory solutions', 'Yes', 93, 3),
('AVX (Kyocera)', 98.4, 9.5, 99.0, 8, 'Specialty capacitors and connectors', 'Yes', 94, 2),
('Belden', 99.0, 9.9, 99.5, 9, 'High-performance cabling', 'Yes', 98, 0),
('Schurter', 99.6, 9.8, 100.0, 9, 'Human-machine interface components', 'Yes', 99, 1),
('Harwin', 98.7, 9.7, 99.1, 8, 'High-reliability interconnects', 'Yes', 96, 1),
('E-Switch', 97.6, 9.2, 99.8, 7, 'Wide range of switch products', 'Yes', 91, 3);

-- Commit the transaction to save the data.
COMMIT;
