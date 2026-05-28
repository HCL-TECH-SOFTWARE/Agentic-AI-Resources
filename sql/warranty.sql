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

DROP TABLE IF EXISTS RepairPricing;

CREATE TABLE RepairPricing (
    Component TEXT,
    ProBookCost TEXT,
    GameMaxCost TEXT
);

INSERT INTO RepairPricing (Component, ProBookCost, GameMaxCost) VALUES
('LCD Panel (13-14")', '$89-149', '$149-199'),
('LCD Panel (15-17")', '$129-199', '$199-299'),
('LCD Cable', '$25-45', '$35-55'),
('Motherboard', '$299-499', '$599-899'),
('RAM (8GB)', '$45-65', '$55-75'),
('RAM (16GB)', '$85-125', '$95-135'),
('SSD (512GB)', '$99-129', '$109-139'),
('Battery', '$79-119', '$99-149'),
('Keyboard', '$45-85', '$65-125'),
('AC Adapter', '$49-79', '$79-99');
