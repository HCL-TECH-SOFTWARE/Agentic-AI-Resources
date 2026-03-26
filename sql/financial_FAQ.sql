-- This SQLite script creates a financial FAQ knowledge base table.
-- It stores internal company FAQs related to billing, plans, refund policies,
-- integrations, troubleshooting, and account setup.

DROP TABLE IF EXISTS FinancialFAQ;

CREATE TABLE FinancialFAQ
(
    FAQID INTEGER PRIMARY KEY AUTOINCREMENT,
    Product TEXT,
    Topic TEXT,
    Question TEXT,
    Answer TEXT,
    PolicyReference TEXT
);

BEGIN TRANSACTION;

INSERT INTO FinancialFAQ (Product, Topic, Question, Answer, PolicyReference) VALUES
('UnoAI Pilot','Billing','How can I update my billing information?',
'You can update billing details in the account dashboard under payment settings.',
'Billing Policy Section 2'),

('UnoAI Pilot','Billing','What payment methods are supported?',
'The platform supports credit cards, debit cards, and enterprise invoice payments.',
'Billing Policy Section 3'),

('UnoAI Pilot','Plans','What subscription plans are available?',
'The platform provides Basic, Professional, and Enterprise plans.',
'Product Plan Guide'),

('UnoAI Pilot','Plans','Can I upgrade my plan later?',
'Yes, you can upgrade your subscription plan anytime from the account settings page.',
'Plan Upgrade Policy'),

('UnoAI Pilot','Refund','What is the refund policy?',
'Refunds are allowed within 14 days of purchase if service usage is below the allowed limit.',
'Refund Policy Section 1'),

('UnoAI Pilot','Refund','How can I request a refund?',
'Refund requests can be submitted through the support portal.',
'Refund Policy Section 2'),

('UnoAI Pilot','Account Setup','How do I create a new account?',
'You can create an account by signing up with your company email and verifying it.',
'User Registration Guide'),

('UnoAI Pilot','Integration','Does the platform support API integration?',
'Yes, the platform supports REST APIs and SDKs for integration.',
'Developer Guide'),

('UnoAI Pilot','Integration','Can I integrate with CRM systems?',
'Yes, the platform supports integrations with Salesforce and other CRM platforms.',
'Integration Guide'),

('UnoAI Pilot','Troubleshooting','Why am I unable to log in?',
'Login issues may occur due to incorrect credentials or expired sessions.',
'Support Troubleshooting Guide'),

('UnoAI Pilot','Security','Is financial data secure?',
'All financial data is encrypted in transit and at rest using enterprise security standards.',
'Security Compliance Policy'),

('UnoAI Pilot','Support','How can I contact support?',
'You can contact support through the support portal or email.',
'Support Policy');

COMMIT;