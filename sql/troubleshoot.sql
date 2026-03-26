DROP TABLE IF EXISTS TroubleshootingGuide;

CREATE TABLE TroubleshootingGuide (
    Problem TEXT,
    Symptoms TEXT,
    DiagnosticSteps TEXT,
    CommonCauses TEXT,
    Resolution TEXT,
    WarrantyCoverage TEXT
);

INSERT INTO TroubleshootingGuide (Problem, Symptoms, DiagnosticSteps, CommonCauses, Resolution, WarrantyCoverage) VALUES
('Black Screen on Boot', 'Laptop powers on but no display', 'Check external display, listen for POST beeps, reseat RAM, check LCD cable', 'Faulty RAM (60%), LCD cable loose (25%), motherboard failure (15%)', 'Replace RAM, reconnect cable, or replace motherboard', 'Full coverage if in warranty'),
('Flickering Display', 'Intermittent flicker or distorted colors', 'Update drivers, test with external monitor, check LCD cable, run diagnostics', 'Driver issues (40%), LCD cable wear (35%), LCD panel failure (25%)', 'Update driver, replace cable or LCD assembly', 'Full coverage if in warranty'),
('Overheating', 'CPU >85°C, throttling, shutdowns', 'Check fan, monitor temps, verify thermal paste, test under load', 'Dust buildup (50%), paste degradation (30%), fan failure (20%)', 'Cleaning, paste replacement, fan replacement', 'Service covered, replacement if defective'),
('Slow Boot Times', 'Boot >60s, apps delayed', 'Run SSD check, check startup apps, scan malware, test RAM', 'SSD wear (45%), software bloat (30%), malware (15%), failing RAM (10%)', 'SSD replacement, software cleanup, malware removal, RAM replacement', 'Depends on component warranty'),
('Battery Not Charging', 'Battery % not increasing', 'Test AC adapter, check port, run calibration, BIOS test', 'Adapter failure (40%), battery degradation (35%), port damage (25%)', 'Replace adapter, battery, or port', 'Battery 1 year, adapter 2 years');
