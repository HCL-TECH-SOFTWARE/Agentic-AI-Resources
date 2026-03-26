-- ===========================================================
-- ITOps Knowledge Base SQLite Script
-- Provides common IT Operations FAQs and procedural guides.
-- Designed for testing the ITOps Assist Agent workflow with
-- conditional routing and knowledge-based lookup.
-- ===========================================================

-- Drop the table if it already exists.
DROP TABLE IF EXISTS ITOpsKnowledgeBase;

-- Create main knowledge base table.
CREATE TABLE [ITOpsKnowledgeBase]
(
    [ID] INTEGER PRIMARY KEY AUTOINCREMENT,
    [Category] TEXT,              -- e.g., Access Request, Incident, Device Setup
    [Question] TEXT,              -- User query or sample FAQ
    [Answer] TEXT,                -- Structured or step-by-step response
    [Keywords] TEXT,              -- Comma-separated keywords for matching
    [UpdatedDate] TEXT            -- Format: YYYY-MM-DD
);

-- Begin transaction for efficient bulk insertion.
BEGIN TRANSACTION;

-- Insert 50 records covering multiple ITOps categories.
INSERT INTO ITOpsKnowledgeBase (Category, Question, Answer, Keywords, UpdatedDate) VALUES
('Access Request', 'What’s the process for requesting a new user account in the Confluent Console?', 'Submit a ServiceNow access request for Confluent Console. Include business justification and manager approval. Access is provisioned within 24 hours after approval.', 'confluent, user account, access, request', '2025-10-01'),
('Hardware Support', 'How do I repair my laptop?', 'Raise a hardware support ticket in ServiceNow. The IT support team will arrange diagnosis and repair through the authorized vendor.', 'laptop, repair, hardware, issue', '2025-09-25'),
('Access Request', 'How do I request access to Microsoft Teams or Slack?', 'Navigate to the Collaboration Tools Access form in ServiceNow. Select either Microsoft Teams or Slack and specify your role. Access is granted within 1 business day.', 'microsoft teams, slack, access, request', '2025-09-18'),
('Kafka Management', 'How do I request a new Kafka topic with retention settings?', 'Use the Kafka Topic Request form in the ITOps portal. Provide topic name, environment, and retention period. Approval is required from the Kafka admin team.', 'kafka, topic, retention, create', '2025-09-20'),
('Email Support', 'How to unlock my Outlook account?', 'Reset your password via the Self-Service Password Reset portal or contact IT Support for manual unlock.', 'outlook, email, password, unlock', '2025-09-15'),
('Device Setup', 'How do I connect to the VPN from home?', 'Install the VPN client from the company portal. Use your AD credentials to log in and verify connection with MFA.', 'vpn, remote, access, connection', '2025-09-10'),
('Incident', 'My system is showing a blue screen error.', 'Restart your device and check for driver updates. If the issue persists, log an incident in ServiceNow under Hardware > Laptop/Desktop.', 'blue screen, crash, system, error', '2025-09-14'),
('Access Request', 'How do I get admin rights on my workstation?', 'Submit an elevated privilege request with justification. Approval from department head is mandatory.', 'admin rights, workstation, privileges', '2025-09-12'),
('Software Install', 'Can I install third-party software on my system?', 'Only approved software from the company catalog can be installed. For others, raise a software exception request.', 'software, install, third-party', '2025-09-16'),
('Network', 'How do I connect to office Wi-Fi?', 'Select the corporate SSID and log in using domain credentials. Contact IT if unable to authenticate.', 'wifi, network, connect, office', '2025-09-11'),
('Incident', 'Printer is not working.', 'Check power and network connection. If unresolved, create a ServiceNow incident under Printers.', 'printer, issue, not working', '2025-09-17'),
('Email Support', 'How to configure my email on mobile?', 'Install Outlook mobile app and log in with corporate credentials. Ensure MFA is enabled.', 'email, outlook, mobile, setup', '2025-09-10'),
('Hardware Support', 'My mouse or keyboard is not responding.', 'Reconnect the device or replace batteries. If still not working, raise a hardware incident.', 'keyboard, mouse, not working, hardware', '2025-09-22'),
('Security', 'How to report a phishing email?', 'Forward the suspicious email to security@company.com and delete it. Do not click any links.', 'phishing, email, security, report', '2025-09-25'),
('Access Request', 'How to get access to Jira?', 'Raise a ServiceNow request under Collaboration Tools > Jira. Approval from project owner required.', 'jira, access, collaboration', '2025-09-21'),
('Access Request', 'How to get access to GitHub Enterprise?', 'Submit a GitHub access request in ServiceNow. Include repository and permission type.', 'github, access, repository', '2025-09-23'),
('Incident', 'System is very slow.', 'Check for open applications consuming CPU. Restart and update system if necessary. Report to IT if issue persists.', 'system, slow, performance', '2025-09-18'),
('Device Setup', 'How to connect external monitors?', 'Use HDMI or DisplayPort cable. Press Win + P to configure display mode.', 'monitor, connect, display', '2025-09-12'),
('Access Request', 'How do I get VPN access?', 'Submit a VPN access request in ServiceNow. Ensure manager approval and MFA registration.', 'vpn, access, request', '2025-09-14'),
('Security', 'How to reset my MFA device?', 'Raise a Security Support ticket and provide identity verification.', 'mfa, reset, security', '2025-09-19'),
('Software Install', 'How to install Visual Studio Code?', 'Install via Company Software Center or raise a software installation request.', 'visual studio code, install, software', '2025-09-15'),
('Incident', 'Laptop not booting.', 'Check power supply and remove peripherals. If issue persists, raise a Hardware incident.', 'laptop, boot, hardware, issue', '2025-09-17'),
('Network', 'VPN keeps disconnecting.', 'Check your network stability. If persistent, raise a VPN Connectivity issue in ServiceNow.', 'vpn, disconnecting, network', '2025-09-20'),
('Access Request', 'How to get Power BI license?', 'Request via Microsoft License Access form in ServiceNow.', 'power bi, license, microsoft', '2025-09-13'),
('Email Support', 'Email delivery is delayed.', 'Check internet connection and Outlook sync status. If unresolved, raise an Email issue ticket.', 'email, delay, outlook', '2025-09-16'),
('Security', 'I think my account is hacked.', 'Immediately change your password and contact IT Security.', 'account, hacked, compromised', '2025-09-10'),
('Access Request', 'How to request ServiceNow admin access?', 'Raise an elevated access request in ServiceNow with justification.', 'servicenow, admin, access', '2025-09-25'),
('Software Install', 'How to install Docker Desktop?', 'Available in Software Center. Requires admin approval for installation.', 'docker, install, software', '2025-09-14'),
('Network', 'Unable to connect to office VPN.', 'Check credentials, MFA, and network connection. If issue persists, create a ServiceNow incident.', 'vpn, office, connection, fail', '2025-09-22'),
('Incident', 'System fan making loud noise.', 'Clean air vents. If unresolved, raise Hardware Maintenance ticket.', 'fan, noise, hardware', '2025-09-11'),
('Hardware Support', 'Laptop battery drains quickly.', 'Adjust power settings and disable background apps. Replace battery if older than 2 years.', 'battery, laptop, power', '2025-09-18'),
('Software Install', 'Need to install Java SDK.', 'Raise a Software Request for Java SDK through ServiceNow.', 'java, sdk, software', '2025-09-15'),
('Network', 'Internet is slow in office.', 'Check LAN connection and restart switch. If others are affected, raise Network Incident.', 'network, internet, slow', '2025-09-20'),
('Device Setup', 'How to configure dual boot?', 'Not supported on corporate devices. Use virtualization instead.', 'dual boot, os, configuration', '2025-09-21'),
('Access Request', 'How to get Snowflake DB access?', 'Submit access request for Snowflake in Data Platform section of ServiceNow.', 'snowflake, database, access', '2025-09-22'),
('Incident', 'Laptop not charging.', 'Check charger and port. If hardware fault, raise incident.', 'charging, laptop, hardware', '2025-09-19'),
('Hardware Support', 'Monitor flickering.', 'Check cable and power connection. Replace cable if damaged.', 'monitor, flicker, display', '2025-09-18'),
('Access Request', 'How to get Confluence access?', 'Raise access request for Confluence under Collaboration Tools.', 'confluence, access, collaboration', '2025-09-24'),
('Security', 'Got a suspicious USB drive.', 'Do not plug it in. Submit it to IT Security immediately.', 'usb, suspicious, security', '2025-09-15'),
('Network', 'Proxy authentication error.', 'Check proxy settings or reset Wi-Fi connection.', 'proxy, network, authentication', '2025-09-12'),
('Incident', 'Mouse freezing frequently.', 'Check batteries or try another USB port.', 'mouse, freeze, hardware', '2025-09-16'),
('Device Setup', 'Need to configure printer at home.', 'Connect via company VPN and add printer IP in settings.', 'printer, setup, home', '2025-09-13'),
('Email Support', 'Email quota exceeded.', 'Archive old emails or request quota increase via ServiceNow.', 'email, quota, outlook', '2025-09-19'),
('Software Install', 'Install Adobe Acrobat Pro.', 'Submit request under Software Licensing. Approval needed from department head.', 'adobe, acrobat, software', '2025-09-17'),
('Hardware Support', 'Headphones not working.', 'Test on another device. If issue persists, request replacement.', 'headphones, hardware, not working', '2025-09-20'),
('Access Request', 'Need AWS Console access.', 'Request via Cloud Services Access form. Include IAM role details.', 'aws, cloud, access', '2025-09-24'),
('Access Request', 'Need Azure Portal access.', 'Request Azure access via ServiceNow Cloud Access form.', 'azure, cloud, access', '2025-09-25'),
('Security', 'Lost my ID card.', 'Report immediately to Security Office and request a replacement.', 'id card, lost, security', '2025-09-14'),
('Incident', 'System overheating.', 'Check ventilation. Shut down if temperature remains high. Raise Hardware ticket.', 'overheat, system, hardware', '2025-09-23'),
('Access Request', 'Need Zoom license for meetings.', 'Request via Collaboration Tools form for Zoom Business license.', 'zoom, license, meeting', '2025-09-19');

-- Commit all changes.
COMMIT;

-- End of Script.
