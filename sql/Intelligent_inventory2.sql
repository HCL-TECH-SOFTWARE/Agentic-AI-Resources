-- Copyright 2026 HCL America, Inc.
--
-- Licensed under the Apache License, Version 2.0 (the "License");
-- you may not use this file except in compliance with the License.
-- You may obtain a copy of the License at
--
--     http://www.apache.org/licenses/LICENSE-2.0
--
-- Unless required by applicable law or agreed to in writing, software
-- distributed under the License is distributed on an "AS IS" BASIS,
-- WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
-- See the License for the specific language governing permissions and
-- limitations under the License.

-- Drop table if exists
DROP TABLE IF EXISTS SupplierPerformance;

-- Create table
CREATE TABLE SupplierPerformance (
SupplierName TEXT,
DeliveryTimeliness INTEGER,
QualityScore INTEGER,
CostCompliance INTEGER,
ResponsivenessScore INTEGER,
LastAuditScore INTEGER,
NumberOfIncidents INTEGER
);

-- Insert sample data
INSERT INTO SupplierPerformance VALUES
('Murata Manufacturing',95,94,90,92,93,1),
('Corning Inc',92,96,88,90,91,2),
('Cisco Systems',90,97,85,89,95,1),
('TP-Link Technologies',88,89,92,85,87,3),
('Dell Technologies',91,93,87,88,90,2),
('Delta Electronics',89,91,90,86,88,2),
('Palo Alto Networks',93,95,84,91,92,1),
('Belkin International',87,88,91,84,85,3);