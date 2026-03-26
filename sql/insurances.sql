CREATE TABLE insurance_claims (
    claim_reference_id TEXT PRIMARY KEY,
    policy_number TEXT,
    insurance_provider TEXT,
    coverage_type TEXT,
    claim_status TEXT,
    approved_amount REAL,
    remarks TEXT
);

INSERT INTO insurance_claims VALUES
('C-INS-9012', 'POL-45322', 'MediSure Health Ltd', 'Chronic Illness Coverage', 'Approved', 45000.00, 'Claim approved after document verification'),
('C-INS-9013', 'POL-98231', 'HealthFirst Care Pvt Ltd', 'Surgical Coverage', 'Pending', 0.00, 'Awaiting surgeon’s discharge summary'),
('C-INS-9014', 'POL-78290', 'Aarogya Insurance Corp', 'Respiratory Care Coverage', 'Approved', 12000.00, 'Claim processed and reimbursed'),
('C-INS-9015', 'POL-11122', 'WellLife Health Insurance', 'Cardiac Treatment Coverage', 'Rejected', 0.00, 'Policy expired prior to admission date'),
('C-INS-9016', 'POL-33445', 'MediSure Health Ltd', 'Accident and Trauma', 'Approved', 65000.00, 'Approved after emergency verification'),
('C-INS-9017', 'POL-55678', 'CarePlus Insurance Services', 'Surgical Coverage', 'Pending', 0.00, 'Additional hospital invoice requested'),
('C-INS-9018', 'POL-11234', 'HealthFirst Care Pvt Ltd', 'Chronic Illness Coverage', 'Approved', 28500.00, 'Claim approved under outpatient coverage'),
('C-INS-9019', 'POL-22345', 'SafeLife Insurance Corp', 'Dental and Oral Care', 'Rejected', 0.00, 'Dental care not included in policy'),
('C-INS-9020', 'POL-33456', 'Aarogya Insurance Corp', 'Respiratory Care Coverage', 'Approved', 9800.00, 'Processed and credited to hospital account'),
('C-INS-9021', 'POL-44567', 'MediSure Health Ltd', 'Maternal and Child Care', 'Approved', 52000.00, 'Claim approved for maternity hospitalization'),
('C-INS-9022', 'POL-55678', 'CarePlus Insurance Services', 'Accident and Trauma', 'Pending', 0.00, 'Doctor’s signature verification pending'),
('C-INS-9023', 'POL-66789', 'LifeShield Health Ltd', 'Cardiac Treatment Coverage', 'Approved', 78000.00, 'Approved after ECG and angioplasty confirmation'),
('C-INS-9024', 'POL-77890', 'Aarogya Insurance Corp', 'General Hospitalization', 'Approved', 15000.00, 'Claim cleared with all documents verified'),
('C-INS-9025', 'POL-88901', 'HealthFirst Care Pvt Ltd', 'Oncology Coverage', 'Rejected', 0.00, 'Chemotherapy started before policy activation'),
('C-INS-9026', 'POL-99012', 'WellLife Health Insurance', 'Chronic Illness Coverage', 'Approved', 32000.00, 'Approved under diabetes treatment benefit'),
('C-INS-9027', 'POL-10123', 'SafeLife Insurance Corp', 'Surgical Coverage', 'Approved', 41000.00, 'Processed successfully with hospital bill validation'),
('C-INS-9028', 'POL-21234', 'LifeShield Health Ltd', 'Accident and Trauma', 'Pending', 0.00, 'Final surgeon report required'),
('C-INS-9029', 'POL-32345', 'CarePlus Insurance Services', 'Respiratory Care Coverage', 'Approved', 11000.00, 'Claim reimbursed to insured'),
('C-INS-9030', 'POL-43456', 'Aarogya Insurance Corp', 'Maternal and Child Care', 'Approved', 48000.00, 'Claim approved for C-section delivery'),
('C-INS-9031', 'POL-54567', 'HealthFirst Care Pvt Ltd', 'Oncology Coverage', 'Pending', 0.00, 'Awaiting pathology confirmation from hospital');
