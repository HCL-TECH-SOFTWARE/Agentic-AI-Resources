-- This SQLite script creates and populates three tables used by the
-- Automated Proposal Generator Agent.
-- The tables store internal service catalog, pricing structure,
-- and implementation timelines used to automatically generate proposals.

-- Drop existing tables to ensure idempotent execution
DROP TABLE IF EXISTS ServiceCatalog;
DROP TABLE IF EXISTS PricingGuidelines;
DROP TABLE IF EXISTS ImplementationGuidelines;

-- --------------------------------------------------------------------------------
-- Table 1: ServiceCatalog
-- Contains internal services offered by the company.
-- --------------------------------------------------------------------------------
CREATE TABLE [ServiceCatalog]
(
    [ServiceID] TEXT NOT NULL PRIMARY KEY,
    [ServiceName] TEXT,
    [ServiceCategory] TEXT,
    [ServiceDescription] TEXT,
    [TargetUseCase] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 2: PricingGuidelines
-- Defines estimated pricing ranges for services.
-- --------------------------------------------------------------------------------
CREATE TABLE [PricingGuidelines]
(
    [PricingID] TEXT NOT NULL PRIMARY KEY,
    [ServiceID] TEXT,
    [EstimatedCostUSD] INTEGER,
    [PricingModel] TEXT,
    [CostNotes] TEXT
);

-- --------------------------------------------------------------------------------
-- Table 3: ImplementationGuidelines
-- Defines estimated timelines and delivery approach for services.
-- --------------------------------------------------------------------------------
CREATE TABLE [ImplementationGuidelines]
(
    [ImplementationID] TEXT NOT NULL PRIMARY KEY,
    [ServiceID] TEXT,
    [EstimatedTimelineWeeks] INTEGER,
    [DeploymentType] TEXT,
    [ImplementationNotes] TEXT
);

-- --------------------------------------------------------------------------------
-- Data Insertion
-- --------------------------------------------------------------------------------
BEGIN TRANSACTION;

-- Populate ServiceCatalog
INSERT INTO ServiceCatalog
(ServiceID, ServiceName, ServiceCategory, ServiceDescription, TargetUseCase)
VALUES
('SRV001','AI Customer Support Chatbot','AI Automation','AI chatbot that handles customer queries automatically','Customer support automation'),
('SRV002','CRM Integration Service','System Integration','Integrates AI systems with CRM platforms','Unified customer management'),
('SRV003','Customer Interaction Analytics','Analytics','Dashboard to track chatbot performance and engagement','Customer behavior analysis'),
('SRV004','Multilingual NLP Module','AI Enhancement','Adds multilingual capabilities to AI assistants','Global customer support'),
('SRV005','Workflow Automation Engine','Process Automation','Automates repetitive business processes','Operational efficiency'),
('SRV006','Knowledge Base Integration','AI Support','Connects chatbot with internal documentation','Self-service support'),
('SRV007','Email Automation Bot','AI Automation','Automates email responses and ticket classification','Customer communication automation'),
('SRV008','Lead Qualification AI','Sales Automation','AI model to qualify and score sales leads','Sales productivity improvement'),
('SRV009','Document Processing AI','AI Automation','Extracts structured data from invoices and documents','Finance and operations automation'),
('SRV010','Predictive Analytics Engine','Analytics','Machine learning system predicting business trends','Strategic decision making');

-- Populate PricingGuidelines
INSERT INTO PricingGuidelines
(PricingID, ServiceID, EstimatedCostUSD, PricingModel, CostNotes)
VALUES
('PRC001','SRV001',8000,'Project-Based','Includes chatbot development and deployment'),
('PRC002','SRV002',2000,'Integration Fee','CRM API integration and configuration'),
('PRC003','SRV003',1500,'Project-Based','Analytics dashboard development'),
('PRC004','SRV004',1200,'Add-On Module','Multilingual language support configuration'),
('PRC005','SRV005',3000,'Implementation Fee','Workflow automation setup'),
('PRC006','SRV006',1800,'Integration Fee','Knowledge base connection and indexing'),
('PRC007','SRV007',2200,'Project-Based','Email automation workflow setup'),
('PRC008','SRV008',3500,'Project-Based','Lead scoring AI model development'),
('PRC009','SRV009',4200,'Project-Based','Document AI training and extraction setup'),
('PRC010','SRV010',5000,'Project-Based','Predictive analytics model deployment');

-- Populate ImplementationGuidelines
INSERT INTO ImplementationGuidelines
(ImplementationID, ServiceID, EstimatedTimelineWeeks, DeploymentType, ImplementationNotes)
VALUES
('IMP001','SRV001',4,'Cloud Deployment','Chatbot training and deployment'),
('IMP002','SRV002',2,'API Integration','CRM system integration'),
('IMP003','SRV003',2,'Dashboard Deployment','Analytics dashboard setup'),
('IMP004','SRV004',1,'Module Deployment','Language models configured'),
('IMP005','SRV005',3,'Automation Setup','Workflow automation configuration'),
('IMP006','SRV006',2,'Knowledge Integration','Connect internal knowledge repositories'),
('IMP007','SRV007',2,'Cloud Deployment','Email automation bot deployment'),
('IMP008','SRV008',3,'AI Model Deployment','Lead qualification model training'),
('IMP009','SRV009',4,'Document AI Setup','OCR and document extraction pipeline'),
('IMP010','SRV010',5,'ML Deployment','Predictive analytics model training and deployment');

COMMIT;