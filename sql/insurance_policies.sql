
DROP TABLE IF EXISTS insurance_policies;

CREATE TABLE insurance_policies (
    policy_id TEXT PRIMARY KEY,
    policyholder_name TEXT,
    date_of_birth TEXT,
    policy_type TEXT,
    coverage_limit INTEGER,
    start_date TEXT,
    end_date TEXT,
    conditions TEXT
);

INSERT INTO insurance_policies VALUES 
('P123456', 'Rhea Sharma', '1990-03-15', 'Health', 500000, '2023-01-01', '2025-12-31', 'Covers hospitalization, diagnostics'),
('P234567', 'Ankit Mehra', '1985-07-08', 'Travel', 300000, '2024-04-01', '2025-03-31', 'Covers flight cancellations, baggage'),
('P345678', 'Tanya Bansal', '1992-11-20', 'Gadget', 150000, '2023-06-01', '2024-06-01', 'Covers theft, accidental damage'),
('P456789', 'Karan Joshi', '1978-12-30', 'Health', 700000, '2024-01-01', '2025-12-31', 'Covers hospitalization, medicines');
