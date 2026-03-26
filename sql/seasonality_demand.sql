CREATE TABLE seasonality_factors (
    mapping_id INTEGER PRIMARY KEY AUTOINCREMENT,
    category TEXT,
    event_name TEXT,
    impact_factor REAL
);

INSERT INTO seasonality_factors (category, event_name, impact_factor) VALUES 
('Microcontrollers', 'Summer Sale', 1.10),
('Microcontrollers', 'Back-to-College Electronics Kits', 1.18),
('Microcontrollers', 'DIY Maker Festival', 1.22),
('Microcontrollers', 'Year-End Inventory Clearance', 0.95),
('Sensors', 'Robotics Expo', 1.25),
('Sensors', 'Smart Home Festive Demand', 1.20),
('Sensors', 'Industrial Automation Quarter Start', 1.15),
('Sensors', 'Monsoon Logistics Delay', 0.90),
('AI Processors', 'Winter AI Launch', 1.35),
('AI Processors', 'Enterprise Budget Release Cycle', 1.28),
('AI Processors', 'Hackathon and AI Challenge Season', 1.18),
('AI Processors', 'Supply Constraint Window', 0.88),
('Connectors', 'Year-End Bulk', 1.05),
('Connectors', 'OEM Production Ramp-Up', 1.16),
('Connectors', 'Holiday Device Accessory Spike', 1.14),
('Connectors', 'Post-Holiday Demand Cooling', 0.92),
('PCB Boards', 'Spring Manufacturing', 1.15),
('PCB Boards', 'Prototype Build Season', 1.24),
('PCB Boards', 'Contract Manufacturing Peak', 1.20),
('PCB Boards', 'Factory Maintenance Shutdown', 0.86);