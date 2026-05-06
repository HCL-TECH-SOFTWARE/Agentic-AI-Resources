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

DROP TABLE IF EXISTS ProductInformation;

CREATE TABLE ProductInformation (
    SKU TEXT PRIMARY KEY,
    Model TEXT,
    ReleaseDate TEXT,      -- YYYY-MM-DD
    WarrantyPeriod TEXT,   -- e.g., '3 years'
    Price REAL,
    Specs TEXT,
    Status TEXT            -- Active / Discontinued
);

INSERT INTO ProductInformation (SKU, Model, ReleaseDate, WarrantyPeriod, Price, Specs, Status) VALUES
('TF-PB15X-001', 'TechFlow ProBook 15X', '2023-03-15', '3 years', 899, 'Intel i5-12400, 16GB RAM, 512GB SSD', 'Active'),
('TF-PB15X-002', 'TechFlow ProBook 15X Pro', '2023-03-15', '3 years', 1299, 'Intel i7-12700, 32GB RAM, 1TB SSD', 'Active'),
('TF-PB13U-001', 'TechFlow ProBook 13U', '2023-08-01', '3 years', 749, 'Intel i5-1235U, 8GB RAM, 256GB SSD', 'Active'),
('TF-PB13U-002', 'TechFlow ProBook 13U Plus', '2023-08-01', '3 years', 999, 'Intel i7-1255U, 16GB RAM, 512GB SSD', 'Active'),
('TF-GM15G-001', 'TechFlow GameMax 15G', '2023-05-20', '2 years', 1599, 'Intel i7-12700H, RTX 3060, 16GB RAM, 512GB SSD', 'Active'),
('TF-GM15G-002', 'TechFlow GameMax 15G Elite', '2023-05-20', '2 years', 2199, 'Intel i9-12900H, RTX 3070, 32GB RAM, 1TB SSD', 'Active'),
('TF-GM17X-001', 'TechFlow GameMax 17X', '2023-09-10', '2 years', 2799, 'Intel i9-12900H, RTX 3080, 32GB RAM, 2TB SSD', 'Active'),
('TF-PB14L-001', 'ProBook 14L', '2021-11-15', '3 years', 699, 'Intel i5, 8GB RAM, 256GB SSD', 'Discontinued'),
('TF-GM15F-001', 'GameMax 15F', '2022-02-28', '2 years', 1399, 'Intel i7, RTX 3050, 16GB RAM, 512GB SSD', 'Discontinued');
