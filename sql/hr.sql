-- This SQLite script creates and populates the HRKnowledgeBase table
-- It is used for the HR Support Agent to answer queries or create Jira tickets

-- Drop existing table to ensure a clean slate
DROP TABLE IF EXISTS HRKnowledgeBase;

-- Create HRKnowledgeBase table
CREATE TABLE [HRKnowledgeBase]
(
    [ID] INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    [Question] TEXT,           -- User query or topic
    [Answer] TEXT,             -- Direct answer if no task required
    [TaskRequired] INTEGER,    -- 0 = No task, 1 = Task requires Jira ticket
    [TaskSummary] TEXT,        -- Summary for Jira ticket if task required
    [TaskDescription] TEXT     -- Detailed description for Jira ticket
);

-- Begin transaction to insert sample data
BEGIN TRANSACTION;

-- Sample HR KB records
INSERT INTO HRKnowledgeBase (Question, Answer, TaskRequired, TaskSummary, TaskDescription) VALUES
('How many leaves am I allowed per year?', 'Employees are entitled to 20 paid leaves per year.', 0, NULL, NULL),
('How do I apply for urgent leave?', 'You can submit urgent leave requests via the HR portal.', 1, 'Urgent Leave Request', 'Employee requested urgent leave. Process via HR approval.'),
('What is the work from home policy?', 'Employees may work from home up to 2 days per week with manager approval.', 0, NULL, NULL),
('How to request a new laptop?', 'Requesting a new laptop requires HR and IT approval.', 1, 'New Laptop Request', 'Employee requested a new laptop. Ensure HR and IT approval workflow.'),
('How do I update my bank account for salary?', 'Bank account updates can be submitted through the HR portal under Payroll section.', 0, NULL, NULL),
('How to report a workplace harassment issue?', 'Report workplace harassment immediately to HR using the confidential form.', 1, 'Workplace Harassment Report', 'Employee reported a potential workplace harassment issue. Requires HR investigation.'),
('When are performance reviews conducted?', 'Performance reviews are conducted twice a year, in June and December.', 0, NULL, NULL),
('How do I enroll in the health insurance plan?', 'Employees can enroll in the company health insurance plan during open enrollment in January.', 0, NULL, NULL),
('How to request reimbursement for travel expenses?', 'Submit travel reimbursement requests via the HR expense portal.', 1, 'Travel Reimbursement Request', 'Employee submitted a travel reimbursement request. Process through finance and HR approval.'),
('Who do I contact for payroll issues?', 'For payroll issues, contact payroll@company.com or your HR representative.', 0, NULL, NULL);

-- Commit transaction
COMMIT;
