CREATE TABLE IF NOT EXISTS components (
    component_id                 INTEGER PRIMARY KEY AUTOINCREMENT,
    component_name               TEXT    NOT NULL,
    component_category           TEXT    NOT NULL,
    part_number                  TEXT    UNIQUE,
    serial_number                TEXT,
    manufacturer                 TEXT,
    model_number                 TEXT,
    supplier_name                TEXT,
    invoice_date                 TEXT,
    purchase_cost_inr            REAL,
    quantity                     INTEGER DEFAULT 1,
    expected_end_of_life         TEXT,
    warranty_expiry              TEXT,
    support_contract_expiry      TEXT,
    lifecycle_stage              TEXT,
    criticality                  TEXT,
    location                     TEXT,
    owner_team                   TEXT,
    maintenance_frequency_months INTEGER,
    last_maintenance_date        TEXT,
    next_maintenance_due         TEXT,
    status                       TEXT,
    remarks                      TEXT
);

-- ─── Storage ─────────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Toshiba X300 4TB',      'Storage', 'PN-66944', 'SN-TX300-1045',   'Toshiba Corporation', 'HDWR460XZSTA',  'Prime Silicon Supplies',   '2023-12-10', 10250.00, 2, '2028-06-13', '2026-08-02', '2027-12-31', 'Production',    'High',     'DC-Rack-12U-A2',        'Infrastructure Ops',    6,  '2025-12-05', '2026-06-05', 'Active',  'Primary archival disks for backup node.'),
('Samsung 980 PRO 2TB',   'Storage', 'PN-98112', 'SN-980PRO-9122',  'Samsung Electronics', 'MZ-V8P2T0BW',  'Prime Silicon Supplies',   '2024-04-19', 16400.00, 4, '2029-04-19', '2029-04-19', '2028-04-19', 'Production',    'High',     'DB-Cache-Nodes',        'Database Engineering',  6,  '2026-01-14', '2026-07-14', 'Active',  'High-speed NVMe drives for caching and analytics workloads.'),
('Seagate Exos X16 16TB', 'Storage', 'PN-98430', 'SN-EXOSX16-3301', 'Seagate Technology',  'ST16000NM001G', 'Enterprise Compute Direct','2024-09-03', 22800.00, 6, '2030-09-03', '2027-09-03', '2029-09-03', 'Production',    'Critical', 'DC-NAS-Bay-04',         'Storage Engineering',   6,  '2026-03-10', '2026-09-10', 'Active',  'Enterprise HDD pool for distributed object storage.'),
('WD Gold 8TB',           'Storage', 'PN-88021', 'SN-WDGOLD-7741',  'Western Digital',     'WD8004FRYZ',    'Prime Silicon Supplies',   '2022-11-18', 14900.00, 3, '2027-11-18', '2025-11-18', '2026-11-18', 'End-of-Life',   'Medium',   'DC-Rack-08U-B1',        'Infrastructure Ops',    6,  '2025-08-12', '2026-08-12', 'Active',  'Flagged for replacement during next hardware refresh.');

-- ─── Processors ──────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Intel Core i7-8700K',    'Processor', 'PN-56726', 'SN-I78700K-6384', 'Intel Corp.',      'BX80684I78700K',    'Metro Components',         '2021-07-20', 28400.00, 2, '2025-01-18', '2025-01-25', '2025-12-31', 'End-of-Life', 'Medium',   'Office-DevBench-02',    'End User Compute',      6,  '2025-01-02', '2025-07-02', 'Expired', 'Scheduled for phased replacement in Q3 refresh cycle.'),
('AMD Ryzen 9 5950X',      'Processor', 'PN-61102', 'SN-R95950X-8812', 'AMD Inc.',         '100-100000059WOF',  'Metro Components',         '2023-05-11', 42600.00, 4, '2029-05-11', '2026-05-11', '2028-05-11', 'Production',  'High',     'Dev-Workstation-Bay-2', 'Software Engineering',  12, '2025-11-20', '2026-11-20', 'Active',  'Primary CPUs for high-throughput build servers.'),
('Intel Xeon Gold 6338',   'Processor', 'PN-61204', 'SN-XG6338-4490',  'Intel Corp.',      'CD8068904572501',   'Enterprise Compute Direct','2024-08-07', 87500.00, 4, '2030-08-07', '2027-08-07', '2029-08-07', 'Production',  'Critical', 'DC-Rack-01U-Top',       'Infrastructure Ops',    6,  '2026-02-22', '2026-08-22', 'Active',  'Dual-socket server CPUs in PowerEdge R750 nodes.');

-- ─── Graphics Cards ───────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Gigabyte RX 580',        'Graphics Card', 'PN-78672', 'SN-RX580-7712',   'Gigabyte Technology', 'GV-RX580-8GD',     'Compute Hardware Hub',     '2019-08-02', 18750.00, 1, '2024-03-20', '2021-11-16', '2022-11-16', 'Decommissioned', 'Low',      'Lab-Workstation-03',    'AI Prototyping',        12, '2023-06-18', '2024-06-18', 'Expired', 'Kept only for legacy CUDA compatibility checks.'),
('NVIDIA RTX 3080',        'Graphics Card', 'PN-54210', 'SN-RTX3080-2281', 'NVIDIA Corp.',        'RTX3080-FE',       'Compute Hardware Hub',     '2023-07-17', 71500.00, 3, '2028-07-26', '2025-11-21', '2027-11-21', 'Production',     'Critical', 'AI-Cluster-GPU-Row2',   'ML Platform Team',      3,  '2026-02-10', '2026-05-10', 'Active',  'Used for model training and inference benchmark runs.'),
('AMD Radeon Pro W6800',   'Graphics Card', 'PN-54318', 'SN-W6800-6610',   'AMD Inc.',            '100-506157',       'Compute Hardware Hub',     '2024-02-14', 88000.00, 2, '2029-02-14', '2027-02-14', '2028-02-14', 'Production',     'High',     'ML-Workstation-DL-04',  'ML Platform Team',      3,  '2026-03-05', '2026-06-05', 'Active',  'Professional GPU for 3D rendering and ML visualisation pipelines.');

-- ─── Memory ──────────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Corsair DDR4 32GB Kit',  'Memory', 'PN-44510', 'SN-CMK32GX-3310', 'Corsair',             'CMK32GX4M2E3200C16','Metro Components',         '2023-09-02', 8750.00,  8, '2028-09-02', '2028-09-02', '2027-09-02', 'Production',  'Medium',   'Dev-Workstation-Bay-2', 'Software Engineering',  24, '2025-09-02', '2027-09-02', 'Active',  'Desktop DDR4 RAM for engineering workstations.'),
('Samsung 64GB DDR4 ECC',  'Memory', 'PN-44612', 'SN-M393A-8820',   'Samsung Electronics', 'M393A8G40AB2-CWE', 'Enterprise Compute Direct','2024-06-25', 29400.00, 8, '2030-06-25', '2030-06-25', '2029-06-25', 'Production',  'Critical', 'DC-Rack-01U-Top',       'Infrastructure Ops',    24, '2026-02-22', '2028-02-22', 'Active',  'Registered ECC DIMMs installed in PowerEdge R750 nodes.');

-- ─── Chassis ─────────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('NZXT H510',              'Chassis', 'PN-90492', 'SN-H510-4459',    'NZXT Inc.',           'CA-H510B-B1',      'Metro Components',         '2022-06-20', 6850.00,  5, '2027-04-05', '2024-12-05', '2026-12-05', 'Production',  'Medium',   'Assembly-Bay-01',       'Hardware Assembly Team',12, '2025-11-01', '2026-11-01', 'Active',  'Used for custom workstation builds.'),
('Fractal Define 7 XL',    'Chassis', 'PN-90544', 'SN-DEF7XL-2201',  'Fractal Design',      'FD-C-DEF7X-01',   'Metro Components',         '2024-03-15', 9400.00,  3, '2030-03-15', '2027-03-15', '2029-03-15', 'Production',  'Medium',   'Assembly-Bay-02',       'Hardware Assembly Team',12, '2026-03-10', '2027-03-10', 'Active',  'Full tower chassis for high-airflow compute builds.');

-- ─── Power Supply ─────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Corsair RM850x PSU',     'Power Supply', 'PN-55021', 'SN-RM850X-3009',  'Corsair',         'CP-9020200-IN',    'PowerTech Distributors',   '2023-03-28', 12200.00, 6, '2028-03-28', '2033-03-28', '2028-03-28', 'Production',  'High',     'Power-Bay-03',          'Facilities IT',         12, '2025-09-30', '2026-09-30', 'Active',  'Deployed in high-load training workstations.'),
('Super Flower 1000W Plat','Power Supply', 'PN-55108', 'SN-SF1000P-6612', 'Super Flower',    'SF-1000F14TP',     'PowerTech Distributors',   '2024-07-18', 17800.00, 4, '2031-07-18', '2031-07-18', '2030-07-18', 'Production',  'High',     'Power-Bay-04',          'Facilities IT',         12, '2026-01-18', '2027-01-18', 'Active',  'Platinum-rated PSUs for peak GPU draw in AI training rigs.');

-- ─── Cooling ──────────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Noctua NH-U12S',         'Cooling', 'PN-33487', 'SN-NHU12S-7410',  'Noctua',              'NH-U12S redux',    'Thermal Systems India',    '2024-01-09', 5900.00,  10,'2029-01-09', '2030-01-09', '2028-01-09', 'Production',  'Medium',   'Thermal-Spares-Store',  'Infrastructure Ops',    6,  '2026-03-01', '2026-09-01', 'Active',  'Standard CPU cooling for mid-range compute nodes.'),
('Corsair iCUE H150i',     'Cooling', 'PN-33591', 'SN-H150I-5520',   'Corsair',             'CW-9060045-WW',    'Thermal Systems India',    '2024-05-22', 14200.00, 4, '2029-05-22', '2027-05-22', '2028-05-22', 'Production',  'High',     'AI-Cluster-GPU-Row2',   'ML Platform Team',      6,  '2026-01-22', '2026-07-22', 'Active',  '360mm AIO liquid cooling for high-TDP GPU-adjacent CPUs.');

-- ─── Servers ──────────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Dell PowerEdge R750',    'Server', 'PN-77731', 'SN-R750-1148',    'Dell Technologies',   'PowerEdge R750',   'Enterprise Compute Direct','2024-06-25', 385000.00,2, '2030-06-25', '2027-06-25', '2029-06-25', 'Production',  'Critical', 'DC-Rack-01U-Top',       'Infrastructure Ops',    3,  '2026-02-22', '2026-05-22', 'Active',  'Hosts virtualization cluster and internal CI runners.'),
('HPE ProLiant DL380 G10', 'Server', 'PN-77840', 'SN-DL380-2290',   'Hewlett Packard Ent.','P02462-B21',       'Enterprise Compute Direct','2023-10-11', 312000.00,2, '2029-10-11', '2026-10-11', '2028-10-11', 'Production',  'Critical', 'DC-Rack-03U-Top',       'Infrastructure Ops',    3,  '2026-01-11', '2026-04-11', 'Active',  'Secondary compute cluster hosting analytics and reporting services.');

-- ─── Power Backup ─────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('APC Smart-UPS 3000VA',   'Power Backup', 'PN-12093', 'SN-UPS3000-5581', 'APC by Schneider','SMT3000I',         'PowerTech Distributors',   '2022-09-14', 96500.00, 2, '2029-09-14', '2025-09-14', '2027-09-14', 'Production',  'Critical', 'Power-Room-A',          'Facilities IT',         6,  '2025-12-11', '2026-06-11', 'Active',  'Battery health test mandatory before monsoon season.'),
('Eaton 9PX 2200VA',       'Power Backup', 'PN-12187', 'SN-9PX2200-4410', 'Eaton Corp.',     '9PX2200RT',        'PowerTech Distributors',   '2024-11-05', 78200.00, 2, '2031-11-05', '2027-11-05', '2030-11-05', 'Production',  'Critical', 'Power-Room-B',          'Facilities IT',         6,  '2026-03-01', '2026-09-01', 'Active',  'Online double-conversion UPS for network and storage racks.');

-- ─── Networking ───────────────────────────────────────────────────────────────
INSERT INTO components (component_name, component_category, part_number, serial_number, manufacturer, model_number, supplier_name, invoice_date, purchase_cost_inr, quantity, expected_end_of_life, warranty_expiry, support_contract_expiry, lifecycle_stage, criticality, location, owner_team, maintenance_frequency_months, last_maintenance_date, next_maintenance_due, status, remarks) VALUES
('Intel X550-T2 NIC',      'Networking', 'PN-66410', 'SN-X550T2-4022',  'Intel Corp.',     'X550-T2',          'NetCore Components',       '2023-11-02', 14900.00, 8, '2028-11-02', '2026-11-02', '2027-11-02', 'Production',  'High',     'Network-Spares-Cabinet','Network Engineering',   12, '2025-10-15', '2026-10-15', 'Active',  'Dual 10GbE adapters for server uplink redundancy.'),
('Cisco Catalyst 2960-X',  'Networking', 'PN-66512', 'SN-C2960X-9901',  'Cisco Systems',   'WS-C2960X-48FPD-L','NetCore Components',       '2023-04-18', 128000.00,1, '2029-04-18', '2026-04-18', '2028-04-18', 'Production',  'Critical', 'DC-CoreSwitch-Cabinet', 'Network Engineering',   6,  '2025-10-18', '2026-04-18', 'Active',  'Core access-layer switch connecting server and storage racks.'),
('Ubiquiti UniFi AP AC Pro','Networking', 'PN-66620', 'SN-UAPACP-1178',  'Ubiquiti Inc.',   'UAP-AC-PRO',       'NetCore Components',       '2024-02-09', 11800.00, 6, '2030-02-09', '2027-02-09', '2029-02-09', 'Production',  'Medium',   'Office-Floor-2-Ceiling','Network Engineering',   12, '2026-02-09', '2027-02-09', 'Active',  'Enterprise Wi-Fi APs covering shared office and meeting floor.');
