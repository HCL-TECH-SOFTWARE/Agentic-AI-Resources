
DROP TABLE IF EXISTS product_queries;
CREATE TABLE product_queries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    product_type TEXT,
    specifications TEXT,
    package_form_factor TEXT,
    connectivity TEXT,
    brand TEXT,
    quantity_pricing TEXT
);

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', '5V input', 'TQFP', '', 'Texas Instruments', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', '±0.5°C accuracy, 256KB flash, low quiescent current', 'QFN', '', 'NXP', 'sample request');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', '3.3V, CAN support', 'SMT', 'Wi-Fi', '', 'low cost');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('SoC', '1A output, 3.3V', 'SOT-223', '', 'Texas Instruments', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('GPS Module', '256KB flash, CAN support', 'SMT', '', '', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'I2C interface, low power, 3.3V', 'LGA', '', 'STMicroelectronics', 'bulk pricing');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('MOSFET', '±0.5°C accuracy', 'SOT-223', 'NB-IoT', 'Nordic Semiconductor', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', '1A output, low quiescent current, 3.3V', 'TQFP', 'GPS', 'Espressif', 'sample request');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('SoC', '3.3V', 'QFN', 'GPS', 'STMicroelectronics', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('GPS Module', 'low power, 3.3V, CAN support', 'DIP', 'I2C, BLE', 'STMicroelectronics', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'I2C interface, ±0.5°C accuracy, low quiescent current', 'SOT-223', '', '', 'low cost');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', '512KB flash', 'TQFP', 'BLE, GPS', 'Infineon', 'low cost');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', 'low quiescent current, 256KB flash', 'LGA', 'Bluetooth, LoRa', '', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Wi-Fi Module', 'CAN support', 'QFN', 'LoRa, BLE', 'Texas Instruments', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'low quiescent current, 3.3V, 1A output', 'SOT-223', '', 'Bosch', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Microcontroller', 'low power, CAN support, 256KB flash', 'QFN', 'LoRa', 'STMicroelectronics', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', 'CAN support', 'QFN', 'BLE, SPI', 'NXP', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('GPS Module', '3.3V, low quiescent current', 'LGA', 'ZigBee, LoRa', 'Espressif', 'low cost');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', '512KB flash, 3.3V', 'TQFP', '', 'NXP', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('MOSFET', '512KB flash', 'LGA', 'Wi-Fi, ZigBee', 'Texas Instruments', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', '3.3V, 5V input, CAN support', 'TQFP', 'BLE, I2C', 'Infineon', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('MOSFET', '512KB flash', 'LGA', 'NB-IoT', 'Infineon', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Microcontroller', '512KB flash, 256KB flash, ±0.5°C accuracy', 'LGA', 'Bluetooth', 'STMicroelectronics', 'sample request');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Wi-Fi Module', '5V input', 'DIP', '', '', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', 'low quiescent current', 'QFN', '', '', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Op-Amp', 'CAN support, I2C interface', 'TQFP', 'Wi-Fi', 'Texas Instruments', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', '5V input, ±0.5°C accuracy', 'LGA', 'SPI, I2C', 'Nordic Semiconductor', 'bulk pricing');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('GPS Module', 'low quiescent current, 256KB flash, low power', 'QFN', '', 'NXP', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', '256KB flash', 'SMT', '', '', 'bulk pricing');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('MOSFET', '512KB flash, 3.3V', 'SMT', 'Wi-Fi, Bluetooth', 'NXP', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'low power', 'TQFP', 'GPS', 'Espressif', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', 'CAN support', 'SMT', 'Bluetooth, SPI', 'NXP', 'high stock');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Voltage Regulator', 'low power', 'SOT-223', '', 'NXP', 'prototype quantity');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', 'low quiescent current', 'SOT-223', 'Bluetooth, BLE', 'Texas Instruments', 'sample request');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'I2C interface, 3.3V', 'LGA', 'ZigBee', 'Bosch', 'low cost');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', '512KB flash', 'LGA', 'LoRa', 'Nordic Semiconductor', 'retail pack');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Sensor', 'CAN support', 'SMT', 'GPS, Wi-Fi', 'Espressif', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Temperature Sensor', 'low power', 'SMT', 'BLE, GPS', 'Nordic Semiconductor', 'bulk pricing');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('SoC', '3.3V', 'LGA', '', 'NXP', '');

INSERT INTO product_queries (product_type, specifications, package_form_factor, connectivity, brand, quantity_pricing)
VALUES ('Wi-Fi Module', '1A output, 3.3V, I2C interface', 'TQFP', 'Wi-Fi', 'Nordic Semiconductor', 'low cost');
