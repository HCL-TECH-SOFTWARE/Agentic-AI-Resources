-- ============================================================================
-- CLEAN START
-- ============================================================================
DROP TABLE IF EXISTS Contracts;
DROP TABLE IF EXISTS ContractClauses;
DROP TABLE IF EXISTS RiskTerms;

-- ============================================================================
-- TABLE 1: Contracts
-- ============================================================================
CREATE TABLE [Contracts]
(
    [ContractID] TEXT NOT NULL PRIMARY KEY,
    [Title] TEXT NOT NULL,
    [Client] TEXT,
    [Vendor] TEXT,
    [EffectiveDate] TEXT,
    [ExpiryDate] TEXT,
    [DocumentType] TEXT,
    [Status] TEXT
);

-- ============================================================================
-- TABLE 2: ContractClauses
-- ============================================================================
CREATE TABLE [ContractClauses]
(
    [ClauseID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ContractID] TEXT NOT NULL,
    [Section] TEXT,
    [ClauseText] TEXT,
    [Importance] TEXT, -- 'High', 'Medium', 'Low'
    FOREIGN KEY (ContractID) REFERENCES Contracts(ContractID)
);

-- ============================================================================
-- TABLE 3: RiskTerms
-- ============================================================================
CREATE TABLE [RiskTerms]
(
    [RiskID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [ClauseID] INTEGER NOT NULL,
    [RiskType] TEXT,  -- 'Liability', 'Penalty', 'Non-Compliance'
    [Description] TEXT,
    FOREIGN KEY (ClauseID) REFERENCES ContractClauses(ClauseID)
);

-- ============================================================================
-- INSERT DATA
-- ============================================================================
BEGIN TRANSACTION;

-- ---------------------------
-- Contracts
-- ---------------------------
INSERT INTO Contracts (ContractID, Title, Client, Vendor, EffectiveDate, ExpiryDate, DocumentType, Status) VALUES
('CON001', 'Software Development Agreement', 'ABC Tech Ltd', 'XYZ Solutions', '2025-01-15', '2026-01-14', 'PDF', 'Active'),
('CON002', 'IT Infrastructure Services', 'Global Corp', 'TechServe Pvt Ltd', '2024-06-01', '2025-05-31', 'PDF', 'Active'),
('CON003', 'Marketing Services Agreement', 'Bright Media', 'AdWorks Ltd', '2023-09-10', '2024-09-09', 'PDF', 'Expired'),
('CON004', 'Cloud Hosting Services', 'Innovate Labs', 'CloudNet Solutions', '2025-03-01', '2026-02-28', 'PDF', 'Active'),
('CON005', 'Consulting Services Agreement', 'FutureTech Inc', 'ConsultCorp', '2024-11-01', '2025-10-31', 'PDF', 'Active');

-- ---------------------------
-- Contract Clauses
-- ---------------------------
INSERT INTO ContractClauses (ContractID, Section, ClauseText, Importance) VALUES
('CON001', 'Termination', 'Either party may terminate the contract with 30 days notice.', 'High'),
('CON001', 'Payment', 'Client must pay all invoices within 30 days of receipt.', 'High'),
('CON001', 'Confidentiality', 'All project details are confidential and must not be disclosed.', 'Medium'),
('CON002', 'Liability', 'Vendor is liable for damages caused by negligence.', 'High'),
('CON002', 'Maintenance', 'Vendor shall provide system maintenance and support for 12 months.', 'Medium'),
('CON003', 'Deliverables', 'Marketing reports to be submitted monthly.', 'Medium'),
('CON003', 'Penalties', 'Late deliverables incur a 5% fee per week.', 'High'),
('CON004', 'Data Protection', 'All client data must be encrypted and stored securely.', 'High'),
('CON004', 'Service Levels', '99.9% uptime guaranteed monthly.', 'Medium'),
('CON005', 'Consulting Scope', 'Consultant shall provide advisory services as outlined in schedule.', 'Medium');

-- ---------------------------
-- Risk Terms
-- ---------------------------
INSERT INTO RiskTerms (ClauseID, RiskType, Description) VALUES
(1, 'Non-Compliance', 'Termination notice may violate contractual obligations.'),
(2, 'Penalty', 'Late payment penalties not clearly defined.'),
(4, 'Liability', 'Vendor liability may exceed insurance coverage.'),
(7, 'Penalty', 'High fees for late deliverables could be disputed.'),
(8, 'Non-Compliance', 'Improper data handling may violate privacy laws.');

COMMIT;
