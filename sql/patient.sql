-- ============================================================================
-- CLEAN START
-- ============================================================================
DROP TABLE IF EXISTS PatientAppointments;
DROP TABLE IF EXISTS PatientClaims;

-- ============================================================================
-- TABLE 1: PatientAppointments
-- ============================================================================
CREATE TABLE [PatientAppointments]
(
    [AppointmentID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [PatientID] TEXT NOT NULL,
    [Doctor] TEXT,
    [DateTime] TEXT,        -- Format: YYYY-MM-DD HH:MM
    [Status] TEXT,          -- Scheduled, Completed, Cancelled
    [Notes] TEXT
);

-- ============================================================================
-- TABLE 2: PatientClaims
-- ============================================================================
CREATE TABLE [PatientClaims]
(
    [ClaimID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [PatientID] TEXT NOT NULL,
    [DocumentSubmitted] TEXT,  -- Yes/No
    [Status] TEXT,             -- Pending, Approved, Rejected
    [LastUpdated] TEXT
);

-- ============================================================================
-- INSERT SAMPLE DATA
-- ============================================================================
BEGIN TRANSACTION;

-- Patient Appointments
INSERT INTO PatientAppointments (PatientID, Doctor, DateTime, Status, Notes) VALUES
('P1023', 'Dr. Mehta', '2025-10-12 10:30', 'Scheduled', 'Cardiology follow-up'),
('P1024', 'Dr. Singh', '2025-10-13 14:00', 'Completed', 'Routine check-up'),
('P1025', 'Dr. Kapoor', '2025-10-14 09:00', 'Scheduled', 'Dermatology consultation'),
('P1026', 'Dr. Jain', '2025-10-15 11:30', 'Cancelled', 'Orthopedic consultation'),
('P1027', 'Dr. Mehta', '2025-10-16 13:00', 'Scheduled', 'Cardiology consultation'),
('P1028', 'Dr. Kapoor', '2025-10-17 10:00', 'Scheduled', 'Skin allergy follow-up'),
('P1029', 'Dr. Singh', '2025-10-18 15:00', 'Scheduled', 'General health check'),
('P1030', 'Dr. Mehta', '2025-10-19 09:30', 'Completed', 'Cardiology consultation'),
('P1031', 'Dr. Jain', '2025-10-20 11:00', 'Scheduled', 'Orthopedic follow-up'),
('P1032', 'Dr. Kapoor', '2025-10-21 14:30', 'Scheduled', 'Dermatology check-up'),
('P1033', 'Dr. Singh', '2025-10-22 16:00', 'Cancelled', 'General health follow-up'),
('P1034', 'Dr. Mehta', '2025-10-23 10:15', 'Scheduled', 'Cardiology check-up'),
('P1035', 'Dr. Jain', '2025-10-24 12:30', 'Scheduled', 'Physiotherapy session'),
('P1036', 'Dr. Kapoor', '2025-10-25 09:45', 'Scheduled', 'Dermatology consultation');

-- Patient Claims
INSERT INTO PatientClaims (PatientID, DocumentSubmitted, Status, LastUpdated) VALUES
('P1023', 'No', 'Pending', '2025-10-10'),
('P1024', 'Yes', 'Approved', '2025-10-09'),
('P1025', 'No', 'Pending', '2025-10-11'),
('P1026', 'Yes', 'Approved', '2025-10-08'),
('P1027', 'No', 'Pending', '2025-10-10'),
('P1028', 'No', 'Pending', '2025-10-12'),
('P1029', 'Yes', 'Approved', '2025-10-07'),
('P1030', 'Yes', 'Approved', '2025-10-09'),
('P1031', 'No', 'Pending', '2025-10-11'),
('P1032', 'No', 'Pending', '2025-10-10'),
('P1033', 'Yes', 'Rejected', '2025-10-08'),
('P1034', 'No', 'Pending', '2025-10-12'),
('P1035', 'No', 'Pending', '2025-10-11'),
('P1036', 'Yes', 'Approved', '2025-10-09');

COMMIT;
